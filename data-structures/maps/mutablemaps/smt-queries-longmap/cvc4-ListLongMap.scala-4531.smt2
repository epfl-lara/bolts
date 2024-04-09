; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62674 () Bool)

(assert start!62674)

(declare-fun res!471334 () Bool)

(declare-fun e!398001 () Bool)

(assert (=> start!62674 (=> (not res!471334) (not e!398001))))

(declare-datatypes ((array!40309 0))(
  ( (array!40310 (arr!19307 (Array (_ BitVec 32) (_ BitVec 64))) (size!19690 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40309)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62674 (= res!471334 (and (bvslt (size!19690 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19690 a!3591))))))

(assert (=> start!62674 e!398001))

(assert (=> start!62674 true))

(declare-fun array_inv!15081 (array!40309) Bool)

(assert (=> start!62674 (array_inv!15081 a!3591)))

(declare-fun b!707335 () Bool)

(declare-fun res!471326 () Bool)

(assert (=> b!707335 (=> (not res!471326) (not e!398001))))

(declare-datatypes ((List!13401 0))(
  ( (Nil!13398) (Cons!13397 (h!14442 (_ BitVec 64)) (t!19691 List!13401)) )
))
(declare-fun newAcc!49 () List!13401)

(declare-fun noDuplicate!1191 (List!13401) Bool)

(assert (=> b!707335 (= res!471326 (noDuplicate!1191 newAcc!49))))

(declare-fun b!707336 () Bool)

(declare-fun res!471328 () Bool)

(assert (=> b!707336 (=> (not res!471328) (not e!398001))))

(declare-fun acc!652 () List!13401)

(assert (=> b!707336 (= res!471328 (noDuplicate!1191 acc!652))))

(declare-fun b!707337 () Bool)

(declare-fun res!471329 () Bool)

(assert (=> b!707337 (=> (not res!471329) (not e!398001))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707337 (= res!471329 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!707338 () Bool)

(declare-fun $colon$colon!498 (List!13401 (_ BitVec 64)) List!13401)

(assert (=> b!707338 (= e!398001 (not (noDuplicate!1191 ($colon$colon!498 acc!652 (select (arr!19307 a!3591) from!2969)))))))

(declare-fun b!707339 () Bool)

(declare-fun res!471330 () Bool)

(assert (=> b!707339 (=> (not res!471330) (not e!398001))))

(assert (=> b!707339 (= res!471330 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19690 a!3591)))))

(declare-fun b!707340 () Bool)

(declare-fun res!471321 () Bool)

(assert (=> b!707340 (=> (not res!471321) (not e!398001))))

(declare-fun contains!3944 (List!13401 (_ BitVec 64)) Bool)

(assert (=> b!707340 (= res!471321 (not (contains!3944 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707341 () Bool)

(declare-fun res!471327 () Bool)

(assert (=> b!707341 (=> (not res!471327) (not e!398001))))

(assert (=> b!707341 (= res!471327 (contains!3944 newAcc!49 k!2824))))

(declare-fun b!707342 () Bool)

(declare-fun res!471325 () Bool)

(assert (=> b!707342 (=> (not res!471325) (not e!398001))))

(assert (=> b!707342 (= res!471325 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!707343 () Bool)

(declare-fun res!471322 () Bool)

(assert (=> b!707343 (=> (not res!471322) (not e!398001))))

(declare-fun -!353 (List!13401 (_ BitVec 64)) List!13401)

(assert (=> b!707343 (= res!471322 (= (-!353 newAcc!49 k!2824) acc!652))))

(declare-fun b!707344 () Bool)

(declare-fun res!471332 () Bool)

(assert (=> b!707344 (=> (not res!471332) (not e!398001))))

(assert (=> b!707344 (= res!471332 (not (contains!3944 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707345 () Bool)

(declare-fun res!471320 () Bool)

(assert (=> b!707345 (=> (not res!471320) (not e!398001))))

(declare-fun subseq!388 (List!13401 List!13401) Bool)

(assert (=> b!707345 (= res!471320 (subseq!388 acc!652 newAcc!49))))

(declare-fun b!707346 () Bool)

(declare-fun res!471324 () Bool)

(assert (=> b!707346 (=> (not res!471324) (not e!398001))))

(assert (=> b!707346 (= res!471324 (not (contains!3944 acc!652 k!2824)))))

(declare-fun b!707347 () Bool)

(declare-fun res!471319 () Bool)

(assert (=> b!707347 (=> (not res!471319) (not e!398001))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707347 (= res!471319 (validKeyInArray!0 k!2824))))

(declare-fun b!707348 () Bool)

(declare-fun res!471323 () Bool)

(assert (=> b!707348 (=> (not res!471323) (not e!398001))))

(declare-fun arrayNoDuplicates!0 (array!40309 (_ BitVec 32) List!13401) Bool)

(assert (=> b!707348 (= res!471323 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!707349 () Bool)

(declare-fun res!471331 () Bool)

(assert (=> b!707349 (=> (not res!471331) (not e!398001))))

(assert (=> b!707349 (= res!471331 (validKeyInArray!0 (select (arr!19307 a!3591) from!2969)))))

(declare-fun b!707350 () Bool)

(declare-fun res!471335 () Bool)

(assert (=> b!707350 (=> (not res!471335) (not e!398001))))

(assert (=> b!707350 (= res!471335 (not (contains!3944 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707351 () Bool)

(declare-fun res!471333 () Bool)

(assert (=> b!707351 (=> (not res!471333) (not e!398001))))

(assert (=> b!707351 (= res!471333 (not (contains!3944 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62674 res!471334) b!707336))

(assert (= (and b!707336 res!471328) b!707335))

(assert (= (and b!707335 res!471326) b!707350))

(assert (= (and b!707350 res!471335) b!707344))

(assert (= (and b!707344 res!471332) b!707337))

(assert (= (and b!707337 res!471329) b!707346))

(assert (= (and b!707346 res!471324) b!707347))

(assert (= (and b!707347 res!471319) b!707348))

(assert (= (and b!707348 res!471323) b!707345))

(assert (= (and b!707345 res!471320) b!707341))

(assert (= (and b!707341 res!471327) b!707343))

(assert (= (and b!707343 res!471322) b!707351))

(assert (= (and b!707351 res!471333) b!707340))

(assert (= (and b!707340 res!471321) b!707339))

(assert (= (and b!707339 res!471330) b!707349))

(assert (= (and b!707349 res!471331) b!707342))

(assert (= (and b!707342 res!471325) b!707338))

(declare-fun m!664959 () Bool)

(assert (=> b!707337 m!664959))

(declare-fun m!664961 () Bool)

(assert (=> b!707349 m!664961))

(assert (=> b!707349 m!664961))

(declare-fun m!664963 () Bool)

(assert (=> b!707349 m!664963))

(declare-fun m!664965 () Bool)

(assert (=> b!707340 m!664965))

(declare-fun m!664967 () Bool)

(assert (=> b!707336 m!664967))

(declare-fun m!664969 () Bool)

(assert (=> b!707343 m!664969))

(assert (=> b!707338 m!664961))

(assert (=> b!707338 m!664961))

(declare-fun m!664971 () Bool)

(assert (=> b!707338 m!664971))

(assert (=> b!707338 m!664971))

(declare-fun m!664973 () Bool)

(assert (=> b!707338 m!664973))

(declare-fun m!664975 () Bool)

(assert (=> start!62674 m!664975))

(declare-fun m!664977 () Bool)

(assert (=> b!707346 m!664977))

(declare-fun m!664979 () Bool)

(assert (=> b!707348 m!664979))

(declare-fun m!664981 () Bool)

(assert (=> b!707347 m!664981))

(declare-fun m!664983 () Bool)

(assert (=> b!707341 m!664983))

(declare-fun m!664985 () Bool)

(assert (=> b!707335 m!664985))

(declare-fun m!664987 () Bool)

(assert (=> b!707350 m!664987))

(declare-fun m!664989 () Bool)

(assert (=> b!707351 m!664989))

(declare-fun m!664991 () Bool)

(assert (=> b!707344 m!664991))

(declare-fun m!664993 () Bool)

(assert (=> b!707345 m!664993))

(push 1)

(assert (not b!707349))

(assert (not b!707345))

(assert (not b!707347))

(assert (not b!707346))

(assert (not b!707344))

(assert (not start!62674))

(assert (not b!707335))

(assert (not b!707341))

(assert (not b!707350))

(assert (not b!707343))

(assert (not b!707338))

(assert (not b!707337))

(assert (not b!707348))

(assert (not b!707351))

(assert (not b!707340))

(assert (not b!707336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!707405 () Bool)

(declare-fun e!398049 () Bool)

(declare-fun call!34363 () Bool)

(assert (=> b!707405 (= e!398049 call!34363)))

(declare-fun b!707406 () Bool)

(declare-fun e!398051 () Bool)

(declare-fun e!398050 () Bool)

(assert (=> b!707406 (= e!398051 e!398050)))

(declare-fun res!471377 () Bool)

(assert (=> b!707406 (=> (not res!471377) (not e!398050))))

(declare-fun e!398052 () Bool)

(assert (=> b!707406 (= res!471377 (not e!398052))))

(declare-fun res!471376 () Bool)

(assert (=> b!707406 (=> (not res!471376) (not e!398052))))

(assert (=> b!707406 (= res!471376 (validKeyInArray!0 (select (arr!19307 a!3591) from!2969)))))

(declare-fun b!707407 () Bool)

(assert (=> b!707407 (= e!398050 e!398049)))

(declare-fun c!78382 () Bool)

(assert (=> b!707407 (= c!78382 (validKeyInArray!0 (select (arr!19307 a!3591) from!2969)))))

(declare-fun b!707408 () Bool)

(assert (=> b!707408 (= e!398049 call!34363)))

(declare-fun d!96395 () Bool)

(declare-fun res!471375 () Bool)

(assert (=> d!96395 (=> res!471375 e!398051)))

(assert (=> d!96395 (= res!471375 (bvsge from!2969 (size!19690 a!3591)))))

(assert (=> d!96395 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!398051)))

(declare-fun bm!34360 () Bool)

(assert (=> bm!34360 (= call!34363 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78382 (Cons!13397 (select (arr!19307 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!707409 () Bool)

(assert (=> b!707409 (= e!398052 (contains!3944 acc!652 (select (arr!19307 a!3591) from!2969)))))

(assert (= (and d!96395 (not res!471375)) b!707406))

(assert (= (and b!707406 res!471376) b!707409))

(assert (= (and b!707406 res!471377) b!707407))

(assert (= (and b!707407 c!78382) b!707408))

(assert (= (and b!707407 (not c!78382)) b!707405))

(assert (= (or b!707408 b!707405) bm!34360))

(assert (=> b!707406 m!664961))

(assert (=> b!707406 m!664961))

(assert (=> b!707406 m!664963))

(assert (=> b!707407 m!664961))

(assert (=> b!707407 m!664961))

(assert (=> b!707407 m!664963))

(assert (=> bm!34360 m!664961))

(declare-fun m!665025 () Bool)

(assert (=> bm!34360 m!665025))

(assert (=> b!707409 m!664961))

(assert (=> b!707409 m!664961))

(declare-fun m!665028 () Bool)

(assert (=> b!707409 m!665028))

(assert (=> b!707348 d!96395))

(declare-fun d!96409 () Bool)

(declare-fun res!471391 () Bool)

(declare-fun e!398067 () Bool)

(assert (=> d!96409 (=> res!471391 e!398067)))

(assert (=> d!96409 (= res!471391 (= (select (arr!19307 a!3591) from!2969) k!2824))))

(assert (=> d!96409 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!398067)))

(declare-fun b!707425 () Bool)

(declare-fun e!398068 () Bool)

(assert (=> b!707425 (= e!398067 e!398068)))

(declare-fun res!471392 () Bool)

(assert (=> b!707425 (=> (not res!471392) (not e!398068))))

(assert (=> b!707425 (= res!471392 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19690 a!3591)))))

(declare-fun b!707426 () Bool)

(assert (=> b!707426 (= e!398068 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96409 (not res!471391)) b!707425))

(assert (= (and b!707425 res!471392) b!707426))

(assert (=> d!96409 m!664961))

(declare-fun m!665035 () Bool)

(assert (=> b!707426 m!665035))

(assert (=> b!707337 d!96409))

(declare-fun d!96415 () Bool)

(assert (=> d!96415 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707347 d!96415))

(declare-fun d!96417 () Bool)

(declare-fun res!471403 () Bool)

(declare-fun e!398084 () Bool)

(assert (=> d!96417 (=> res!471403 e!398084)))

(assert (=> d!96417 (= res!471403 (is-Nil!13398 acc!652))))

(assert (=> d!96417 (= (noDuplicate!1191 acc!652) e!398084)))

(declare-fun b!707445 () Bool)

(declare-fun e!398085 () Bool)

(assert (=> b!707445 (= e!398084 e!398085)))

(declare-fun res!471404 () Bool)

(assert (=> b!707445 (=> (not res!471404) (not e!398085))))

(assert (=> b!707445 (= res!471404 (not (contains!3944 (t!19691 acc!652) (h!14442 acc!652))))))

(declare-fun b!707446 () Bool)

(assert (=> b!707446 (= e!398085 (noDuplicate!1191 (t!19691 acc!652)))))

(assert (= (and d!96417 (not res!471403)) b!707445))

(assert (= (and b!707445 res!471404) b!707446))

(declare-fun m!665047 () Bool)

(assert (=> b!707445 m!665047))

(declare-fun m!665049 () Bool)

(assert (=> b!707446 m!665049))

(assert (=> b!707336 d!96417))

(declare-fun d!96423 () Bool)

(declare-fun lt!317964 () Bool)

(declare-fun content!336 (List!13401) (Set (_ BitVec 64)))

(assert (=> d!96423 (= lt!317964 (member k!2824 (content!336 acc!652)))))

(declare-fun e!398102 () Bool)

(assert (=> d!96423 (= lt!317964 e!398102)))

(declare-fun res!471415 () Bool)

(assert (=> d!96423 (=> (not res!471415) (not e!398102))))

(assert (=> d!96423 (= res!471415 (is-Cons!13397 acc!652))))

(assert (=> d!96423 (= (contains!3944 acc!652 k!2824) lt!317964)))

(declare-fun b!707468 () Bool)

(declare-fun e!398103 () Bool)

(assert (=> b!707468 (= e!398102 e!398103)))

(declare-fun res!471414 () Bool)

(assert (=> b!707468 (=> res!471414 e!398103)))

(assert (=> b!707468 (= res!471414 (= (h!14442 acc!652) k!2824))))

(declare-fun b!707469 () Bool)

(assert (=> b!707469 (= e!398103 (contains!3944 (t!19691 acc!652) k!2824))))

(assert (= (and d!96423 res!471415) b!707468))

(assert (= (and b!707468 (not res!471414)) b!707469))

(declare-fun m!665065 () Bool)

(assert (=> d!96423 m!665065))

(declare-fun m!665067 () Bool)

(assert (=> d!96423 m!665067))

(declare-fun m!665069 () Bool)

(assert (=> b!707469 m!665069))

(assert (=> b!707346 d!96423))

(declare-fun d!96429 () Bool)

(declare-fun lt!317965 () Bool)

(assert (=> d!96429 (= lt!317965 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!336 newAcc!49)))))

(declare-fun e!398104 () Bool)

(assert (=> d!96429 (= lt!317965 e!398104)))

(declare-fun res!471417 () Bool)

(assert (=> d!96429 (=> (not res!471417) (not e!398104))))

(assert (=> d!96429 (= res!471417 (is-Cons!13397 newAcc!49))))

(assert (=> d!96429 (= (contains!3944 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317965)))

(declare-fun b!707470 () Bool)

(declare-fun e!398105 () Bool)

(assert (=> b!707470 (= e!398104 e!398105)))

(declare-fun res!471416 () Bool)

(assert (=> b!707470 (=> res!471416 e!398105)))

(assert (=> b!707470 (= res!471416 (= (h!14442 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707471 () Bool)

(assert (=> b!707471 (= e!398105 (contains!3944 (t!19691 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96429 res!471417) b!707470))

(assert (= (and b!707470 (not res!471416)) b!707471))

(declare-fun m!665071 () Bool)

(assert (=> d!96429 m!665071))

(declare-fun m!665073 () Bool)

(assert (=> d!96429 m!665073))

(declare-fun m!665075 () Bool)

(assert (=> b!707471 m!665075))

(assert (=> b!707351 d!96429))

(declare-fun d!96431 () Bool)

(declare-fun lt!317966 () Bool)

(assert (=> d!96431 (= lt!317966 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!336 newAcc!49)))))

(declare-fun e!398114 () Bool)

(assert (=> d!96431 (= lt!317966 e!398114)))

(declare-fun res!471427 () Bool)

(assert (=> d!96431 (=> (not res!471427) (not e!398114))))

(assert (=> d!96431 (= res!471427 (is-Cons!13397 newAcc!49))))

(assert (=> d!96431 (= (contains!3944 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!317966)))

(declare-fun b!707480 () Bool)

(declare-fun e!398115 () Bool)

(assert (=> b!707480 (= e!398114 e!398115)))

(declare-fun res!471426 () Bool)

(assert (=> b!707480 (=> res!471426 e!398115)))

(assert (=> b!707480 (= res!471426 (= (h!14442 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707481 () Bool)

(assert (=> b!707481 (= e!398115 (contains!3944 (t!19691 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96431 res!471427) b!707480))

(assert (= (and b!707480 (not res!471426)) b!707481))

(assert (=> d!96431 m!665071))

(declare-fun m!665077 () Bool)

(assert (=> d!96431 m!665077))

(declare-fun m!665079 () Bool)

(assert (=> b!707481 m!665079))

(assert (=> b!707340 d!96431))

(declare-fun d!96433 () Bool)

(declare-fun lt!317968 () Bool)

(assert (=> d!96433 (= lt!317968 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!336 acc!652)))))

(declare-fun e!398119 () Bool)

(assert (=> d!96433 (= lt!317968 e!398119)))

(declare-fun res!471430 () Bool)

(assert (=> d!96433 (=> (not res!471430) (not e!398119))))

(assert (=> d!96433 (= res!471430 (is-Cons!13397 acc!652))))

(assert (=> d!96433 (= (contains!3944 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317968)))

(declare-fun b!707487 () Bool)

(declare-fun e!398120 () Bool)

(assert (=> b!707487 (= e!398119 e!398120)))

(declare-fun res!471429 () Bool)

(assert (=> b!707487 (=> res!471429 e!398120)))

(assert (=> b!707487 (= res!471429 (= (h!14442 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707488 () Bool)

(assert (=> b!707488 (= e!398120 (contains!3944 (t!19691 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96433 res!471430) b!707487))

(assert (= (and b!707487 (not res!471429)) b!707488))

(assert (=> d!96433 m!665065))

(declare-fun m!665085 () Bool)

(assert (=> d!96433 m!665085))

(declare-fun m!665089 () Bool)

(assert (=> b!707488 m!665089))

(assert (=> b!707350 d!96433))

(declare-fun d!96435 () Bool)

(assert (=> d!96435 (= (array_inv!15081 a!3591) (bvsge (size!19690 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62674 d!96435))

(declare-fun d!96441 () Bool)

(assert (=> d!96441 (= (validKeyInArray!0 (select (arr!19307 a!3591) from!2969)) (and (not (= (select (arr!19307 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19307 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707349 d!96441))

(declare-fun d!96443 () Bool)

(declare-fun res!471437 () Bool)

(declare-fun e!398127 () Bool)

(assert (=> d!96443 (=> res!471437 e!398127)))

(assert (=> d!96443 (= res!471437 (is-Nil!13398 ($colon$colon!498 acc!652 (select (arr!19307 a!3591) from!2969))))))

