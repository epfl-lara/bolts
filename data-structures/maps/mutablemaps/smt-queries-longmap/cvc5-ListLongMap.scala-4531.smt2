; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62670 () Bool)

(assert start!62670)

(declare-fun b!707233 () Bool)

(declare-fun res!471231 () Bool)

(declare-fun e!397990 () Bool)

(assert (=> b!707233 (=> (not res!471231) (not e!397990))))

(declare-datatypes ((List!13399 0))(
  ( (Nil!13396) (Cons!13395 (h!14440 (_ BitVec 64)) (t!19689 List!13399)) )
))
(declare-fun acc!652 () List!13399)

(declare-fun contains!3942 (List!13399 (_ BitVec 64)) Bool)

(assert (=> b!707233 (= res!471231 (not (contains!3942 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707234 () Bool)

(declare-fun res!471230 () Bool)

(assert (=> b!707234 (=> (not res!471230) (not e!397990))))

(declare-datatypes ((array!40305 0))(
  ( (array!40306 (arr!19305 (Array (_ BitVec 32) (_ BitVec 64))) (size!19688 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40305)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!707234 (= res!471230 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!707235 () Bool)

(declare-fun res!471218 () Bool)

(assert (=> b!707235 (=> (not res!471218) (not e!397990))))

(declare-fun newAcc!49 () List!13399)

(assert (=> b!707235 (= res!471218 (not (contains!3942 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707236 () Bool)

(declare-fun res!471222 () Bool)

(assert (=> b!707236 (=> (not res!471222) (not e!397990))))

(assert (=> b!707236 (= res!471222 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!707237 () Bool)

(declare-fun res!471224 () Bool)

(assert (=> b!707237 (=> (not res!471224) (not e!397990))))

(declare-fun noDuplicate!1189 (List!13399) Bool)

(assert (=> b!707237 (= res!471224 (noDuplicate!1189 newAcc!49))))

(declare-fun b!707238 () Bool)

(declare-fun res!471221 () Bool)

(assert (=> b!707238 (=> (not res!471221) (not e!397990))))

(declare-fun arrayNoDuplicates!0 (array!40305 (_ BitVec 32) List!13399) Bool)

(assert (=> b!707238 (= res!471221 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!707239 () Bool)

(declare-fun res!471219 () Bool)

(assert (=> b!707239 (=> (not res!471219) (not e!397990))))

(assert (=> b!707239 (= res!471219 (not (contains!3942 acc!652 k!2824)))))

(declare-fun b!707240 () Bool)

(declare-fun res!471233 () Bool)

(assert (=> b!707240 (=> (not res!471233) (not e!397990))))

(declare-fun -!351 (List!13399 (_ BitVec 64)) List!13399)

(assert (=> b!707240 (= res!471233 (= (-!351 newAcc!49 k!2824) acc!652))))

(declare-fun b!707241 () Bool)

(declare-fun res!471229 () Bool)

(assert (=> b!707241 (=> (not res!471229) (not e!397990))))

(assert (=> b!707241 (= res!471229 (not (contains!3942 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!707242 () Bool)

(declare-fun res!471226 () Bool)

(assert (=> b!707242 (=> (not res!471226) (not e!397990))))

(assert (=> b!707242 (= res!471226 (noDuplicate!1189 acc!652))))

(declare-fun b!707243 () Bool)

(declare-fun res!471232 () Bool)

(assert (=> b!707243 (=> (not res!471232) (not e!397990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!707243 (= res!471232 (validKeyInArray!0 (select (arr!19305 a!3591) from!2969)))))

(declare-fun res!471228 () Bool)

(assert (=> start!62670 (=> (not res!471228) (not e!397990))))

(assert (=> start!62670 (= res!471228 (and (bvslt (size!19688 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19688 a!3591))))))

(assert (=> start!62670 e!397990))

(assert (=> start!62670 true))

(declare-fun array_inv!15079 (array!40305) Bool)

(assert (=> start!62670 (array_inv!15079 a!3591)))

(declare-fun b!707244 () Bool)

(declare-fun res!471225 () Bool)

(assert (=> b!707244 (=> (not res!471225) (not e!397990))))

(declare-fun subseq!386 (List!13399 List!13399) Bool)

(assert (=> b!707244 (= res!471225 (subseq!386 acc!652 newAcc!49))))

(declare-fun b!707245 () Bool)

(declare-fun $colon$colon!496 (List!13399 (_ BitVec 64)) List!13399)

(assert (=> b!707245 (= e!397990 (not (noDuplicate!1189 ($colon$colon!496 acc!652 (select (arr!19305 a!3591) from!2969)))))))

(declare-fun b!707246 () Bool)

(declare-fun res!471227 () Bool)

(assert (=> b!707246 (=> (not res!471227) (not e!397990))))

(assert (=> b!707246 (= res!471227 (contains!3942 newAcc!49 k!2824))))

(declare-fun b!707247 () Bool)

(declare-fun res!471217 () Bool)

(assert (=> b!707247 (=> (not res!471217) (not e!397990))))

(assert (=> b!707247 (= res!471217 (validKeyInArray!0 k!2824))))

(declare-fun b!707248 () Bool)

(declare-fun res!471220 () Bool)

(assert (=> b!707248 (=> (not res!471220) (not e!397990))))

(assert (=> b!707248 (= res!471220 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19688 a!3591)))))

(declare-fun b!707249 () Bool)

(declare-fun res!471223 () Bool)

(assert (=> b!707249 (=> (not res!471223) (not e!397990))))

(assert (=> b!707249 (= res!471223 (not (contains!3942 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62670 res!471228) b!707242))

(assert (= (and b!707242 res!471226) b!707237))

(assert (= (and b!707237 res!471224) b!707233))

(assert (= (and b!707233 res!471231) b!707249))

(assert (= (and b!707249 res!471223) b!707234))

(assert (= (and b!707234 res!471230) b!707239))

(assert (= (and b!707239 res!471219) b!707247))

(assert (= (and b!707247 res!471217) b!707238))

(assert (= (and b!707238 res!471221) b!707244))

(assert (= (and b!707244 res!471225) b!707246))

(assert (= (and b!707246 res!471227) b!707240))

(assert (= (and b!707240 res!471233) b!707235))

(assert (= (and b!707235 res!471218) b!707241))

(assert (= (and b!707241 res!471229) b!707248))

(assert (= (and b!707248 res!471220) b!707243))

(assert (= (and b!707243 res!471232) b!707236))

(assert (= (and b!707236 res!471222) b!707245))

(declare-fun m!664887 () Bool)

(assert (=> b!707234 m!664887))

(declare-fun m!664889 () Bool)

(assert (=> b!707237 m!664889))

(declare-fun m!664891 () Bool)

(assert (=> b!707233 m!664891))

(declare-fun m!664893 () Bool)

(assert (=> b!707244 m!664893))

(declare-fun m!664895 () Bool)

(assert (=> b!707239 m!664895))

(declare-fun m!664897 () Bool)

(assert (=> b!707249 m!664897))

(declare-fun m!664899 () Bool)

(assert (=> b!707241 m!664899))

(declare-fun m!664901 () Bool)

(assert (=> b!707242 m!664901))

(declare-fun m!664903 () Bool)

(assert (=> b!707247 m!664903))

(declare-fun m!664905 () Bool)

(assert (=> b!707243 m!664905))

(assert (=> b!707243 m!664905))

(declare-fun m!664907 () Bool)

(assert (=> b!707243 m!664907))

(declare-fun m!664909 () Bool)

(assert (=> start!62670 m!664909))

(declare-fun m!664911 () Bool)

(assert (=> b!707235 m!664911))

(declare-fun m!664913 () Bool)

(assert (=> b!707246 m!664913))

(assert (=> b!707245 m!664905))

(assert (=> b!707245 m!664905))

(declare-fun m!664915 () Bool)

(assert (=> b!707245 m!664915))

(assert (=> b!707245 m!664915))

(declare-fun m!664917 () Bool)

(assert (=> b!707245 m!664917))

(declare-fun m!664919 () Bool)

(assert (=> b!707240 m!664919))

(declare-fun m!664921 () Bool)

(assert (=> b!707238 m!664921))

(push 1)

(assert (not b!707238))

(assert (not b!707246))

(assert (not b!707243))

(assert (not b!707244))

(assert (not b!707237))

(assert (not b!707233))

(assert (not b!707235))

(assert (not start!62670))

(assert (not b!707249))

(assert (not b!707242))

(assert (not b!707245))

(assert (not b!707247))

(assert (not b!707241))

(assert (not b!707239))

(assert (not b!707240))

(assert (not b!707234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!34361 () Bool)

(declare-fun c!78383 () Bool)

(declare-fun call!34364 () Bool)

(assert (=> bm!34361 (= call!34364 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78383 (Cons!13395 (select (arr!19305 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!707410 () Bool)

(declare-fun e!398054 () Bool)

(assert (=> b!707410 (= e!398054 call!34364)))

(declare-fun b!707411 () Bool)

(declare-fun e!398053 () Bool)

(assert (=> b!707411 (= e!398053 (contains!3942 acc!652 (select (arr!19305 a!3591) from!2969)))))

(declare-fun d!96397 () Bool)

(declare-fun res!471380 () Bool)

(declare-fun e!398055 () Bool)

(assert (=> d!96397 (=> res!471380 e!398055)))

(assert (=> d!96397 (= res!471380 (bvsge from!2969 (size!19688 a!3591)))))

(assert (=> d!96397 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!398055)))

(declare-fun b!707412 () Bool)

(assert (=> b!707412 (= e!398054 call!34364)))

(declare-fun b!707413 () Bool)

(declare-fun e!398056 () Bool)

(assert (=> b!707413 (= e!398055 e!398056)))

(declare-fun res!471379 () Bool)

(assert (=> b!707413 (=> (not res!471379) (not e!398056))))

(assert (=> b!707413 (= res!471379 (not e!398053))))

(declare-fun res!471378 () Bool)

(assert (=> b!707413 (=> (not res!471378) (not e!398053))))

(assert (=> b!707413 (= res!471378 (validKeyInArray!0 (select (arr!19305 a!3591) from!2969)))))

(declare-fun b!707414 () Bool)

(assert (=> b!707414 (= e!398056 e!398054)))

(assert (=> b!707414 (= c!78383 (validKeyInArray!0 (select (arr!19305 a!3591) from!2969)))))

(assert (= (and d!96397 (not res!471380)) b!707413))

(assert (= (and b!707413 res!471378) b!707411))

(assert (= (and b!707413 res!471379) b!707414))

(assert (= (and b!707414 c!78383) b!707410))

(assert (= (and b!707414 (not c!78383)) b!707412))

(assert (= (or b!707410 b!707412) bm!34361))

(assert (=> bm!34361 m!664905))

(declare-fun m!665024 () Bool)

(assert (=> bm!34361 m!665024))

(assert (=> b!707411 m!664905))

(assert (=> b!707411 m!664905))

(declare-fun m!665029 () Bool)

(assert (=> b!707411 m!665029))

(assert (=> b!707413 m!664905))

(assert (=> b!707413 m!664905))

(assert (=> b!707413 m!664907))

(assert (=> b!707414 m!664905))

(assert (=> b!707414 m!664905))

(assert (=> b!707414 m!664907))

(assert (=> b!707238 d!96397))

(declare-fun d!96411 () Bool)

(declare-fun lt!317955 () Bool)

(declare-fun content!335 (List!13399) (Set (_ BitVec 64)))

(assert (=> d!96411 (= lt!317955 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!335 acc!652)))))

(declare-fun e!398069 () Bool)

(assert (=> d!96411 (= lt!317955 e!398069)))

(declare-fun res!471394 () Bool)

(assert (=> d!96411 (=> (not res!471394) (not e!398069))))

(assert (=> d!96411 (= res!471394 (is-Cons!13395 acc!652))))

(assert (=> d!96411 (= (contains!3942 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!317955)))

(declare-fun b!707427 () Bool)

(declare-fun e!398070 () Bool)

(assert (=> b!707427 (= e!398069 e!398070)))

(declare-fun res!471393 () Bool)

(assert (=> b!707427 (=> res!471393 e!398070)))

(assert (=> b!707427 (= res!471393 (= (h!14440 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707428 () Bool)

(assert (=> b!707428 (= e!398070 (contains!3942 (t!19689 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96411 res!471394) b!707427))

(assert (= (and b!707427 (not res!471393)) b!707428))

(declare-fun m!665037 () Bool)

(assert (=> d!96411 m!665037))

(declare-fun m!665039 () Bool)

(assert (=> d!96411 m!665039))

(declare-fun m!665041 () Bool)

(assert (=> b!707428 m!665041))

(assert (=> b!707249 d!96411))

(declare-fun d!96419 () Bool)

(declare-fun lt!317958 () Bool)

(assert (=> d!96419 (= lt!317958 (set.member k!2824 (content!335 acc!652)))))

(declare-fun e!398076 () Bool)

(assert (=> d!96419 (= lt!317958 e!398076)))

(declare-fun res!471396 () Bool)

(assert (=> d!96419 (=> (not res!471396) (not e!398076))))

(assert (=> d!96419 (= res!471396 (is-Cons!13395 acc!652))))

(assert (=> d!96419 (= (contains!3942 acc!652 k!2824) lt!317958)))

(declare-fun b!707437 () Bool)

(declare-fun e!398077 () Bool)

(assert (=> b!707437 (= e!398076 e!398077)))

(declare-fun res!471395 () Bool)

(assert (=> b!707437 (=> res!471395 e!398077)))

(assert (=> b!707437 (= res!471395 (= (h!14440 acc!652) k!2824))))

(declare-fun b!707438 () Bool)

(assert (=> b!707438 (= e!398077 (contains!3942 (t!19689 acc!652) k!2824))))

(assert (= (and d!96419 res!471396) b!707437))

(assert (= (and b!707437 (not res!471395)) b!707438))

(assert (=> d!96419 m!665037))

(declare-fun m!665043 () Bool)

(assert (=> d!96419 m!665043))

(declare-fun m!665045 () Bool)

(assert (=> b!707438 m!665045))

(assert (=> b!707239 d!96419))

(declare-fun lt!317967 () List!13399)

(declare-fun b!707482 () Bool)

(declare-fun e!398117 () Bool)

(assert (=> b!707482 (= e!398117 (= (content!335 lt!317967) (set.minus (content!335 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!707483 () Bool)

(declare-fun e!398116 () List!13399)

(assert (=> b!707483 (= e!398116 Nil!13396)))

(declare-fun d!96421 () Bool)

(assert (=> d!96421 e!398117))

(declare-fun res!471428 () Bool)

(assert (=> d!96421 (=> (not res!471428) (not e!398117))))

(declare-fun size!19691 (List!13399) Int)

(assert (=> d!96421 (= res!471428 (<= (size!19691 lt!317967) (size!19691 newAcc!49)))))

(assert (=> d!96421 (= lt!317967 e!398116)))

(declare-fun c!78395 () Bool)

(assert (=> d!96421 (= c!78395 (is-Cons!13395 newAcc!49))))

(assert (=> d!96421 (= (-!351 newAcc!49 k!2824) lt!317967)))

(declare-fun bm!34367 () Bool)

(declare-fun call!34370 () List!13399)

(assert (=> bm!34367 (= call!34370 (-!351 (t!19689 newAcc!49) k!2824))))

(declare-fun b!707484 () Bool)

(declare-fun e!398118 () List!13399)

(assert (=> b!707484 (= e!398116 e!398118)))

(declare-fun c!78394 () Bool)

(assert (=> b!707484 (= c!78394 (= k!2824 (h!14440 newAcc!49)))))

(declare-fun b!707485 () Bool)

(assert (=> b!707485 (= e!398118 call!34370)))

(declare-fun b!707486 () Bool)

(assert (=> b!707486 (= e!398118 (Cons!13395 (h!14440 newAcc!49) call!34370))))

(assert (= (and d!96421 c!78395) b!707484))

(assert (= (and d!96421 (not c!78395)) b!707483))

(assert (= (and b!707484 c!78394) b!707485))

(assert (= (and b!707484 (not c!78394)) b!707486))

(assert (= (or b!707485 b!707486) bm!34367))

(assert (= (and d!96421 res!471428) b!707482))

(declare-fun m!665081 () Bool)

(assert (=> b!707482 m!665081))

(declare-fun m!665083 () Bool)

(assert (=> b!707482 m!665083))

(declare-fun m!665087 () Bool)

(assert (=> b!707482 m!665087))

(declare-fun m!665091 () Bool)

(assert (=> d!96421 m!665091))

(declare-fun m!665093 () Bool)

(assert (=> d!96421 m!665093))

(declare-fun m!665095 () Bool)

(assert (=> bm!34367 m!665095))

(assert (=> b!707240 d!96421))

(declare-fun d!96437 () Bool)

(declare-fun lt!317969 () Bool)

(assert (=> d!96437 (= lt!317969 (set.member k!2824 (content!335 newAcc!49)))))

(declare-fun e!398121 () Bool)

(assert (=> d!96437 (= lt!317969 e!398121)))

(declare-fun res!471432 () Bool)

(assert (=> d!96437 (=> (not res!471432) (not e!398121))))

(assert (=> d!96437 (= res!471432 (is-Cons!13395 newAcc!49))))

(assert (=> d!96437 (= (contains!3942 newAcc!49 k!2824) lt!317969)))

(declare-fun b!707489 () Bool)

(declare-fun e!398122 () Bool)

(assert (=> b!707489 (= e!398121 e!398122)))

(declare-fun res!471431 () Bool)

(assert (=> b!707489 (=> res!471431 e!398122)))

(assert (=> b!707489 (= res!471431 (= (h!14440 newAcc!49) k!2824))))

(declare-fun b!707490 () Bool)

(assert (=> b!707490 (= e!398122 (contains!3942 (t!19689 newAcc!49) k!2824))))

(assert (= (and d!96437 res!471432) b!707489))

(assert (= (and b!707489 (not res!471431)) b!707490))

(assert (=> d!96437 m!665083))

(declare-fun m!665097 () Bool)

(assert (=> d!96437 m!665097))

(declare-fun m!665099 () Bool)

(assert (=> b!707490 m!665099))

(assert (=> b!707246 d!96437))

(declare-fun d!96439 () Bool)

(assert (=> d!96439 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!707247 d!96439))

(declare-fun d!96449 () Bool)

(declare-fun res!471447 () Bool)

(declare-fun e!398137 () Bool)

(assert (=> d!96449 (=> res!471447 e!398137)))

(assert (=> d!96449 (= res!471447 (is-Nil!13396 newAcc!49))))

(assert (=> d!96449 (= (noDuplicate!1189 newAcc!49) e!398137)))

(declare-fun b!707505 () Bool)

(declare-fun e!398138 () Bool)

(assert (=> b!707505 (= e!398137 e!398138)))

(declare-fun res!471448 () Bool)

(assert (=> b!707505 (=> (not res!471448) (not e!398138))))

(assert (=> b!707505 (= res!471448 (not (contains!3942 (t!19689 newAcc!49) (h!14440 newAcc!49))))))

(declare-fun b!707506 () Bool)

(assert (=> b!707506 (= e!398138 (noDuplicate!1189 (t!19689 newAcc!49)))))

(assert (= (and d!96449 (not res!471447)) b!707505))

(assert (= (and b!707505 res!471448) b!707506))

(declare-fun m!665109 () Bool)

(assert (=> b!707505 m!665109))

(declare-fun m!665111 () Bool)

(assert (=> b!707506 m!665111))

(assert (=> b!707237 d!96449))

(declare-fun d!96453 () Bool)

(assert (=> d!96453 (= (array_inv!15079 a!3591) (bvsge (size!19688 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!62670 d!96453))

(declare-fun d!96457 () Bool)

(declare-fun lt!317971 () Bool)

(assert (=> d!96457 (= lt!317971 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!335 acc!652)))))

(declare-fun e!398143 () Bool)

(assert (=> d!96457 (= lt!317971 e!398143)))

(declare-fun res!471454 () Bool)

(assert (=> d!96457 (=> (not res!471454) (not e!398143))))

(assert (=> d!96457 (= res!471454 (is-Cons!13395 acc!652))))

(assert (=> d!96457 (= (contains!3942 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317971)))

(declare-fun b!707511 () Bool)

(declare-fun e!398144 () Bool)

(assert (=> b!707511 (= e!398143 e!398144)))

(declare-fun res!471453 () Bool)

(assert (=> b!707511 (=> res!471453 e!398144)))

(assert (=> b!707511 (= res!471453 (= (h!14440 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707512 () Bool)

(assert (=> b!707512 (= e!398144 (contains!3942 (t!19689 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!96457 res!471454) b!707511))

(assert (= (and b!707511 (not res!471453)) b!707512))

(assert (=> d!96457 m!665037))

(declare-fun m!665119 () Bool)

(assert (=> d!96457 m!665119))

(declare-fun m!665121 () Bool)

(assert (=> b!707512 m!665121))

(assert (=> b!707233 d!96457))

(declare-fun b!707542 () Bool)

(declare-fun e!398172 () Bool)

(declare-fun e!398171 () Bool)

(assert (=> b!707542 (= e!398172 e!398171)))

(declare-fun res!471472 () Bool)

(assert (=> b!707542 (=> (not res!471472) (not e!398171))))

(assert (=> b!707542 (= res!471472 (is-Cons!13395 newAcc!49))))

(declare-fun b!707544 () Bool)

(declare-fun e!398170 () Bool)

(assert (=> b!707544 (= e!398170 (subseq!386 (t!19689 acc!652) (t!19689 newAcc!49)))))

(declare-fun d!96461 () Bool)

(declare-fun res!471473 () Bool)

(assert (=> d!96461 (=> res!471473 e!398172)))

(assert (=> d!96461 (= res!471473 (is-Nil!13396 acc!652))))

(assert (=> d!96461 (= (subseq!386 acc!652 newAcc!49) e!398172)))

(declare-fun b!707545 () Bool)

(declare-fun e!398169 () Bool)

(assert (=> b!707545 (= e!398169 (subseq!386 acc!652 (t!19689 newAcc!49)))))

(declare-fun b!707543 () Bool)

(assert (=> b!707543 (= e!398171 e!398169)))

(declare-fun res!471475 () Bool)

(assert (=> b!707543 (=> res!471475 e!398169)))

(assert (=> b!707543 (= res!471475 e!398170)))

(declare-fun res!471474 () Bool)

(assert (=> b!707543 (=> (not res!471474) (not e!398170))))

(assert (=> b!707543 (= res!471474 (= (h!14440 acc!652) (h!14440 newAcc!49)))))

(assert (= (and d!96461 (not res!471473)) b!707542))

(assert (= (and b!707542 res!471472) b!707543))

(assert (= (and b!707543 res!471474) b!707544))

(assert (= (and b!707543 (not res!471475)) b!707545))

(declare-fun m!665145 () Bool)

(assert (=> b!707544 m!665145))

(declare-fun m!665147 () Bool)

(assert (=> b!707545 m!665147))

(assert (=> b!707244 d!96461))

(declare-fun d!96469 () Bool)

(declare-fun res!471488 () Bool)

(declare-fun e!398185 () Bool)

(assert (=> d!96469 (=> res!471488 e!398185)))

(assert (=> d!96469 (= res!471488 (= (select (arr!19305 a!3591) from!2969) k!2824))))

(assert (=> d!96469 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!398185)))

(declare-fun b!707558 () Bool)

(declare-fun e!398186 () Bool)

(assert (=> b!707558 (= e!398185 e!398186)))

(declare-fun res!471489 () Bool)

(assert (=> b!707558 (=> (not res!471489) (not e!398186))))

(assert (=> b!707558 (= res!471489 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19688 a!3591)))))

(declare-fun b!707559 () Bool)

(assert (=> b!707559 (= e!398186 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!96469 (not res!471488)) b!707558))

(assert (= (and b!707558 res!471489) b!707559))

(assert (=> d!96469 m!664905))

(declare-fun m!665149 () Bool)

(assert (=> b!707559 m!665149))

(assert (=> b!707234 d!96469))

(declare-fun d!96471 () Bool)

(declare-fun res!471490 () Bool)

(declare-fun e!398187 () Bool)

(assert (=> d!96471 (=> res!471490 e!398187)))

(assert (=> d!96471 (= res!471490 (is-Nil!13396 ($colon$colon!496 acc!652 (select (arr!19305 a!3591) from!2969))))))

(assert (=> d!96471 (= (noDuplicate!1189 ($colon$colon!496 acc!652 (select (arr!19305 a!3591) from!2969))) e!398187)))

(declare-fun b!707560 () Bool)

(declare-fun e!398188 () Bool)

(assert (=> b!707560 (= e!398187 e!398188)))

(declare-fun res!471491 () Bool)

(assert (=> b!707560 (=> (not res!471491) (not e!398188))))

(assert (=> b!707560 (= res!471491 (not (contains!3942 (t!19689 ($colon$colon!496 acc!652 (select (arr!19305 a!3591) from!2969))) (h!14440 ($colon$colon!496 acc!652 (select (arr!19305 a!3591) from!2969))))))))

(declare-fun b!707561 () Bool)

(assert (=> b!707561 (= e!398188 (noDuplicate!1189 (t!19689 ($colon$colon!496 acc!652 (select (arr!19305 a!3591) from!2969)))))))

(assert (= (and d!96471 (not res!471490)) b!707560))

(assert (= (and b!707560 res!471491) b!707561))

(declare-fun m!665151 () Bool)

(assert (=> b!707560 m!665151))

(declare-fun m!665153 () Bool)

(assert (=> b!707561 m!665153))

(assert (=> b!707245 d!96471))

(declare-fun d!96473 () Bool)

(assert (=> d!96473 (= ($colon$colon!496 acc!652 (select (arr!19305 a!3591) from!2969)) (Cons!13395 (select (arr!19305 a!3591) from!2969) acc!652))))

(assert (=> b!707245 d!96473))

(declare-fun d!96475 () Bool)

(declare-fun lt!317977 () Bool)

(assert (=> d!96475 (= lt!317977 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!335 newAcc!49)))))

(declare-fun e!398193 () Bool)

(assert (=> d!96475 (= lt!317977 e!398193)))

(declare-fun res!471497 () Bool)

(assert (=> d!96475 (=> (not res!471497) (not e!398193))))

(assert (=> d!96475 (= res!471497 (is-Cons!13395 newAcc!49))))

(assert (=> d!96475 (= (contains!3942 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!317977)))

(declare-fun b!707566 () Bool)

(declare-fun e!398194 () Bool)

(assert (=> b!707566 (= e!398193 e!398194)))

(declare-fun res!471496 () Bool)

(assert (=> b!707566 (=> res!471496 e!398194)))

(assert (=> b!707566 (= res!471496 (= (h!14440 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!707567 () Bool)

(assert (=> b!707567 (= e!398194 (contains!3942 (t!19689 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= 