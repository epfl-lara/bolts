; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60394 () Bool)

(assert start!60394)

(declare-fun res!444978 () Bool)

(declare-fun e!386559 () Bool)

(assert (=> start!60394 (=> (not res!444978) (not e!386559))))

(declare-datatypes ((array!39397 0))(
  ( (array!39398 (arr!18887 (Array (_ BitVec 32) (_ BitVec 64))) (size!19251 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39397)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60394 (= res!444978 (and (bvslt (size!19251 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19251 a!3626))))))

(assert (=> start!60394 e!386559))

(assert (=> start!60394 true))

(declare-fun array_inv!14661 (array!39397) Bool)

(assert (=> start!60394 (array_inv!14661 a!3626)))

(declare-fun b!678394 () Bool)

(declare-fun res!444977 () Bool)

(assert (=> b!678394 (=> (not res!444977) (not e!386559))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678394 (= res!444977 (validKeyInArray!0 k!2843))))

(declare-fun b!678395 () Bool)

(declare-fun res!444981 () Bool)

(assert (=> b!678395 (=> (not res!444981) (not e!386559))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678395 (= res!444981 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19251 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678396 () Bool)

(declare-fun res!444986 () Bool)

(assert (=> b!678396 (=> (not res!444986) (not e!386559))))

(declare-datatypes ((List!12981 0))(
  ( (Nil!12978) (Cons!12977 (h!14022 (_ BitVec 64)) (t!19217 List!12981)) )
))
(declare-fun acc!681 () List!12981)

(declare-fun arrayNoDuplicates!0 (array!39397 (_ BitVec 32) List!12981) Bool)

(assert (=> b!678396 (= res!444986 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678397 () Bool)

(declare-fun res!444983 () Bool)

(assert (=> b!678397 (=> (not res!444983) (not e!386559))))

(declare-fun arrayContainsKey!0 (array!39397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678397 (= res!444983 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678398 () Bool)

(declare-fun res!444982 () Bool)

(assert (=> b!678398 (=> (not res!444982) (not e!386559))))

(declare-fun contains!3524 (List!12981 (_ BitVec 64)) Bool)

(assert (=> b!678398 (= res!444982 (not (contains!3524 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678399 () Bool)

(assert (=> b!678399 (= e!386559 (not (arrayContainsKey!0 (array!39398 (store (arr!18887 a!3626) i!1382 k!2843) (size!19251 a!3626)) k!2843 from!3004)))))

(declare-fun b!678400 () Bool)

(declare-fun e!386556 () Bool)

(assert (=> b!678400 (= e!386556 (not (contains!3524 acc!681 k!2843)))))

(declare-fun b!678401 () Bool)

(declare-fun e!386557 () Bool)

(assert (=> b!678401 (= e!386557 (contains!3524 acc!681 k!2843))))

(declare-fun b!678402 () Bool)

(declare-fun res!444979 () Bool)

(assert (=> b!678402 (=> (not res!444979) (not e!386559))))

(assert (=> b!678402 (= res!444979 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19251 a!3626))))))

(declare-fun b!678403 () Bool)

(declare-fun e!386560 () Bool)

(assert (=> b!678403 (= e!386560 e!386556)))

(declare-fun res!444976 () Bool)

(assert (=> b!678403 (=> (not res!444976) (not e!386556))))

(assert (=> b!678403 (= res!444976 (bvsle from!3004 i!1382))))

(declare-fun b!678404 () Bool)

(declare-fun res!444988 () Bool)

(assert (=> b!678404 (=> (not res!444988) (not e!386559))))

(declare-fun noDuplicate!771 (List!12981) Bool)

(assert (=> b!678404 (= res!444988 (noDuplicate!771 acc!681))))

(declare-fun b!678405 () Bool)

(declare-fun res!444985 () Bool)

(assert (=> b!678405 (=> (not res!444985) (not e!386559))))

(assert (=> b!678405 (= res!444985 e!386560)))

(declare-fun res!444987 () Bool)

(assert (=> b!678405 (=> res!444987 e!386560)))

(assert (=> b!678405 (= res!444987 e!386557)))

(declare-fun res!444980 () Bool)

(assert (=> b!678405 (=> (not res!444980) (not e!386557))))

(assert (=> b!678405 (= res!444980 (bvsgt from!3004 i!1382))))

(declare-fun b!678406 () Bool)

(declare-fun res!444984 () Bool)

(assert (=> b!678406 (=> (not res!444984) (not e!386559))))

(assert (=> b!678406 (= res!444984 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12978))))

(declare-fun b!678407 () Bool)

(declare-fun res!444989 () Bool)

(assert (=> b!678407 (=> (not res!444989) (not e!386559))))

(assert (=> b!678407 (= res!444989 (not (contains!3524 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60394 res!444978) b!678404))

(assert (= (and b!678404 res!444988) b!678407))

(assert (= (and b!678407 res!444989) b!678398))

(assert (= (and b!678398 res!444982) b!678405))

(assert (= (and b!678405 res!444980) b!678401))

(assert (= (and b!678405 (not res!444987)) b!678403))

(assert (= (and b!678403 res!444976) b!678400))

(assert (= (and b!678405 res!444985) b!678406))

(assert (= (and b!678406 res!444984) b!678396))

(assert (= (and b!678396 res!444986) b!678402))

(assert (= (and b!678402 res!444979) b!678394))

(assert (= (and b!678394 res!444977) b!678397))

(assert (= (and b!678397 res!444983) b!678395))

(assert (= (and b!678395 res!444981) b!678399))

(declare-fun m!644159 () Bool)

(assert (=> b!678407 m!644159))

(declare-fun m!644161 () Bool)

(assert (=> b!678394 m!644161))

(declare-fun m!644163 () Bool)

(assert (=> b!678406 m!644163))

(declare-fun m!644165 () Bool)

(assert (=> b!678398 m!644165))

(declare-fun m!644167 () Bool)

(assert (=> b!678397 m!644167))

(declare-fun m!644169 () Bool)

(assert (=> b!678404 m!644169))

(declare-fun m!644171 () Bool)

(assert (=> b!678400 m!644171))

(assert (=> b!678401 m!644171))

(declare-fun m!644173 () Bool)

(assert (=> b!678399 m!644173))

(declare-fun m!644175 () Bool)

(assert (=> b!678399 m!644175))

(declare-fun m!644177 () Bool)

(assert (=> b!678396 m!644177))

(declare-fun m!644179 () Bool)

(assert (=> start!60394 m!644179))

(push 1)

(assert (not start!60394))

(assert (not b!678394))

(assert (not b!678397))

(assert (not b!678407))

(assert (not b!678398))

(assert (not b!678396))

(assert (not b!678406))

(assert (not b!678401))

(assert (not b!678400))

(assert (not b!678399))

(assert (not b!678404))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93299 () Bool)

(declare-fun res!444994 () Bool)

(declare-fun e!386565 () Bool)

(assert (=> d!93299 (=> res!444994 e!386565)))

(assert (=> d!93299 (= res!444994 (= (select (arr!18887 (array!39398 (store (arr!18887 a!3626) i!1382 k!2843) (size!19251 a!3626))) from!3004) k!2843))))

(assert (=> d!93299 (= (arrayContainsKey!0 (array!39398 (store (arr!18887 a!3626) i!1382 k!2843) (size!19251 a!3626)) k!2843 from!3004) e!386565)))

(declare-fun b!678412 () Bool)

(declare-fun e!386566 () Bool)

(assert (=> b!678412 (= e!386565 e!386566)))

(declare-fun res!444995 () Bool)

(assert (=> b!678412 (=> (not res!444995) (not e!386566))))

(assert (=> b!678412 (= res!444995 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19251 (array!39398 (store (arr!18887 a!3626) i!1382 k!2843) (size!19251 a!3626)))))))

(declare-fun b!678413 () Bool)

(assert (=> b!678413 (= e!386566 (arrayContainsKey!0 (array!39398 (store (arr!18887 a!3626) i!1382 k!2843) (size!19251 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93299 (not res!444994)) b!678412))

(assert (= (and b!678412 res!444995) b!678413))

(declare-fun m!644181 () Bool)

(assert (=> d!93299 m!644181))

(declare-fun m!644183 () Bool)

(assert (=> b!678413 m!644183))

(assert (=> b!678399 d!93299))

(declare-fun d!93301 () Bool)

(assert (=> d!93301 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!678394 d!93301))

(declare-fun d!93303 () Bool)

(assert (=> d!93303 (= (array_inv!14661 a!3626) (bvsge (size!19251 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60394 d!93303))

(declare-fun d!93305 () Bool)

(declare-fun res!445018 () Bool)

(declare-fun e!386595 () Bool)

(assert (=> d!93305 (=> res!445018 e!386595)))

(assert (=> d!93305 (= res!445018 (is-Nil!12978 acc!681))))

(assert (=> d!93305 (= (noDuplicate!771 acc!681) e!386595)))

(declare-fun b!678448 () Bool)

(declare-fun e!386596 () Bool)

(assert (=> b!678448 (= e!386595 e!386596)))

(declare-fun res!445019 () Bool)

(assert (=> b!678448 (=> (not res!445019) (not e!386596))))

(assert (=> b!678448 (= res!445019 (not (contains!3524 (t!19217 acc!681) (h!14022 acc!681))))))

(declare-fun b!678449 () Bool)

(assert (=> b!678449 (= e!386596 (noDuplicate!771 (t!19217 acc!681)))))

(assert (= (and d!93305 (not res!445018)) b!678448))

(assert (= (and b!678448 res!445019) b!678449))

(declare-fun m!644201 () Bool)

(assert (=> b!678448 m!644201))

(declare-fun m!644203 () Bool)

(assert (=> b!678449 m!644203))

(assert (=> b!678404 d!93305))

(declare-fun d!93311 () Bool)

(declare-fun lt!312839 () Bool)

(declare-fun content!263 (List!12981) (Set (_ BitVec 64)))

(assert (=> d!93311 (= lt!312839 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!263 acc!681)))))

(declare-fun e!386611 () Bool)

(assert (=> d!93311 (= lt!312839 e!386611)))

(declare-fun res!445035 () Bool)

(assert (=> d!93311 (=> (not res!445035) (not e!386611))))

(assert (=> d!93311 (= res!445035 (is-Cons!12977 acc!681))))

(assert (=> d!93311 (= (contains!3524 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!312839)))

(declare-fun b!678464 () Bool)

(declare-fun e!386612 () Bool)

(assert (=> b!678464 (= e!386611 e!386612)))

(declare-fun res!445034 () Bool)

(assert (=> b!678464 (=> res!445034 e!386612)))

(assert (=> b!678464 (= res!445034 (= (h!14022 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!678465 () Bool)

(assert (=> b!678465 (= e!386612 (contains!3524 (t!19217 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93311 res!445035) b!678464))

(assert (= (and b!678464 (not res!445034)) b!678465))

(declare-fun m!644209 () Bool)

(assert (=> d!93311 m!644209))

(declare-fun m!644213 () Bool)

(assert (=> d!93311 m!644213))

(declare-fun m!644217 () Bool)

(assert (=> b!678465 m!644217))

(assert (=> b!678398 d!93311))

(declare-fun d!93315 () Bool)

(declare-fun res!445041 () Bool)

(declare-fun e!386618 () Bool)

(assert (=> d!93315 (=> res!445041 e!386618)))

(assert (=> d!93315 (= res!445041 (= (select (arr!18887 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93315 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!386618)))

(declare-fun b!678468 () Bool)

(declare-fun e!386619 () Bool)

(assert (=> b!678468 (= e!386618 e!386619)))

(declare-fun res!445043 () Bool)

(assert (=> b!678468 (=> (not res!445043) (not e!386619))))

(assert (=> b!678468 (= res!445043 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19251 a!3626)))))

(declare-fun b!678469 () Bool)

(assert (=> b!678469 (= e!386619 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93315 (not res!445041)) b!678468))

(assert (= (and b!678468 res!445043) b!678469))

(declare-fun m!644221 () Bool)

(assert (=> d!93315 m!644221))

(declare-fun m!644227 () Bool)

(assert (=> b!678469 m!644227))

(assert (=> b!678397 d!93315))

(declare-fun d!93321 () Bool)

(declare-fun lt!312842 () Bool)

(assert (=> d!93321 (= lt!312842 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!263 acc!681)))))

(declare-fun e!386623 () Bool)

(assert (=> d!93321 (= lt!312842 e!386623)))

(declare-fun res!445047 () Bool)

(assert (=> d!93321 (=> (not res!445047) (not e!386623))))

(assert (=> d!93321 (= res!445047 (is-Cons!12977 acc!681))))

(assert (=> d!93321 (= (contains!3524 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!312842)))

(declare-fun b!678476 () Bool)

(declare-fun e!386624 () Bool)

(assert (=> b!678476 (= e!386623 e!386624)))

(declare-fun res!445046 () Bool)

(assert (=> b!678476 (=> res!445046 e!386624)))

(assert (=> b!678476 (= res!445046 (= (h!14022 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!678477 () Bool)

(assert (=> b!678477 (= e!386624 (contains!3524 (t!19217 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93321 res!445047) b!678476))

(assert (= (and b!678476 (not res!445046)) b!678477))

(assert (=> d!93321 m!644209))

(declare-fun m!644229 () Bool)

(assert (=> d!93321 m!644229))

(declare-fun m!644231 () Bool)

(assert (=> b!678477 m!644231))

(assert (=> b!678407 d!93321))

(declare-fun d!93323 () Bool)

(declare-fun lt!312843 () Bool)

(assert (=> d!93323 (= lt!312843 (member k!2843 (content!263 acc!681)))))

(declare-fun e!386625 () Bool)

(assert (=> d!93323 (= lt!312843 e!386625)))

(declare-fun res!445049 () Bool)

(assert (=> d!93323 (=> (not res!445049) (not e!386625))))

(assert (=> d!93323 (= res!445049 (is-Cons!12977 acc!681))))

(assert (=> d!93323 (= (contains!3524 acc!681 k!2843) lt!312843)))

(declare-fun b!678478 () Bool)

(declare-fun e!386626 () Bool)

(assert (=> b!678478 (= e!386625 e!386626)))

(declare-fun res!445048 () Bool)

(assert (=> b!678478 (=> res!445048 e!386626)))

(assert (=> b!678478 (= res!445048 (= (h!14022 acc!681) k!2843))))

(declare-fun b!678479 () Bool)

(assert (=> b!678479 (= e!386626 (contains!3524 (t!19217 acc!681) k!2843))))

(assert (= (and d!93323 res!445049) b!678478))

(assert (= (and b!678478 (not res!445048)) b!678479))

(assert (=> d!93323 m!644209))

(declare-fun m!644233 () Bool)

(assert (=> d!93323 m!644233))

(declare-fun m!644235 () Bool)

(assert (=> b!678479 m!644235))

(assert (=> b!678401 d!93323))

(declare-fun d!93325 () Bool)

(declare-fun res!445085 () Bool)

(declare-fun e!386662 () Bool)

(assert (=> d!93325 (=> res!445085 e!386662)))

(assert (=> d!93325 (= res!445085 (bvsge from!3004 (size!19251 a!3626)))))

(assert (=> d!93325 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!386662)))

(declare-fun b!678517 () Bool)

(declare-fun e!386664 () Bool)

(declare-fun call!33921 () Bool)

(assert (=> b!678517 (= e!386664 call!33921)))

(declare-fun e!386666 () Bool)

(declare-fun b!678518 () Bool)

(assert (=> b!678518 (= e!386666 (contains!3524 acc!681 (select (arr!18887 a!3626) from!3004)))))

(declare-fun b!678519 () Bool)

