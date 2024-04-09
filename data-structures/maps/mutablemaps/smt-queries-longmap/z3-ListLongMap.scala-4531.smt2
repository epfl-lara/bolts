; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62672 () Bool)

(assert start!62672)

(declare-fun b!707284 () Bool)

(declare-fun res!471268 () Bool)

(declare-fun e!397996 () Bool)

(assert (=> b!707284 (=> (not res!471268) (not e!397996))))

(declare-datatypes ((List!13400 0))(
  ( (Nil!13397) (Cons!13396 (h!14441 (_ BitVec 64)) (t!19690 List!13400)) )
))
(declare-fun acc!652 () List!13400)

(declare-fun noDuplicate!1190 (List!13400) Bool)

(assert (=> b!707284 (= res!471268 (noDuplicate!1190 acc!652))))

(declare-fun b!707285 () Bool)

(declare-fun res!471272 () Bool)

(assert (=> b!707285 (=> (not res!471272) (not e!397996))))

(declare-fun newAcc!49 () List!13400)

(declare-fun subseq!387 (List!13400 List!13400) Bool)

(assert (=> b!707285 (= res!471272 (subseq!387 acc!652 newAcc!49))))

(declare-fun b!707286 () Bool)

(declare-fun res!471276 () Bool)

(assert (=> b!707286 (=> (not res!471276) (not e!397996))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3943 (List!13400 (_ BitVec 64)) Bool)

(assert (=> b!707286 (= res!471276 (contains!3943 newAcc!49 k0!2824))))

(declare-datatypes ((array!40307 0))(
  ( (array!40308 (arr!19306 (Array (_ BitVec 32) (_ BitVec 64))) (size!19689 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40307)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun b!707287 () Bool)

(declare-fun $colon$colon!497 (List!13400 (_ BitVec 64)) List!13400)

(assert (=> b!707287 (= e!397996 (not (noDuplicate!1190 ($colon$colon!497 acc!652 (select (arr!19306 a!3591) from!2969)))))))

(declare-fun b!707288 () Bool)

(declare-fun res!471279 () Bool)

(assert (=> b!707288 (=> (not res!471279) (not e!397996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707288 (= res!471279 (validKeyInArray!0 k0!2824))))

(declare-fun b!707289 () Bool)

(declare-fun res!471269 () Bool)

(assert (=> b!707289 (=> (not res!471269) (not e!397996))))

(assert (=> b!707289 (= res!471269 (validKeyInArray!0 (select (arr!19306 a!3591) from!2969)))))

(declare-fun b!707291 () Bool)

(declare-fun res!471283 () Bool)

(assert (=> b!707291 (=> (not res!471283) (not e!397996))))

(declare-fun arrayContainsKey!0 (array!40307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707291 (= res!471283 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!707292 () Bool)

(declare-fun res!471275 () Bool)

(assert (=> b!707292 (=> (not res!471275) (not e!397996))))

(assert (=> b!707292 (= res!471275 (not (contains!3943 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707293 () Bool)

(declare-fun res!471274 () Bool)

(assert (=> b!707293 (=> (not res!471274) (not e!397996))))

(assert (=> b!707293 (= res!471274 (not (contains!3943 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707294 () Bool)

(declare-fun res!471284 () Bool)

(assert (=> b!707294 (=> (not res!471284) (not e!397996))))

(declare-fun -!352 (List!13400 (_ BitVec 64)) List!13400)

(assert (=> b!707294 (= res!471284 (= (-!352 newAcc!49 k0!2824) acc!652))))

(declare-fun b!707295 () Bool)

(declare-fun res!471270 () Bool)

(assert (=> b!707295 (=> (not res!471270) (not e!397996))))

(assert (=> b!707295 (= res!471270 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!707296 () Bool)

(declare-fun res!471280 () Bool)

(assert (=> b!707296 (=> (not res!471280) (not e!397996))))

(declare-fun arrayNoDuplicates!0 (array!40307 (_ BitVec 32) List!13400) Bool)

(assert (=> b!707296 (= res!471280 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!707297 () Bool)

(declare-fun res!471278 () Bool)

(assert (=> b!707297 (=> (not res!471278) (not e!397996))))

(assert (=> b!707297 (= res!471278 (not (contains!3943 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707298 () Bool)

(declare-fun res!471273 () Bool)

(assert (=> b!707298 (=> (not res!471273) (not e!397996))))

(assert (=> b!707298 (= res!471273 (not (contains!3943 acc!652 k0!2824)))))

(declare-fun b!707290 () Bool)

(declare-fun res!471281 () Bool)

(assert (=> b!707290 (=> (not res!471281) (not e!397996))))

(assert (=> b!707290 (= res!471281 (noDuplicate!1190 newAcc!49))))

(declare-fun res!471277 () Bool)

(assert (=> start!62672 (=> (not res!471277) (not e!397996))))

(assert (=> start!62672 (= res!471277 (and (bvslt (size!19689 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19689 a!3591))))))

(assert (=> start!62672 e!397996))

(assert (=> start!62672 true))

(declare-fun array_inv!15080 (array!40307) Bool)

(assert (=> start!62672 (array_inv!15080 a!3591)))

(declare-fun b!707299 () Bool)

(declare-fun res!471271 () Bool)

(assert (=> b!707299 (=> (not res!471271) (not e!397996))))

(assert (=> b!707299 (= res!471271 (not (contains!3943 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707300 () Bool)

(declare-fun res!471282 () Bool)

(assert (=> b!707300 (=> (not res!471282) (not e!397996))))

(assert (=> b!707300 (= res!471282 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19689 a!3591)))))

(assert (= (and start!62672 res!471277) b!707284))

(assert (= (and b!707284 res!471268) b!707290))

(assert (= (and b!707290 res!471281) b!707293))

(assert (= (and b!707293 res!471274) b!707299))

(assert (= (and b!707299 res!471271) b!707291))

(assert (= (and b!707291 res!471283) b!707298))

(assert (= (and b!707298 res!471273) b!707288))

(assert (= (and b!707288 res!471279) b!707296))

(assert (= (and b!707296 res!471280) b!707285))

(assert (= (and b!707285 res!471272) b!707286))

(assert (= (and b!707286 res!471276) b!707294))

(assert (= (and b!707294 res!471284) b!707297))

(assert (= (and b!707297 res!471278) b!707292))

(assert (= (and b!707292 res!471275) b!707300))

(assert (= (and b!707300 res!471282) b!707289))

(assert (= (and b!707289 res!471269) b!707295))

(assert (= (and b!707295 res!471270) b!707287))

(declare-fun m!664923 () Bool)

(assert (=> b!707294 m!664923))

(declare-fun m!664925 () Bool)

(assert (=> b!707289 m!664925))

(assert (=> b!707289 m!664925))

(declare-fun m!664927 () Bool)

(assert (=> b!707289 m!664927))

(declare-fun m!664929 () Bool)

(assert (=> b!707299 m!664929))

(declare-fun m!664931 () Bool)

(assert (=> b!707291 m!664931))

(declare-fun m!664933 () Bool)

(assert (=> b!707298 m!664933))

(declare-fun m!664935 () Bool)

(assert (=> b!707296 m!664935))

(declare-fun m!664937 () Bool)

(assert (=> b!707293 m!664937))

(declare-fun m!664939 () Bool)

(assert (=> b!707297 m!664939))

(declare-fun m!664941 () Bool)

(assert (=> b!707285 m!664941))

(assert (=> b!707287 m!664925))

(assert (=> b!707287 m!664925))

(declare-fun m!664943 () Bool)

(assert (=> b!707287 m!664943))

(assert (=> b!707287 m!664943))

(declare-fun m!664945 () Bool)

(assert (=> b!707287 m!664945))

(declare-fun m!664947 () Bool)

(assert (=> b!707290 m!664947))

(declare-fun m!664949 () Bool)

(assert (=> b!707286 m!664949))

(declare-fun m!664951 () Bool)

(assert (=> b!707288 m!664951))

(declare-fun m!664953 () Bool)

(assert (=> b!707284 m!664953))

(declare-fun m!664955 () Bool)

(assert (=> start!62672 m!664955))

(declare-fun m!664957 () Bool)

(assert (=> b!707292 m!664957))

(check-sat (not b!707293) (not b!707284) (not b!707290) (not b!707286) (not b!707296) (not b!707291) (not b!707299) (not b!707292) (not b!707298) (not start!62672) (not b!707297) (not b!707287) (not b!707294) (not b!707289) (not b!707285) (not b!707288))
(check-sat)
(get-model)

(declare-fun d!96383 () Bool)

(assert (=> d!96383 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707288 d!96383))

(declare-fun d!96385 () Bool)

(assert (=> d!96385 (= (array_inv!15080 a!3591) (bvsge (size!19689 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62672 d!96385))

(declare-fun d!96387 () Bool)

(declare-fun lt!317949 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!334 (List!13400) (InoxSet (_ BitVec 64)))

(assert (=> d!96387 (= lt!317949 (select (content!334 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398008 () Bool)

(assert (=> d!96387 (= lt!317949 e!398008)))

(declare-fun res!471341 () Bool)

(assert (=> d!96387 (=> (not res!471341) (not e!398008))))

(get-info :version)

(assert (=> d!96387 (= res!471341 ((_ is Cons!13396) acc!652))))

(assert (=> d!96387 (= (contains!3943 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!317949)))

(declare-fun b!707356 () Bool)

(declare-fun e!398007 () Bool)

(assert (=> b!707356 (= e!398008 e!398007)))

(declare-fun res!471340 () Bool)

(assert (=> b!707356 (=> res!471340 e!398007)))

(assert (=> b!707356 (= res!471340 (= (h!14441 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707357 () Bool)

(assert (=> b!707357 (= e!398007 (contains!3943 (t!19690 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96387 res!471341) b!707356))

(assert (= (and b!707356 (not res!471340)) b!707357))

(declare-fun m!664995 () Bool)

(assert (=> d!96387 m!664995))

(declare-fun m!664997 () Bool)

(assert (=> d!96387 m!664997))

(declare-fun m!664999 () Bool)

(assert (=> b!707357 m!664999))

(assert (=> b!707299 d!96387))

(declare-fun d!96389 () Bool)

(assert (=> d!96389 (= (validKeyInArray!0 (select (arr!19306 a!3591) from!2969)) (and (not (= (select (arr!19306 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19306 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707289 d!96389))

(declare-fun d!96391 () Bool)

(declare-fun res!471346 () Bool)

(declare-fun e!398013 () Bool)

(assert (=> d!96391 (=> res!471346 e!398013)))

(assert (=> d!96391 (= res!471346 ((_ is Nil!13397) newAcc!49))))

(assert (=> d!96391 (= (noDuplicate!1190 newAcc!49) e!398013)))

(declare-fun b!707362 () Bool)

(declare-fun e!398014 () Bool)

(assert (=> b!707362 (= e!398013 e!398014)))

(declare-fun res!471347 () Bool)

(assert (=> b!707362 (=> (not res!471347) (not e!398014))))

(assert (=> b!707362 (= res!471347 (not (contains!3943 (t!19690 newAcc!49) (h!14441 newAcc!49))))))

(declare-fun b!707363 () Bool)

(assert (=> b!707363 (= e!398014 (noDuplicate!1190 (t!19690 newAcc!49)))))

(assert (= (and d!96391 (not res!471346)) b!707362))

(assert (= (and b!707362 res!471347) b!707363))

(declare-fun m!665001 () Bool)

(assert (=> b!707362 m!665001))

(declare-fun m!665003 () Bool)

(assert (=> b!707363 m!665003))

(assert (=> b!707290 d!96391))

(declare-fun b!707394 () Bool)

(declare-fun e!398042 () Bool)

(declare-fun call!34362 () Bool)

(assert (=> b!707394 (= e!398042 call!34362)))

(declare-fun b!707395 () Bool)

(assert (=> b!707395 (= e!398042 call!34362)))

(declare-fun bm!34359 () Bool)

(declare-fun c!78381 () Bool)

(assert (=> bm!34359 (= call!34362 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78381 (Cons!13396 (select (arr!19306 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun e!398040 () Bool)

(declare-fun b!707396 () Bool)

(assert (=> b!707396 (= e!398040 (contains!3943 acc!652 (select (arr!19306 a!3591) from!2969)))))

(declare-fun d!96393 () Bool)

(declare-fun res!471368 () Bool)

(declare-fun e!398041 () Bool)

(assert (=> d!96393 (=> res!471368 e!398041)))

(assert (=> d!96393 (= res!471368 (bvsge from!2969 (size!19689 a!3591)))))

(assert (=> d!96393 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!398041)))

(declare-fun b!707397 () Bool)

(declare-fun e!398039 () Bool)

(assert (=> b!707397 (= e!398039 e!398042)))

(assert (=> b!707397 (= c!78381 (validKeyInArray!0 (select (arr!19306 a!3591) from!2969)))))

(declare-fun b!707398 () Bool)

(assert (=> b!707398 (= e!398041 e!398039)))

(declare-fun res!471366 () Bool)

(assert (=> b!707398 (=> (not res!471366) (not e!398039))))

(assert (=> b!707398 (= res!471366 (not e!398040))))

(declare-fun res!471367 () Bool)

(assert (=> b!707398 (=> (not res!471367) (not e!398040))))

(assert (=> b!707398 (= res!471367 (validKeyInArray!0 (select (arr!19306 a!3591) from!2969)))))

(assert (= (and d!96393 (not res!471368)) b!707398))

(assert (= (and b!707398 res!471367) b!707396))

(assert (= (and b!707398 res!471366) b!707397))

(assert (= (and b!707397 c!78381) b!707394))

(assert (= (and b!707397 (not c!78381)) b!707395))

(assert (= (or b!707394 b!707395) bm!34359))

(assert (=> bm!34359 m!664925))

(declare-fun m!665005 () Bool)

(assert (=> bm!34359 m!665005))

(assert (=> b!707396 m!664925))

(assert (=> b!707396 m!664925))

(declare-fun m!665007 () Bool)

(assert (=> b!707396 m!665007))

(assert (=> b!707397 m!664925))

(assert (=> b!707397 m!664925))

(assert (=> b!707397 m!664927))

(assert (=> b!707398 m!664925))

(assert (=> b!707398 m!664925))

(assert (=> b!707398 m!664927))

(assert (=> b!707296 d!96393))

(declare-fun d!96399 () Bool)

(declare-fun lt!317950 () Bool)

(assert (=> d!96399 (= lt!317950 (select (content!334 newAcc!49) k0!2824))))

(declare-fun e!398044 () Bool)

(assert (=> d!96399 (= lt!317950 e!398044)))

(declare-fun res!471370 () Bool)

(assert (=> d!96399 (=> (not res!471370) (not e!398044))))

(assert (=> d!96399 (= res!471370 ((_ is Cons!13396) newAcc!49))))

(assert (=> d!96399 (= (contains!3943 newAcc!49 k0!2824) lt!317950)))

(declare-fun b!707399 () Bool)

(declare-fun e!398043 () Bool)

(assert (=> b!707399 (= e!398044 e!398043)))

(declare-fun res!471369 () Bool)

(assert (=> b!707399 (=> res!471369 e!398043)))

(assert (=> b!707399 (= res!471369 (= (h!14441 newAcc!49) k0!2824))))

(declare-fun b!707400 () Bool)

(assert (=> b!707400 (= e!398043 (contains!3943 (t!19690 newAcc!49) k0!2824))))

(assert (= (and d!96399 res!471370) b!707399))

(assert (= (and b!707399 (not res!471369)) b!707400))

(declare-fun m!665009 () Bool)

(assert (=> d!96399 m!665009))

(declare-fun m!665011 () Bool)

(assert (=> d!96399 m!665011))

(declare-fun m!665013 () Bool)

(assert (=> b!707400 m!665013))

(assert (=> b!707286 d!96399))

(declare-fun d!96401 () Bool)

(declare-fun lt!317951 () Bool)

(assert (=> d!96401 (= lt!317951 (select (content!334 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398046 () Bool)

(assert (=> d!96401 (= lt!317951 e!398046)))

(declare-fun res!471372 () Bool)

(assert (=> d!96401 (=> (not res!471372) (not e!398046))))

(assert (=> d!96401 (= res!471372 ((_ is Cons!13396) newAcc!49))))

(assert (=> d!96401 (= (contains!3943 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317951)))

(declare-fun b!707401 () Bool)

(declare-fun e!398045 () Bool)

(assert (=> b!707401 (= e!398046 e!398045)))

(declare-fun res!471371 () Bool)

(assert (=> b!707401 (=> res!471371 e!398045)))

(assert (=> b!707401 (= res!471371 (= (h!14441 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707402 () Bool)

(assert (=> b!707402 (= e!398045 (contains!3943 (t!19690 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96401 res!471372) b!707401))

(assert (= (and b!707401 (not res!471371)) b!707402))

(assert (=> d!96401 m!665009))

(declare-fun m!665015 () Bool)

(assert (=> d!96401 m!665015))

(declare-fun m!665017 () Bool)

(assert (=> b!707402 m!665017))

(assert (=> b!707297 d!96401))

(declare-fun d!96403 () Bool)

(declare-fun res!471373 () Bool)

(declare-fun e!398047 () Bool)

(assert (=> d!96403 (=> res!471373 e!398047)))

(assert (=> d!96403 (= res!471373 ((_ is Nil!13397) ($colon$colon!497 acc!652 (select (arr!19306 a!3591) from!2969))))))

(assert (=> d!96403 (= (noDuplicate!1190 ($colon$colon!497 acc!652 (select (arr!19306 a!3591) from!2969))) e!398047)))

(declare-fun b!707403 () Bool)

(declare-fun e!398048 () Bool)

(assert (=> b!707403 (= e!398047 e!398048)))

(declare-fun res!471374 () Bool)

(assert (=> b!707403 (=> (not res!471374) (not e!398048))))

(assert (=> b!707403 (= res!471374 (not (contains!3943 (t!19690 ($colon$colon!497 acc!652 (select (arr!19306 a!3591) from!2969))) (h!14441 ($colon$colon!497 acc!652 (select (arr!19306 a!3591) from!2969))))))))

(declare-fun b!707404 () Bool)

(assert (=> b!707404 (= e!398048 (noDuplicate!1190 (t!19690 ($colon$colon!497 acc!652 (select (arr!19306 a!3591) from!2969)))))))

(assert (= (and d!96403 (not res!471373)) b!707403))

(assert (= (and b!707403 res!471374) b!707404))

(declare-fun m!665019 () Bool)

(assert (=> b!707403 m!665019))

(declare-fun m!665021 () Bool)

(assert (=> b!707404 m!665021))

(assert (=> b!707287 d!96403))

(declare-fun d!96405 () Bool)

(assert (=> d!96405 (= ($colon$colon!497 acc!652 (select (arr!19306 a!3591) from!2969)) (Cons!13396 (select (arr!19306 a!3591) from!2969) acc!652))))

(assert (=> b!707287 d!96405))

(declare-fun d!96407 () Bool)

(declare-fun lt!317952 () Bool)

(assert (=> d!96407 (= lt!317952 (select (content!334 acc!652) k0!2824))))

(declare-fun e!398058 () Bool)

(assert (=> d!96407 (= lt!317952 e!398058)))

(declare-fun res!471382 () Bool)

(assert (=> d!96407 (=> (not res!471382) (not e!398058))))

(assert (=> d!96407 (= res!471382 ((_ is Cons!13396) acc!652))))

(assert (=> d!96407 (= (contains!3943 acc!652 k0!2824) lt!317952)))

(declare-fun b!707415 () Bool)

(declare-fun e!398057 () Bool)

(assert (=> b!707415 (= e!398058 e!398057)))

(declare-fun res!471381 () Bool)

(assert (=> b!707415 (=> res!471381 e!398057)))

(assert (=> b!707415 (= res!471381 (= (h!14441 acc!652) k0!2824))))

(declare-fun b!707416 () Bool)

(assert (=> b!707416 (= e!398057 (contains!3943 (t!19690 acc!652) k0!2824))))

(assert (= (and d!96407 res!471382) b!707415))

(assert (= (and b!707415 (not res!471381)) b!707416))

(assert (=> d!96407 m!664995))

(declare-fun m!665031 () Bool)

(assert (=> d!96407 m!665031))

(declare-fun m!665033 () Bool)

(assert (=> b!707416 m!665033))

(assert (=> b!707298 d!96407))

(declare-fun bm!34364 () Bool)

(declare-fun call!34367 () List!13400)

(assert (=> bm!34364 (= call!34367 (-!352 (t!19690 newAcc!49) k0!2824))))

(declare-fun b!707447 () Bool)

(declare-fun e!398086 () List!13400)

(assert (=> b!707447 (= e!398086 (Cons!13396 (h!14441 newAcc!49) call!34367))))

(declare-fun d!96413 () Bool)

(declare-fun e!398088 () Bool)

(assert (=> d!96413 e!398088))

(declare-fun res!471405 () Bool)

(assert (=> d!96413 (=> (not res!471405) (not e!398088))))

(declare-fun lt!317959 () List!13400)

(declare-fun size!19692 (List!13400) Int)

(assert (=> d!96413 (= res!471405 (<= (size!19692 lt!317959) (size!19692 newAcc!49)))))

(declare-fun e!398087 () List!13400)

(assert (=> d!96413 (= lt!317959 e!398087)))

(declare-fun c!78388 () Bool)

(assert (=> d!96413 (= c!78388 ((_ is Cons!13396) newAcc!49))))

(assert (=> d!96413 (= (-!352 newAcc!49 k0!2824) lt!317959)))

(declare-fun b!707448 () Bool)

(assert (=> b!707448 (= e!398087 e!398086)))

(declare-fun c!78389 () Bool)

(assert (=> b!707448 (= c!78389 (= k0!2824 (h!14441 newAcc!49)))))

(declare-fun b!707449 () Bool)

(assert (=> b!707449 (= e!398086 call!34367)))

(declare-fun b!707450 () Bool)

(assert (=> b!707450 (= e!398088 (= (content!334 lt!317959) ((_ map and) (content!334 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun b!707451 () Bool)

(assert (=> b!707451 (= e!398087 Nil!13397)))

(assert (= (and d!96413 c!78388) b!707448))

(assert (= (and d!96413 (not c!78388)) b!707451))

(assert (= (and b!707448 c!78389) b!707449))

(assert (= (and b!707448 (not c!78389)) b!707447))

(assert (= (or b!707449 b!707447) bm!34364))

(assert (= (and d!96413 res!471405) b!707450))

(declare-fun m!665051 () Bool)

(assert (=> bm!34364 m!665051))

(declare-fun m!665053 () Bool)

(assert (=> d!96413 m!665053))

(declare-fun m!665055 () Bool)

(assert (=> d!96413 m!665055))

(declare-fun m!665057 () Bool)

(assert (=> b!707450 m!665057))

(assert (=> b!707450 m!665009))

(declare-fun m!665059 () Bool)

(assert (=> b!707450 m!665059))

(assert (=> b!707294 d!96413))

(declare-fun d!96425 () Bool)

(declare-fun res!471406 () Bool)

(declare-fun e!398090 () Bool)

(assert (=> d!96425 (=> res!471406 e!398090)))

(assert (=> d!96425 (= res!471406 ((_ is Nil!13397) acc!652))))

(assert (=> d!96425 (= (noDuplicate!1190 acc!652) e!398090)))

(declare-fun b!707454 () Bool)

(declare-fun e!398091 () Bool)

(assert (=> b!707454 (= e!398090 e!398091)))

(declare-fun res!471407 () Bool)

(assert (=> b!707454 (=> (not res!471407) (not e!398091))))

(assert (=> b!707454 (= res!471407 (not (contains!3943 (t!19690 acc!652) (h!14441 acc!652))))))

(declare-fun b!707455 () Bool)

(assert (=> b!707455 (= e!398091 (noDuplicate!1190 (t!19690 acc!652)))))

(assert (= (and d!96425 (not res!471406)) b!707454))

(assert (= (and b!707454 res!471407) b!707455))

(declare-fun m!665061 () Bool)

(assert (=> b!707454 m!665061))

(declare-fun m!665063 () Bool)

(assert (=> b!707455 m!665063))

(assert (=> b!707284 d!96425))

(declare-fun b!707492 () Bool)

(declare-fun e!398123 () Bool)

(declare-fun e!398124 () Bool)

(assert (=> b!707492 (= e!398123 e!398124)))

(declare-fun res!471435 () Bool)

(assert (=> b!707492 (=> res!471435 e!398124)))

(declare-fun e!398126 () Bool)

(assert (=> b!707492 (= res!471435 e!398126)))

(declare-fun res!471434 () Bool)

(assert (=> b!707492 (=> (not res!471434) (not e!398126))))

(assert (=> b!707492 (= res!471434 (= (h!14441 acc!652) (h!14441 newAcc!49)))))

(declare-fun b!707493 () Bool)

(assert (=> b!707493 (= e!398126 (subseq!387 (t!19690 acc!652) (t!19690 newAcc!49)))))

(declare-fun b!707491 () Bool)

(declare-fun e!398125 () Bool)

(assert (=> b!707491 (= e!398125 e!398123)))

(declare-fun res!471433 () Bool)

(assert (=> b!707491 (=> (not res!471433) (not e!398123))))

(assert (=> b!707491 (= res!471433 ((_ is Cons!13396) newAcc!49))))

(declare-fun d!96427 () Bool)

(declare-fun res!471436 () Bool)

(assert (=> d!96427 (=> res!471436 e!398125)))

(assert (=> d!96427 (= res!471436 ((_ is Nil!13397) acc!652))))

(assert (=> d!96427 (= (subseq!387 acc!652 newAcc!49) e!398125)))

(declare-fun b!707494 () Bool)

(assert (=> b!707494 (= e!398124 (subseq!387 acc!652 (t!19690 newAcc!49)))))

(assert (= (and d!96427 (not res!471436)) b!707491))

(assert (= (and b!707491 res!471433) b!707492))

(assert (= (and b!707492 res!471434) b!707493))

(assert (= (and b!707492 (not res!471435)) b!707494))

(declare-fun m!665105 () Bool)

(assert (=> b!707493 m!665105))

(declare-fun m!665107 () Bool)

(assert (=> b!707494 m!665107))

(assert (=> b!707285 d!96427))

(declare-fun d!96447 () Bool)

(declare-fun res!471449 () Bool)

(declare-fun e!398139 () Bool)

(assert (=> d!96447 (=> res!471449 e!398139)))

(assert (=> d!96447 (= res!471449 (= (select (arr!19306 a!3591) from!2969) k0!2824))))

(assert (=> d!96447 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!398139)))

(declare-fun b!707507 () Bool)

(declare-fun e!398140 () Bool)

(assert (=> b!707507 (= e!398139 e!398140)))

(declare-fun res!471450 () Bool)

(assert (=> b!707507 (=> (not res!471450) (not e!398140))))

(assert (=> b!707507 (= res!471450 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19689 a!3591)))))

(declare-fun b!707508 () Bool)

(assert (=> b!707508 (= e!398140 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96447 (not res!471449)) b!707507))

(assert (= (and b!707507 res!471450) b!707508))

(assert (=> d!96447 m!664925))

(declare-fun m!665113 () Bool)

(assert (=> b!707508 m!665113))

(assert (=> b!707291 d!96447))

(declare-fun d!96455 () Bool)

(declare-fun lt!317970 () Bool)

(assert (=> d!96455 (= lt!317970 (select (content!334 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398142 () Bool)

(assert (=> d!96455 (= lt!317970 e!398142)))

(declare-fun res!471452 () Bool)

(assert (=> d!96455 (=> (not res!471452) (not e!398142))))

(assert (=> d!96455 (= res!471452 ((_ is Cons!13396) newAcc!49))))

(assert (=> d!96455 (= (contains!3943 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!317970)))

(declare-fun b!707509 () Bool)

(declare-fun e!398141 () Bool)

(assert (=> b!707509 (= e!398142 e!398141)))

(declare-fun res!471451 () Bool)

(assert (=> b!707509 (=> res!471451 e!398141)))

(assert (=> b!707509 (= res!471451 (= (h!14441 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707510 () Bool)

(assert (=> b!707510 (= e!398141 (contains!3943 (t!19690 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96455 res!471452) b!707509))

(assert (= (and b!707509 (not res!471451)) b!707510))

(assert (=> d!96455 m!665009))

(declare-fun m!665115 () Bool)

(assert (=> d!96455 m!665115))

(declare-fun m!665117 () Bool)

(assert (=> b!707510 m!665117))

(assert (=> b!707292 d!96455))

(declare-fun d!96459 () Bool)

(declare-fun lt!317972 () Bool)

(assert (=> d!96459 (= lt!317972 (select (content!334 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!398146 () Bool)

(assert (=> d!96459 (= lt!317972 e!398146)))

(declare-fun res!471456 () Bool)

(assert (=> d!96459 (=> (not res!471456) (not e!398146))))

(assert (=> d!96459 (= res!471456 ((_ is Cons!13396) acc!652))))

(assert (=> d!96459 (= (contains!3943 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317972)))

(declare-fun b!707513 () Bool)

(declare-fun e!398145 () Bool)

(assert (=> b!707513 (= e!398146 e!398145)))

(declare-fun res!471455 () Bool)

(assert (=> b!707513 (=> res!471455 e!398145)))

(assert (=> b!707513 (= res!471455 (= (h!14441 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707514 () Bool)

(assert (=> b!707514 (= e!398145 (contains!3943 (t!19690 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96459 res!471456) b!707513))

(assert (= (and b!707513 (not res!471455)) b!707514))

(assert (=> d!96459 m!664995))

(declare-fun m!665123 () Bool)

(assert (=> d!96459 m!665123))

(declare-fun m!665125 () Bool)

(assert (=> b!707514 m!665125))

(assert (=> b!707293 d!96459))

(check-sat (not b!707493) (not d!96455) (not d!96399) (not d!96413) (not bm!34359) (not d!96387) (not b!707450) (not b!707363) (not b!707510) (not b!707397) (not b!707400) (not d!96407) (not b!707454) (not bm!34364) (not b!707357) (not b!707514) (not b!707494) (not d!96401) (not d!96459) (not b!707455) (not b!707396) (not b!707508) (not b!707398) (not b!707416) (not b!707403) (not b!707362) (not b!707402) (not b!707404))
(check-sat)
