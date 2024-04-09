; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63110 () Bool)

(assert start!63110)

(declare-fun b!710786 () Bool)

(declare-fun res!474343 () Bool)

(declare-fun e!399900 () Bool)

(assert (=> b!710786 (=> (not res!474343) (not e!399900))))

(declare-datatypes ((List!13425 0))(
  ( (Nil!13422) (Cons!13421 (h!14466 (_ BitVec 64)) (t!19736 List!13425)) )
))
(declare-fun acc!652 () List!13425)

(declare-fun contains!3968 (List!13425 (_ BitVec 64)) Bool)

(assert (=> b!710786 (= res!474343 (not (contains!3968 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710787 () Bool)

(declare-fun res!474324 () Bool)

(assert (=> b!710787 (=> (not res!474324) (not e!399900))))

(declare-datatypes ((array!40378 0))(
  ( (array!40379 (arr!19331 (Array (_ BitVec 32) (_ BitVec 64))) (size!19732 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40378)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!710787 (= res!474324 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!710788 () Bool)

(declare-fun res!474330 () Bool)

(declare-fun e!399898 () Bool)

(assert (=> b!710788 (=> (not res!474330) (not e!399898))))

(declare-fun lt!318341 () List!13425)

(declare-fun lt!318340 () List!13425)

(declare-fun subseq!412 (List!13425 List!13425) Bool)

(assert (=> b!710788 (= res!474330 (subseq!412 lt!318341 lt!318340))))

(declare-fun b!710789 () Bool)

(declare-fun res!474341 () Bool)

(assert (=> b!710789 (=> (not res!474341) (not e!399900))))

(declare-fun noDuplicate!1215 (List!13425) Bool)

(assert (=> b!710789 (= res!474341 (noDuplicate!1215 acc!652))))

(declare-fun b!710790 () Bool)

(declare-fun res!474328 () Bool)

(assert (=> b!710790 (=> (not res!474328) (not e!399900))))

(declare-fun newAcc!49 () List!13425)

(assert (=> b!710790 (= res!474328 (subseq!412 acc!652 newAcc!49))))

(declare-fun b!710791 () Bool)

(declare-fun res!474335 () Bool)

(assert (=> b!710791 (=> (not res!474335) (not e!399898))))

(declare-fun arrayNoDuplicates!0 (array!40378 (_ BitVec 32) List!13425) Bool)

(assert (=> b!710791 (= res!474335 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318341))))

(declare-fun res!474332 () Bool)

(assert (=> start!63110 (=> (not res!474332) (not e!399900))))

(assert (=> start!63110 (= res!474332 (and (bvslt (size!19732 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19732 a!3591))))))

(assert (=> start!63110 e!399900))

(assert (=> start!63110 true))

(declare-fun array_inv!15105 (array!40378) Bool)

(assert (=> start!63110 (array_inv!15105 a!3591)))

(declare-fun b!710792 () Bool)

(declare-fun res!474339 () Bool)

(assert (=> b!710792 (=> (not res!474339) (not e!399898))))

(assert (=> b!710792 (= res!474339 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!710793 () Bool)

(declare-fun res!474340 () Bool)

(assert (=> b!710793 (=> (not res!474340) (not e!399900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!710793 (= res!474340 (validKeyInArray!0 (select (arr!19331 a!3591) from!2969)))))

(declare-fun b!710794 () Bool)

(declare-fun res!474347 () Bool)

(assert (=> b!710794 (=> (not res!474347) (not e!399900))))

(assert (=> b!710794 (= res!474347 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19732 a!3591)))))

(declare-fun b!710795 () Bool)

(assert (=> b!710795 (= e!399898 (not (contains!3968 lt!318340 k!2824)))))

(declare-fun b!710796 () Bool)

(declare-fun res!474342 () Bool)

(assert (=> b!710796 (=> (not res!474342) (not e!399900))))

(assert (=> b!710796 (= res!474342 (contains!3968 newAcc!49 k!2824))))

(declare-fun b!710797 () Bool)

(declare-fun res!474326 () Bool)

(assert (=> b!710797 (=> (not res!474326) (not e!399900))))

(declare-fun -!377 (List!13425 (_ BitVec 64)) List!13425)

(assert (=> b!710797 (= res!474326 (= (-!377 newAcc!49 k!2824) acc!652))))

(declare-fun b!710798 () Bool)

(declare-fun res!474336 () Bool)

(assert (=> b!710798 (=> (not res!474336) (not e!399898))))

(assert (=> b!710798 (= res!474336 (not (contains!3968 lt!318341 k!2824)))))

(declare-fun b!710799 () Bool)

(declare-fun res!474334 () Bool)

(assert (=> b!710799 (=> (not res!474334) (not e!399900))))

(assert (=> b!710799 (= res!474334 (validKeyInArray!0 k!2824))))

(declare-fun b!710800 () Bool)

(declare-fun res!474338 () Bool)

(assert (=> b!710800 (=> (not res!474338) (not e!399900))))

(assert (=> b!710800 (= res!474338 (not (contains!3968 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710801 () Bool)

(declare-fun res!474348 () Bool)

(assert (=> b!710801 (=> (not res!474348) (not e!399898))))

(assert (=> b!710801 (= res!474348 (not (contains!3968 lt!318341 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710802 () Bool)

(declare-fun res!474337 () Bool)

(assert (=> b!710802 (=> (not res!474337) (not e!399898))))

(assert (=> b!710802 (= res!474337 (not (contains!3968 lt!318341 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710803 () Bool)

(declare-fun res!474327 () Bool)

(assert (=> b!710803 (=> (not res!474327) (not e!399898))))

(assert (=> b!710803 (= res!474327 (noDuplicate!1215 lt!318340))))

(declare-fun b!710804 () Bool)

(assert (=> b!710804 (= e!399900 e!399898)))

(declare-fun res!474345 () Bool)

(assert (=> b!710804 (=> (not res!474345) (not e!399898))))

(assert (=> b!710804 (= res!474345 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!522 (List!13425 (_ BitVec 64)) List!13425)

(assert (=> b!710804 (= lt!318340 ($colon$colon!522 newAcc!49 (select (arr!19331 a!3591) from!2969)))))

(assert (=> b!710804 (= lt!318341 ($colon$colon!522 acc!652 (select (arr!19331 a!3591) from!2969)))))

(declare-fun b!710805 () Bool)

(declare-fun res!474329 () Bool)

(assert (=> b!710805 (=> (not res!474329) (not e!399900))))

(assert (=> b!710805 (= res!474329 (not (contains!3968 acc!652 k!2824)))))

(declare-fun b!710806 () Bool)

(declare-fun res!474346 () Bool)

(assert (=> b!710806 (=> (not res!474346) (not e!399900))))

(assert (=> b!710806 (= res!474346 (noDuplicate!1215 newAcc!49))))

(declare-fun b!710807 () Bool)

(declare-fun res!474331 () Bool)

(assert (=> b!710807 (=> (not res!474331) (not e!399898))))

(assert (=> b!710807 (= res!474331 (noDuplicate!1215 lt!318341))))

(declare-fun b!710808 () Bool)

(declare-fun res!474333 () Bool)

(assert (=> b!710808 (=> (not res!474333) (not e!399900))))

(assert (=> b!710808 (= res!474333 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!710809 () Bool)

(declare-fun res!474344 () Bool)

(assert (=> b!710809 (=> (not res!474344) (not e!399900))))

(assert (=> b!710809 (= res!474344 (not (contains!3968 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!710810 () Bool)

(declare-fun res!474325 () Bool)

(assert (=> b!710810 (=> (not res!474325) (not e!399900))))

(assert (=> b!710810 (= res!474325 (not (contains!3968 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63110 res!474332) b!710789))

(assert (= (and b!710789 res!474341) b!710806))

(assert (= (and b!710806 res!474346) b!710786))

(assert (= (and b!710786 res!474343) b!710809))

(assert (= (and b!710809 res!474344) b!710787))

(assert (= (and b!710787 res!474324) b!710805))

(assert (= (and b!710805 res!474329) b!710799))

(assert (= (and b!710799 res!474334) b!710808))

(assert (= (and b!710808 res!474333) b!710790))

(assert (= (and b!710790 res!474328) b!710796))

(assert (= (and b!710796 res!474342) b!710797))

(assert (= (and b!710797 res!474326) b!710800))

(assert (= (and b!710800 res!474338) b!710810))

(assert (= (and b!710810 res!474325) b!710794))

(assert (= (and b!710794 res!474347) b!710793))

(assert (= (and b!710793 res!474340) b!710804))

(assert (= (and b!710804 res!474345) b!710807))

(assert (= (and b!710807 res!474331) b!710803))

(assert (= (and b!710803 res!474327) b!710802))

(assert (= (and b!710802 res!474337) b!710801))

(assert (= (and b!710801 res!474348) b!710792))

(assert (= (and b!710792 res!474339) b!710798))

(assert (= (and b!710798 res!474336) b!710791))

(assert (= (and b!710791 res!474335) b!710788))

(assert (= (and b!710788 res!474330) b!710795))

(declare-fun m!667923 () Bool)

(assert (=> b!710807 m!667923))

(declare-fun m!667925 () Bool)

(assert (=> b!710802 m!667925))

(declare-fun m!667927 () Bool)

(assert (=> b!710800 m!667927))

(declare-fun m!667929 () Bool)

(assert (=> b!710805 m!667929))

(declare-fun m!667931 () Bool)

(assert (=> b!710803 m!667931))

(declare-fun m!667933 () Bool)

(assert (=> b!710797 m!667933))

(declare-fun m!667935 () Bool)

(assert (=> b!710801 m!667935))

(declare-fun m!667937 () Bool)

(assert (=> b!710798 m!667937))

(declare-fun m!667939 () Bool)

(assert (=> b!710796 m!667939))

(declare-fun m!667941 () Bool)

(assert (=> b!710788 m!667941))

(declare-fun m!667943 () Bool)

(assert (=> b!710791 m!667943))

(declare-fun m!667945 () Bool)

(assert (=> b!710799 m!667945))

(declare-fun m!667947 () Bool)

(assert (=> b!710808 m!667947))

(declare-fun m!667949 () Bool)

(assert (=> b!710792 m!667949))

(declare-fun m!667951 () Bool)

(assert (=> b!710789 m!667951))

(declare-fun m!667953 () Bool)

(assert (=> b!710786 m!667953))

(declare-fun m!667955 () Bool)

(assert (=> b!710806 m!667955))

(declare-fun m!667957 () Bool)

(assert (=> b!710787 m!667957))

(declare-fun m!667959 () Bool)

(assert (=> b!710810 m!667959))

(declare-fun m!667961 () Bool)

(assert (=> b!710790 m!667961))

(declare-fun m!667963 () Bool)

(assert (=> b!710793 m!667963))

(assert (=> b!710793 m!667963))

(declare-fun m!667965 () Bool)

(assert (=> b!710793 m!667965))

(declare-fun m!667967 () Bool)

(assert (=> b!710795 m!667967))

(declare-fun m!667969 () Bool)

(assert (=> start!63110 m!667969))

(declare-fun m!667971 () Bool)

(assert (=> b!710809 m!667971))

(assert (=> b!710804 m!667963))

(assert (=> b!710804 m!667963))

(declare-fun m!667973 () Bool)

(assert (=> b!710804 m!667973))

(assert (=> b!710804 m!667963))

(declare-fun m!667975 () Bool)

(assert (=> b!710804 m!667975))

(push 1)

(assert (not b!710803))

(assert (not b!710808))

(assert (not b!710799))

(assert (not b!710791))

(assert (not b!710800))

(assert (not b!710810))

(assert (not start!63110))

(assert (not b!710790))

(assert (not b!710792))

(assert (not b!710798))

(assert (not b!710806))

(assert (not b!710789))

(assert (not b!710809))

(assert (not b!710804))

(assert (not b!710788))

(assert (not b!710786))

(assert (not b!710797))

(assert (not b!710805))

(assert (not b!710793))

(assert (not b!710795))

(assert (not b!710801))

(assert (not b!710787))

(assert (not b!710796))

(assert (not b!710802))

(assert (not b!710807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!97433 () Bool)

(declare-fun res!474378 () Bool)

(declare-fun e!399937 () Bool)

(assert (=> d!97433 (=> res!474378 e!399937)))

(assert (=> d!97433 (= res!474378 (is-Nil!13422 lt!318340))))

(assert (=> d!97433 (= (noDuplicate!1215 lt!318340) e!399937)))

(declare-fun b!710852 () Bool)

(declare-fun e!399938 () Bool)

(assert (=> b!710852 (= e!399937 e!399938)))

(declare-fun res!474379 () Bool)

(assert (=> b!710852 (=> (not res!474379) (not e!399938))))

(assert (=> b!710852 (= res!474379 (not (contains!3968 (t!19736 lt!318340) (h!14466 lt!318340))))))

(declare-fun b!710853 () Bool)

(assert (=> b!710853 (= e!399938 (noDuplicate!1215 (t!19736 lt!318340)))))

(assert (= (and d!97433 (not res!474378)) b!710852))

(assert (= (and b!710852 res!474379) b!710853))

(declare-fun m!668021 () Bool)

(assert (=> b!710852 m!668021))

(declare-fun m!668023 () Bool)

(assert (=> b!710853 m!668023))

(assert (=> b!710803 d!97433))

(declare-fun d!97441 () Bool)

(assert (=> d!97441 (= ($colon$colon!522 newAcc!49 (select (arr!19331 a!3591) from!2969)) (Cons!13421 (select (arr!19331 a!3591) from!2969) newAcc!49))))

(assert (=> b!710804 d!97441))

(declare-fun d!97443 () Bool)

(assert (=> d!97443 (= ($colon$colon!522 acc!652 (select (arr!19331 a!3591) from!2969)) (Cons!13421 (select (arr!19331 a!3591) from!2969) acc!652))))

(assert (=> b!710804 d!97443))

(declare-fun d!97445 () Bool)

(declare-fun lt!318355 () Bool)

(declare-fun content!356 (List!13425) (Set (_ BitVec 64)))

(assert (=> d!97445 (= lt!318355 (member k!2824 (content!356 acc!652)))))

(declare-fun e!399970 () Bool)

(assert (=> d!97445 (= lt!318355 e!399970)))

(declare-fun res!474410 () Bool)

(assert (=> d!97445 (=> (not res!474410) (not e!399970))))

(assert (=> d!97445 (= res!474410 (is-Cons!13421 acc!652))))

(assert (=> d!97445 (= (contains!3968 acc!652 k!2824) lt!318355)))

(declare-fun b!710884 () Bool)

(declare-fun e!399969 () Bool)

(assert (=> b!710884 (= e!399970 e!399969)))

(declare-fun res!474411 () Bool)

(assert (=> b!710884 (=> res!474411 e!399969)))

(assert (=> b!710884 (= res!474411 (= (h!14466 acc!652) k!2824))))

(declare-fun b!710885 () Bool)

(assert (=> b!710885 (= e!399969 (contains!3968 (t!19736 acc!652) k!2824))))

(assert (= (and d!97445 res!474410) b!710884))

(assert (= (and b!710884 (not res!474411)) b!710885))

(declare-fun m!668047 () Bool)

(assert (=> d!97445 m!668047))

(declare-fun m!668049 () Bool)

(assert (=> d!97445 m!668049))

(declare-fun m!668051 () Bool)

(assert (=> b!710885 m!668051))

(assert (=> b!710805 d!97445))

(declare-fun d!97459 () Bool)

(declare-fun lt!318357 () Bool)

(assert (=> d!97459 (= lt!318357 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!356 lt!318341)))))

(declare-fun e!399974 () Bool)

(assert (=> d!97459 (= lt!318357 e!399974)))

(declare-fun res!474414 () Bool)

(assert (=> d!97459 (=> (not res!474414) (not e!399974))))

(assert (=> d!97459 (= res!474414 (is-Cons!13421 lt!318341))))

(assert (=> d!97459 (= (contains!3968 lt!318341 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318357)))

(declare-fun b!710888 () Bool)

(declare-fun e!399973 () Bool)

(assert (=> b!710888 (= e!399974 e!399973)))

(declare-fun res!474415 () Bool)

(assert (=> b!710888 (=> res!474415 e!399973)))

(assert (=> b!710888 (= res!474415 (= (h!14466 lt!318341) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710889 () Bool)

(assert (=> b!710889 (= e!399973 (contains!3968 (t!19736 lt!318341) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97459 res!474414) b!710888))

(assert (= (and b!710888 (not res!474415)) b!710889))

(declare-fun m!668057 () Bool)

(assert (=> d!97459 m!668057))

(declare-fun m!668059 () Bool)

(assert (=> d!97459 m!668059))

(declare-fun m!668061 () Bool)

(assert (=> b!710889 m!668061))

(assert (=> b!710801 d!97459))

(declare-fun d!97463 () Bool)

(declare-fun lt!318359 () Bool)

(assert (=> d!97463 (= lt!318359 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!356 lt!318341)))))

(declare-fun e!399978 () Bool)

(assert (=> d!97463 (= lt!318359 e!399978)))

(declare-fun res!474418 () Bool)

(assert (=> d!97463 (=> (not res!474418) (not e!399978))))

(assert (=> d!97463 (= res!474418 (is-Cons!13421 lt!318341))))

(assert (=> d!97463 (= (contains!3968 lt!318341 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318359)))

(declare-fun b!710892 () Bool)

(declare-fun e!399977 () Bool)

(assert (=> b!710892 (= e!399978 e!399977)))

(declare-fun res!474419 () Bool)

(assert (=> b!710892 (=> res!474419 e!399977)))

(assert (=> b!710892 (= res!474419 (= (h!14466 lt!318341) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710893 () Bool)

(assert (=> b!710893 (= e!399977 (contains!3968 (t!19736 lt!318341) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97463 res!474418) b!710892))

(assert (= (and b!710892 (not res!474419)) b!710893))

(assert (=> d!97463 m!668057))

(declare-fun m!668067 () Bool)

(assert (=> d!97463 m!668067))

(declare-fun m!668069 () Bool)

(assert (=> b!710893 m!668069))

(assert (=> b!710802 d!97463))

(declare-fun d!97467 () Bool)

(declare-fun res!474436 () Bool)

(declare-fun e!400000 () Bool)

(assert (=> d!97467 (=> res!474436 e!400000)))

(assert (=> d!97467 (= res!474436 (= (select (arr!19331 a!3591) from!2969) k!2824))))

(assert (=> d!97467 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!400000)))

(declare-fun b!710918 () Bool)

(declare-fun e!400001 () Bool)

(assert (=> b!710918 (= e!400000 e!400001)))

(declare-fun res!474437 () Bool)

(assert (=> b!710918 (=> (not res!474437) (not e!400001))))

(assert (=> b!710918 (= res!474437 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19732 a!3591)))))

(declare-fun b!710919 () Bool)

(assert (=> b!710919 (= e!400001 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97467 (not res!474436)) b!710918))

(assert (= (and b!710918 res!474437) b!710919))

(assert (=> d!97467 m!667963))

(declare-fun m!668083 () Bool)

(assert (=> b!710919 m!668083))

(assert (=> b!710787 d!97467))

(declare-fun d!97475 () Bool)

(declare-fun res!474460 () Bool)

(declare-fun e!400028 () Bool)

(assert (=> d!97475 (=> res!474460 e!400028)))

(assert (=> d!97475 (= res!474460 (is-Nil!13422 lt!318341))))

(assert (=> d!97475 (= (subseq!412 lt!318341 lt!318340) e!400028)))

(declare-fun b!710946 () Bool)

(declare-fun e!400025 () Bool)

(declare-fun e!400027 () Bool)

(assert (=> b!710946 (= e!400025 e!400027)))

(declare-fun res!474461 () Bool)

(assert (=> b!710946 (=> res!474461 e!400027)))

(declare-fun e!400026 () Bool)

(assert (=> b!710946 (= res!474461 e!400026)))

(declare-fun res!474459 () Bool)

(assert (=> b!710946 (=> (not res!474459) (not e!400026))))

(assert (=> b!710946 (= res!474459 (= (h!14466 lt!318341) (h!14466 lt!318340)))))

(declare-fun b!710945 () Bool)

(assert (=> b!710945 (= e!400028 e!400025)))

(declare-fun res!474462 () Bool)

(assert (=> b!710945 (=> (not res!474462) (not e!400025))))

(assert (=> b!710945 (= res!474462 (is-Cons!13421 lt!318340))))

(declare-fun b!710948 () Bool)

(assert (=> b!710948 (= e!400027 (subseq!412 lt!318341 (t!19736 lt!318340)))))

(declare-fun b!710947 () Bool)

(assert (=> b!710947 (= e!400026 (subseq!412 (t!19736 lt!318341) (t!19736 lt!318340)))))

(assert (= (and d!97475 (not res!474460)) b!710945))

(assert (= (and b!710945 res!474462) b!710946))

(assert (= (and b!710946 res!474459) b!710947))

(assert (= (and b!710946 (not res!474461)) b!710948))

(declare-fun m!668103 () Bool)

(assert (=> b!710948 m!668103))

(declare-fun m!668105 () Bool)

(assert (=> b!710947 m!668105))

(assert (=> b!710788 d!97475))

(declare-fun d!97487 () Bool)

(declare-fun lt!318365 () Bool)

(assert (=> d!97487 (= lt!318365 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!356 acc!652)))))

(declare-fun e!400030 () Bool)

(assert (=> d!97487 (= lt!318365 e!400030)))

(declare-fun res!474463 () Bool)

(assert (=> d!97487 (=> (not res!474463) (not e!400030))))

(assert (=> d!97487 (= res!474463 (is-Cons!13421 acc!652))))

(assert (=> d!97487 (= (contains!3968 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318365)))

(declare-fun b!710949 () Bool)

(declare-fun e!400029 () Bool)

(assert (=> b!710949 (= e!400030 e!400029)))

(declare-fun res!474464 () Bool)

(assert (=> b!710949 (=> res!474464 e!400029)))

(assert (=> b!710949 (= res!474464 (= (h!14466 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710950 () Bool)

(assert (=> b!710950 (= e!400029 (contains!3968 (t!19736 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97487 res!474463) b!710949))

(assert (= (and b!710949 (not res!474464)) b!710950))

(assert (=> d!97487 m!668047))

(declare-fun m!668107 () Bool)

(assert (=> d!97487 m!668107))

(declare-fun m!668109 () Bool)

(assert (=> b!710950 m!668109))

(assert (=> b!710809 d!97487))

(declare-fun d!97489 () Bool)

(declare-fun lt!318366 () Bool)

(assert (=> d!97489 (= lt!318366 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!356 newAcc!49)))))

(declare-fun e!400032 () Bool)

(assert (=> d!97489 (= lt!318366 e!400032)))

(declare-fun res!474465 () Bool)

(assert (=> d!97489 (=> (not res!474465) (not e!400032))))

(assert (=> d!97489 (= res!474465 (is-Cons!13421 newAcc!49))))

(assert (=> d!97489 (= (contains!3968 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318366)))

(declare-fun b!710951 () Bool)

(declare-fun e!400031 () Bool)

(assert (=> b!710951 (= e!400032 e!400031)))

(declare-fun res!474466 () Bool)

(assert (=> b!710951 (=> res!474466 e!400031)))

(assert (=> b!710951 (= res!474466 (= (h!14466 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710952 () Bool)

(assert (=> b!710952 (= e!400031 (contains!3968 (t!19736 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97489 res!474465) b!710951))

(assert (= (and b!710951 (not res!474466)) b!710952))

(declare-fun m!668111 () Bool)

(assert (=> d!97489 m!668111))

(declare-fun m!668113 () Bool)

(assert (=> d!97489 m!668113))

(declare-fun m!668115 () Bool)

(assert (=> b!710952 m!668115))

(assert (=> b!710810 d!97489))

(declare-fun d!97491 () Bool)

(declare-fun res!474477 () Bool)

(declare-fun e!400043 () Bool)

(assert (=> d!97491 (=> res!474477 e!400043)))

(assert (=> d!97491 (= res!474477 (is-Nil!13422 acc!652))))

(assert (=> d!97491 (= (noDuplicate!1215 acc!652) e!400043)))

(declare-fun b!710963 () Bool)

(declare-fun e!400044 () Bool)

(assert (=> b!710963 (= e!400043 e!400044)))

(declare-fun res!474478 () Bool)

(assert (=> b!710963 (=> (not res!474478) (not e!400044))))

(assert (=> b!710963 (= res!474478 (not (contains!3968 (t!19736 acc!652) (h!14466 acc!652))))))

(declare-fun b!710964 () Bool)

(assert (=> b!710964 (= e!400044 (noDuplicate!1215 (t!19736 acc!652)))))

(assert (= (and d!97491 (not res!474477)) b!710963))

(assert (= (and b!710963 res!474478) b!710964))

(declare-fun m!668119 () Bool)

(assert (=> b!710963 m!668119))

(declare-fun m!668123 () Bool)

(assert (=> b!710964 m!668123))

(assert (=> b!710789 d!97491))

(declare-fun d!97493 () Bool)

(declare-fun res!474479 () Bool)

(declare-fun e!400047 () Bool)

(assert (=> d!97493 (=> res!474479 e!400047)))

(assert (=> d!97493 (= res!474479 (is-Nil!13422 newAcc!49))))

(assert (=> d!97493 (= (noDuplicate!1215 newAcc!49) e!400047)))

(declare-fun b!710969 () Bool)

(declare-fun e!400048 () Bool)

(assert (=> b!710969 (= e!400047 e!400048)))

(declare-fun res!474480 () Bool)

(assert (=> b!710969 (=> (not res!474480) (not e!400048))))

(assert (=> b!710969 (= res!474480 (not (contains!3968 (t!19736 newAcc!49) (h!14466 newAcc!49))))))

(declare-fun b!710970 () Bool)

(assert (=> b!710970 (= e!400048 (noDuplicate!1215 (t!19736 newAcc!49)))))

(assert (= (and d!97493 (not res!474479)) b!710969))

(assert (= (and b!710969 res!474480) b!710970))

(declare-fun m!668125 () Bool)

(assert (=> b!710969 m!668125))

(declare-fun m!668127 () Bool)

(assert (=> b!710970 m!668127))

(assert (=> b!710806 d!97493))

(declare-fun d!97497 () Bool)

(declare-fun lt!318367 () Bool)

(assert (=> d!97497 (= lt!318367 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!356 acc!652)))))

(declare-fun e!400050 () Bool)

(assert (=> d!97497 (= lt!318367 e!400050)))

(declare-fun res!474481 () Bool)

(assert (=> d!97497 (=> (not res!474481) (not e!400050))))

(assert (=> d!97497 (= res!474481 (is-Cons!13421 acc!652))))

(assert (=> d!97497 (= (contains!3968 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318367)))

(declare-fun b!710971 () Bool)

(declare-fun e!400049 () Bool)

(assert (=> b!710971 (= e!400050 e!400049)))

(declare-fun res!474482 () Bool)

(assert (=> b!710971 (=> res!474482 e!400049)))

(assert (=> b!710971 (= res!474482 (= (h!14466 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!710972 () Bool)

(assert (=> b!710972 (= e!400049 (contains!3968 (t!19736 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97497 res!474481) b!710971))

(assert (= (and b!710971 (not res!474482)) b!710972))

(assert (=> d!97497 m!668047))

(declare-fun m!668129 () Bool)

(assert (=> d!97497 m!668129))

(declare-fun m!668131 () Bool)

(assert (=> b!710972 m!668131))

(assert (=> b!710786 d!97497))

(declare-fun d!97499 () Bool)

(declare-fun res!474483 () Bool)

(declare-fun e!400051 () Bool)

(assert (=> d!97499 (=> res!474483 e!400051)))

(assert (=> d!97499 (= res!474483 (is-Nil!13422 lt!318341))))

(assert (=> d!97499 (= (noDuplicate!1215 lt!318341) e!400051)))

(declare-fun b!710973 () Bool)

(declare-fun e!400052 () Bool)

(assert (=> b!710973 (= e!400051 e!400052)))

(declare-fun res!474484 () Bool)

(assert (=> b!710973 (=> (not res!474484) (not e!400052))))

(assert (=> b!710973 (= res!474484 (not (contains!3968 (t!19736 lt!318341) (h!14466 lt!318341))))))

(declare-fun b!710974 () Bool)

(assert (=> b!710974 (= e!400052 (noDuplicate!1215 (t!19736 lt!318341)))))

(assert (= (and d!97499 (not res!474483)) b!710973))

(assert (= (and b!710973 res!474484) b!710974))

