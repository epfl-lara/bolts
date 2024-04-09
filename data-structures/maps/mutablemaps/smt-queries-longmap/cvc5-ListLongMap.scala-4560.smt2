; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63604 () Bool)

(assert start!63604)

(declare-fun b!716082 () Bool)

(declare-fun res!479156 () Bool)

(declare-fun e!402060 () Bool)

(assert (=> b!716082 (=> (not res!479156) (not e!402060))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716082 (= res!479156 (validKeyInArray!0 k!2824))))

(declare-fun b!716083 () Bool)

(declare-fun res!479159 () Bool)

(assert (=> b!716083 (=> (not res!479159) (not e!402060))))

(declare-datatypes ((List!13486 0))(
  ( (Nil!13483) (Cons!13482 (h!14527 (_ BitVec 64)) (t!19809 List!13486)) )
))
(declare-fun acc!652 () List!13486)

(declare-fun contains!4029 (List!13486 (_ BitVec 64)) Bool)

(assert (=> b!716083 (= res!479159 (not (contains!4029 acc!652 k!2824)))))

(declare-fun b!716084 () Bool)

(declare-fun res!479158 () Bool)

(assert (=> b!716084 (=> (not res!479158) (not e!402060))))

(declare-fun noDuplicate!1276 (List!13486) Bool)

(assert (=> b!716084 (= res!479158 (noDuplicate!1276 acc!652))))

(declare-fun res!479151 () Bool)

(assert (=> start!63604 (=> (not res!479151) (not e!402060))))

(declare-datatypes ((array!40521 0))(
  ( (array!40522 (arr!19392 (Array (_ BitVec 32) (_ BitVec 64))) (size!19810 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40521)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63604 (= res!479151 (and (bvslt (size!19810 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19810 a!3591))))))

(assert (=> start!63604 e!402060))

(assert (=> start!63604 true))

(declare-fun array_inv!15166 (array!40521) Bool)

(assert (=> start!63604 (array_inv!15166 a!3591)))

(declare-fun b!716085 () Bool)

(declare-fun res!479154 () Bool)

(assert (=> b!716085 (=> (not res!479154) (not e!402060))))

(declare-fun arrayContainsKey!0 (array!40521 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716085 (= res!479154 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!716086 () Bool)

(declare-fun res!479147 () Bool)

(assert (=> b!716086 (=> (not res!479147) (not e!402060))))

(assert (=> b!716086 (= res!479147 (not (contains!4029 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!716087 () Bool)

(declare-fun res!479149 () Bool)

(assert (=> b!716087 (=> (not res!479149) (not e!402060))))

(assert (=> b!716087 (= res!479149 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19810 a!3591)))))

(declare-fun b!716088 () Bool)

(declare-fun res!479155 () Bool)

(assert (=> b!716088 (=> (not res!479155) (not e!402060))))

(assert (=> b!716088 (= res!479155 (not (contains!4029 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!716089 () Bool)

(declare-fun res!479153 () Bool)

(assert (=> b!716089 (=> (not res!479153) (not e!402060))))

(declare-fun newAcc!49 () List!13486)

(assert (=> b!716089 (= res!479153 (contains!4029 newAcc!49 k!2824))))

(declare-fun b!716090 () Bool)

(declare-fun res!479150 () Bool)

(assert (=> b!716090 (=> (not res!479150) (not e!402060))))

(declare-fun subseq!473 (List!13486 List!13486) Bool)

(assert (=> b!716090 (= res!479150 (subseq!473 acc!652 newAcc!49))))

(declare-fun b!716091 () Bool)

(declare-fun res!479152 () Bool)

(assert (=> b!716091 (=> (not res!479152) (not e!402060))))

(declare-fun arrayNoDuplicates!0 (array!40521 (_ BitVec 32) List!13486) Bool)

(assert (=> b!716091 (= res!479152 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!716092 () Bool)

(declare-fun res!479160 () Bool)

(assert (=> b!716092 (=> (not res!479160) (not e!402060))))

(declare-fun -!438 (List!13486 (_ BitVec 64)) List!13486)

(assert (=> b!716092 (= res!479160 (= (-!438 newAcc!49 k!2824) acc!652))))

(declare-fun b!716093 () Bool)

(declare-fun res!479146 () Bool)

(assert (=> b!716093 (=> (not res!479146) (not e!402060))))

(assert (=> b!716093 (= res!479146 (not (contains!4029 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!716094 () Bool)

(assert (=> b!716094 (= e!402060 (not (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49)))))

(declare-fun b!716095 () Bool)

(declare-fun res!479148 () Bool)

(assert (=> b!716095 (=> (not res!479148) (not e!402060))))

(assert (=> b!716095 (= res!479148 (not (contains!4029 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!716096 () Bool)

(declare-fun res!479157 () Bool)

(assert (=> b!716096 (=> (not res!479157) (not e!402060))))

(assert (=> b!716096 (= res!479157 (noDuplicate!1276 newAcc!49))))

(assert (= (and start!63604 res!479151) b!716084))

(assert (= (and b!716084 res!479158) b!716096))

(assert (= (and b!716096 res!479157) b!716086))

(assert (= (and b!716086 res!479147) b!716088))

(assert (= (and b!716088 res!479155) b!716085))

(assert (= (and b!716085 res!479154) b!716083))

(assert (= (and b!716083 res!479159) b!716082))

(assert (= (and b!716082 res!479156) b!716091))

(assert (= (and b!716091 res!479152) b!716090))

(assert (= (and b!716090 res!479150) b!716089))

(assert (= (and b!716089 res!479153) b!716092))

(assert (= (and b!716092 res!479160) b!716095))

(assert (= (and b!716095 res!479148) b!716093))

(assert (= (and b!716093 res!479146) b!716087))

(assert (= (and b!716087 res!479149) b!716094))

(declare-fun m!672195 () Bool)

(assert (=> b!716089 m!672195))

(declare-fun m!672197 () Bool)

(assert (=> b!716084 m!672197))

(declare-fun m!672199 () Bool)

(assert (=> b!716082 m!672199))

(declare-fun m!672201 () Bool)

(assert (=> b!716090 m!672201))

(declare-fun m!672203 () Bool)

(assert (=> b!716086 m!672203))

(declare-fun m!672205 () Bool)

(assert (=> start!63604 m!672205))

(declare-fun m!672207 () Bool)

(assert (=> b!716088 m!672207))

(declare-fun m!672209 () Bool)

(assert (=> b!716091 m!672209))

(declare-fun m!672211 () Bool)

(assert (=> b!716094 m!672211))

(declare-fun m!672213 () Bool)

(assert (=> b!716093 m!672213))

(declare-fun m!672215 () Bool)

(assert (=> b!716092 m!672215))

(declare-fun m!672217 () Bool)

(assert (=> b!716095 m!672217))

(declare-fun m!672219 () Bool)

(assert (=> b!716085 m!672219))

(declare-fun m!672221 () Bool)

(assert (=> b!716096 m!672221))

(declare-fun m!672223 () Bool)

(assert (=> b!716083 m!672223))

(push 1)

(assert (not b!716092))

(assert (not start!63604))

(assert (not b!716089))

(assert (not b!716084))

(assert (not b!716082))

(assert (not b!716095))

(assert (not b!716090))

(assert (not b!716086))

(assert (not b!716094))

(assert (not b!716093))

(assert (not b!716088))

(assert (not b!716096))

(assert (not b!716085))

(assert (not b!716083))

(assert (not b!716091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98473 () Bool)

(declare-fun lt!318860 () Bool)

(declare-fun content!378 (List!13486) (Set (_ BitVec 64)))

(assert (=> d!98473 (= lt!318860 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!378 acc!652)))))

(declare-fun e!402114 () Bool)

(assert (=> d!98473 (= lt!318860 e!402114)))

(declare-fun res!479291 () Bool)

(assert (=> d!98473 (=> (not res!479291) (not e!402114))))

(assert (=> d!98473 (= res!479291 (is-Cons!13482 acc!652))))

(assert (=> d!98473 (= (contains!4029 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318860)))

(declare-fun b!716227 () Bool)

(declare-fun e!402113 () Bool)

(assert (=> b!716227 (= e!402114 e!402113)))

(declare-fun res!479292 () Bool)

(assert (=> b!716227 (=> res!479292 e!402113)))

(assert (=> b!716227 (= res!479292 (= (h!14527 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716228 () Bool)

(assert (=> b!716228 (= e!402113 (contains!4029 (t!19809 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98473 res!479291) b!716227))

(assert (= (and b!716227 (not res!479292)) b!716228))

(declare-fun m!672319 () Bool)

(assert (=> d!98473 m!672319))

(declare-fun m!672321 () Bool)

(assert (=> d!98473 m!672321))

(declare-fun m!672323 () Bool)

(assert (=> b!716228 m!672323))

(assert (=> b!716088 d!98473))

(declare-fun d!98483 () Bool)

(declare-fun lt!318862 () Bool)

(assert (=> d!98483 (= lt!318862 (set.member k!2824 (content!378 newAcc!49)))))

(declare-fun e!402118 () Bool)

(assert (=> d!98483 (= lt!318862 e!402118)))

(declare-fun res!479295 () Bool)

(assert (=> d!98483 (=> (not res!479295) (not e!402118))))

(assert (=> d!98483 (= res!479295 (is-Cons!13482 newAcc!49))))

(assert (=> d!98483 (= (contains!4029 newAcc!49 k!2824) lt!318862)))

(declare-fun b!716231 () Bool)

(declare-fun e!402117 () Bool)

(assert (=> b!716231 (= e!402118 e!402117)))

(declare-fun res!479296 () Bool)

(assert (=> b!716231 (=> res!479296 e!402117)))

(assert (=> b!716231 (= res!479296 (= (h!14527 newAcc!49) k!2824))))

(declare-fun b!716232 () Bool)

(assert (=> b!716232 (= e!402117 (contains!4029 (t!19809 newAcc!49) k!2824))))

(assert (= (and d!98483 res!479295) b!716231))

(assert (= (and b!716231 (not res!479296)) b!716232))

(declare-fun m!672331 () Bool)

(assert (=> d!98483 m!672331))

(declare-fun m!672333 () Bool)

(assert (=> d!98483 m!672333))

(declare-fun m!672335 () Bool)

(assert (=> b!716232 m!672335))

(assert (=> b!716089 d!98483))

(declare-fun b!716266 () Bool)

(declare-fun e!402147 () Bool)

(declare-fun e!402151 () Bool)

(assert (=> b!716266 (= e!402147 e!402151)))

(declare-fun res!479322 () Bool)

(assert (=> b!716266 (=> res!479322 e!402151)))

(declare-fun e!402149 () Bool)

(assert (=> b!716266 (= res!479322 e!402149)))

(declare-fun res!479321 () Bool)

(assert (=> b!716266 (=> (not res!479321) (not e!402149))))

(assert (=> b!716266 (= res!479321 (= (h!14527 acc!652) (h!14527 newAcc!49)))))

(declare-fun b!716265 () Bool)

(declare-fun e!402148 () Bool)

(assert (=> b!716265 (= e!402148 e!402147)))

(declare-fun res!479324 () Bool)

(assert (=> b!716265 (=> (not res!479324) (not e!402147))))

(assert (=> b!716265 (= res!479324 (is-Cons!13482 newAcc!49))))

(declare-fun d!98487 () Bool)

(declare-fun res!479323 () Bool)

(assert (=> d!98487 (=> res!479323 e!402148)))

(assert (=> d!98487 (= res!479323 (is-Nil!13483 acc!652))))

(assert (=> d!98487 (= (subseq!473 acc!652 newAcc!49) e!402148)))

(declare-fun b!716268 () Bool)

(assert (=> b!716268 (= e!402151 (subseq!473 acc!652 (t!19809 newAcc!49)))))

(declare-fun b!716267 () Bool)

(assert (=> b!716267 (= e!402149 (subseq!473 (t!19809 acc!652) (t!19809 newAcc!49)))))

(assert (= (and d!98487 (not res!479323)) b!716265))

(assert (= (and b!716265 res!479324) b!716266))

(assert (= (and b!716266 res!479321) b!716267))

(assert (= (and b!716266 (not res!479322)) b!716268))

(declare-fun m!672351 () Bool)

(assert (=> b!716268 m!672351))

(declare-fun m!672353 () Bool)

(assert (=> b!716267 m!672353))

(assert (=> b!716090 d!98487))

(declare-fun e!402198 () Bool)

(declare-fun b!716327 () Bool)

(declare-fun lt!318871 () List!13486)

(assert (=> b!716327 (= e!402198 (= (content!378 lt!318871) (set.minus (content!378 newAcc!49) (set.insert k!2824 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!716328 () Bool)

(declare-fun e!402199 () List!13486)

(declare-fun call!34669 () List!13486)

(assert (=> b!716328 (= e!402199 call!34669)))

(declare-fun bm!34666 () Bool)

(assert (=> bm!34666 (= call!34669 (-!438 (t!19809 newAcc!49) k!2824))))

(declare-fun d!98497 () Bool)

(assert (=> d!98497 e!402198))

(declare-fun res!479357 () Bool)

(assert (=> d!98497 (=> (not res!479357) (not e!402198))))

(declare-fun size!19814 (List!13486) Int)

(assert (=> d!98497 (= res!479357 (<= (size!19814 lt!318871) (size!19814 newAcc!49)))))

(declare-fun e!402200 () List!13486)

(assert (=> d!98497 (= lt!318871 e!402200)))

(declare-fun c!78852 () Bool)

(assert (=> d!98497 (= c!78852 (is-Cons!13482 newAcc!49))))

(assert (=> d!98497 (= (-!438 newAcc!49 k!2824) lt!318871)))

(declare-fun b!716329 () Bool)

(assert (=> b!716329 (= e!402200 e!402199)))

(declare-fun c!78853 () Bool)

(assert (=> b!716329 (= c!78853 (= k!2824 (h!14527 newAcc!49)))))

(declare-fun b!716330 () Bool)

(assert (=> b!716330 (= e!402199 (Cons!13482 (h!14527 newAcc!49) call!34669))))

(declare-fun b!716331 () Bool)

(assert (=> b!716331 (= e!402200 Nil!13483)))

(assert (= (and d!98497 c!78852) b!716329))

(assert (= (and d!98497 (not c!78852)) b!716331))

(assert (= (and b!716329 c!78853) b!716328))

(assert (= (and b!716329 (not c!78853)) b!716330))

(assert (= (or b!716328 b!716330) bm!34666))

(assert (= (and d!98497 res!479357) b!716327))

(declare-fun m!672389 () Bool)

(assert (=> b!716327 m!672389))

(assert (=> b!716327 m!672331))

(declare-fun m!672391 () Bool)

(assert (=> b!716327 m!672391))

(declare-fun m!672393 () Bool)

(assert (=> bm!34666 m!672393))

(declare-fun m!672395 () Bool)

(assert (=> d!98497 m!672395))

(declare-fun m!672397 () Bool)

(assert (=> d!98497 m!672397))

(assert (=> b!716092 d!98497))

(declare-fun b!716358 () Bool)

(declare-fun e!402228 () Bool)

(declare-fun e!402226 () Bool)

(assert (=> b!716358 (= e!402228 e!402226)))

(declare-fun res!479381 () Bool)

(assert (=> b!716358 (=> (not res!479381) (not e!402226))))

(declare-fun e!402227 () Bool)

(assert (=> b!716358 (= res!479381 (not e!402227))))

(declare-fun res!479382 () Bool)

(assert (=> b!716358 (=> (not res!479382) (not e!402227))))

(assert (=> b!716358 (= res!479382 (validKeyInArray!0 (select (arr!19392 a!3591) from!2969)))))

(declare-fun b!716359 () Bool)

(assert (=> b!716359 (= e!402227 (contains!4029 acc!652 (select (arr!19392 a!3591) from!2969)))))

(declare-fun b!716360 () Bool)

(declare-fun e!402225 () Bool)

(declare-fun call!34672 () Bool)

(assert (=> b!716360 (= e!402225 call!34672)))

(declare-fun bm!34669 () Bool)

(declare-fun c!78856 () Bool)

(assert (=> bm!34669 (= call!34672 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78856 (Cons!13482 (select (arr!19392 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!716361 () Bool)

(assert (=> b!716361 (= e!402226 e!402225)))

(assert (=> b!716361 (= c!78856 (validKeyInArray!0 (select (arr!19392 a!3591) from!2969)))))

(declare-fun d!98509 () Bool)

(declare-fun res!479380 () Bool)

(assert (=> d!98509 (=> res!479380 e!402228)))

(assert (=> d!98509 (= res!479380 (bvsge from!2969 (size!19810 a!3591)))))

(assert (=> d!98509 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!402228)))

(declare-fun b!716362 () Bool)

(assert (=> b!716362 (= e!402225 call!34672)))

(assert (= (and d!98509 (not res!479380)) b!716358))

(assert (= (and b!716358 res!479382) b!716359))

(assert (= (and b!716358 res!479381) b!716361))

(assert (= (and b!716361 c!78856) b!716362))

(assert (= (and b!716361 (not c!78856)) b!716360))

(assert (= (or b!716362 b!716360) bm!34669))

(declare-fun m!672411 () Bool)

(assert (=> b!716358 m!672411))

(assert (=> b!716358 m!672411))

(declare-fun m!672413 () Bool)

(assert (=> b!716358 m!672413))

(assert (=> b!716359 m!672411))

(assert (=> b!716359 m!672411))

(declare-fun m!672415 () Bool)

(assert (=> b!716359 m!672415))

(assert (=> bm!34669 m!672411))

(declare-fun m!672417 () Bool)

(assert (=> bm!34669 m!672417))

(assert (=> b!716361 m!672411))

(assert (=> b!716361 m!672411))

(assert (=> b!716361 m!672413))

(assert (=> b!716091 d!98509))

(declare-fun d!98519 () Bool)

(declare-fun lt!318873 () Bool)

(assert (=> d!98519 (= lt!318873 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!378 newAcc!49)))))

(declare-fun e!402232 () Bool)

(assert (=> d!98519 (= lt!318873 e!402232)))

(declare-fun res!479385 () Bool)

(assert (=> d!98519 (=> (not res!479385) (not e!402232))))

(assert (=> d!98519 (= res!479385 (is-Cons!13482 newAcc!49))))

(assert (=> d!98519 (= (contains!4029 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318873)))

(declare-fun b!716365 () Bool)

(declare-fun e!402231 () Bool)

(assert (=> b!716365 (= e!402232 e!402231)))

(declare-fun res!479386 () Bool)

(assert (=> b!716365 (=> res!479386 e!402231)))

(assert (=> b!716365 (= res!479386 (= (h!14527 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716366 () Bool)

(assert (=> b!716366 (= e!402231 (contains!4029 (t!19809 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98519 res!479385) b!716365))

(assert (= (and b!716365 (not res!479386)) b!716366))

(assert (=> d!98519 m!672331))

(declare-fun m!672421 () Bool)

(assert (=> d!98519 m!672421))

(declare-fun m!672423 () Bool)

(assert (=> b!716366 m!672423))

(assert (=> b!716093 d!98519))

(declare-fun d!98523 () Bool)

(assert (=> d!98523 (= (validKeyInArray!0 k!2824) (and (not (= k!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!716082 d!98523))

(declare-fun d!98527 () Bool)

(declare-fun res!479398 () Bool)

(declare-fun e!402245 () Bool)

(assert (=> d!98527 (=> res!479398 e!402245)))

(assert (=> d!98527 (= res!479398 (is-Nil!13483 acc!652))))

(assert (=> d!98527 (= (noDuplicate!1276 acc!652) e!402245)))

(declare-fun b!716380 () Bool)

(declare-fun e!402246 () Bool)

(assert (=> b!716380 (= e!402245 e!402246)))

(declare-fun res!479399 () Bool)

(assert (=> b!716380 (=> (not res!479399) (not e!402246))))

(assert (=> b!716380 (= res!479399 (not (contains!4029 (t!19809 acc!652) (h!14527 acc!652))))))

(declare-fun b!716381 () Bool)

(assert (=> b!716381 (= e!402246 (noDuplicate!1276 (t!19809 acc!652)))))

(assert (= (and d!98527 (not res!479398)) b!716380))

(assert (= (and b!716380 res!479399) b!716381))

(declare-fun m!672437 () Bool)

(assert (=> b!716380 m!672437))

(declare-fun m!672439 () Bool)

(assert (=> b!716381 m!672439))

(assert (=> b!716084 d!98527))

(declare-fun b!716382 () Bool)

(declare-fun e!402250 () Bool)

(declare-fun e!402248 () Bool)

(assert (=> b!716382 (= e!402250 e!402248)))

(declare-fun res!479401 () Bool)

(assert (=> b!716382 (=> (not res!479401) (not e!402248))))

(declare-fun e!402249 () Bool)

(assert (=> b!716382 (= res!479401 (not e!402249))))

(declare-fun res!479402 () Bool)

(assert (=> b!716382 (=> (not res!479402) (not e!402249))))

(assert (=> b!716382 (= res!479402 (validKeyInArray!0 (select (arr!19392 a!3591) from!2969)))))

(declare-fun b!716383 () Bool)

(assert (=> b!716383 (= e!402249 (contains!4029 newAcc!49 (select (arr!19392 a!3591) from!2969)))))

(declare-fun b!716384 () Bool)

(declare-fun e!402247 () Bool)

(declare-fun call!34674 () Bool)

(assert (=> b!716384 (= e!402247 call!34674)))

(declare-fun bm!34671 () Bool)

(declare-fun c!78858 () Bool)

(assert (=> bm!34671 (= call!34674 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78858 (Cons!13482 (select (arr!19392 a!3591) from!2969) newAcc!49) newAcc!49)))))

(declare-fun b!716385 () Bool)

(assert (=> b!716385 (= e!402248 e!402247)))

(assert (=> b!716385 (= c!78858 (validKeyInArray!0 (select (arr!19392 a!3591) from!2969)))))

(declare-fun d!98533 () Bool)

(declare-fun res!479400 () Bool)

(assert (=> d!98533 (=> res!479400 e!402250)))

(assert (=> d!98533 (= res!479400 (bvsge from!2969 (size!19810 a!3591)))))

(assert (=> d!98533 (= (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49) e!402250)))

(declare-fun b!716386 () Bool)

(assert (=> b!716386 (= e!402247 call!34674)))

(assert (= (and d!98533 (not res!479400)) b!716382))

(assert (= (and b!716382 res!479402) b!716383))

(assert (= (and b!716382 res!479401) b!716385))

(assert (= (and b!716385 c!78858) b!716386))

(assert (= (and b!716385 (not c!78858)) b!716384))

(assert (= (or b!716386 b!716384) bm!34671))

(assert (=> b!716382 m!672411))

(assert (=> b!716382 m!672411))

(assert (=> b!716382 m!672413))

(assert (=> b!716383 m!672411))

(assert (=> b!716383 m!672411))

(declare-fun m!672441 () Bool)

(assert (=> b!716383 m!672441))

(assert (=> bm!34671 m!672411))

(declare-fun m!672443 () Bool)

(assert (=> bm!34671 m!672443))

(assert (=> b!716385 m!672411))

(assert (=> b!716385 m!672411))

(assert (=> b!716385 m!672413))

(assert (=> b!716094 d!98533))

(declare-fun d!98535 () Bool)

(declare-fun lt!318875 () Bool)

(assert (=> d!98535 (= lt!318875 (set.member k!2824 (content!378 acc!652)))))

(declare-fun e!402252 () Bool)

(assert (=> d!98535 (= lt!318875 e!402252)))

(declare-fun res!479403 () Bool)

(assert (=> d!98535 (=> (not res!479403) (not e!402252))))

(assert (=> d!98535 (= res!479403 (is-Cons!13482 acc!652))))

(assert (=> d!98535 (= (contains!4029 acc!652 k!2824) lt!318875)))

(declare-fun b!716387 () Bool)

(declare-fun e!402251 () Bool)

(assert (=> b!716387 (= e!402252 e!402251)))

(declare-fun res!479404 () Bool)

(assert (=> b!716387 (=> res!479404 e!402251)))

(assert (=> b!716387 (= res!479404 (= (h!14527 acc!652) k!2824))))

(declare-fun b!716388 () Bool)

(assert (=> b!716388 (= e!402251 (contains!4029 (t!19809 acc!652) k!2824))))

(assert (= (and d!98535 res!479403) b!716387))

(assert (= (and b!716387 (not res!479404)) b!716388))

(assert (=> d!98535 m!672319))

(declare-fun m!672445 () Bool)

(assert (=> d!98535 m!672445))

(declare-fun m!672447 () Bool)

(assert (=> b!716388 m!672447))

(assert (=> b!716083 d!98535))

(declare-fun d!98537 () Bool)

(declare-fun res!479405 () Bool)

(declare-fun e!402258 () Bool)

(assert (=> d!98537 (=> res!479405 e!402258)))

(assert (=> d!98537 (= res!479405 (is-Nil!13483 newAcc!49))))

(assert (=> d!98537 (= (noDuplicate!1276 newAcc!49) e!402258)))

(declare-fun b!716397 () Bool)

(declare-fun e!402259 () Bool)

(assert (=> b!716397 (= e!402258 e!402259)))

(declare-fun res!479406 () Bool)

(assert (=> b!716397 (=> (not res!479406) (not e!402259))))

(assert (=> b!716397 (= res!479406 (not (contains!4029 (t!19809 newAcc!49) (h!14527 newAcc!49))))))

(declare-fun b!716398 () Bool)

(assert (=> b!716398 (= e!402259 (noDuplicate!1276 (t!19809 newAcc!49)))))

(assert (= (and d!98537 (not res!479405)) b!716397))

(assert (= (and b!716397 res!479406) b!716398))

(declare-fun m!672449 () Bool)

(assert (=> b!716397 m!672449))

(declare-fun m!672451 () Bool)

(assert (=> b!716398 m!672451))

(assert (=> b!716096 d!98537))

(declare-fun d!98539 () Bool)

(assert (=> d!98539 (= (array_inv!15166 a!3591) (bvsge (size!19810 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63604 d!98539))

(declare-fun d!98541 () Bool)

(declare-fun res!479414 () Bool)

(declare-fun e!402269 () Bool)

(assert (=> d!98541 (=> res!479414 e!402269)))

(assert (=> d!98541 (= res!479414 (= (select (arr!19392 a!3591) from!2969) k!2824))))

(assert (=> d!98541 (= (arrayContainsKey!0 a!3591 k!2824 from!2969) e!402269)))

(declare-fun b!716410 () Bool)

(declare-fun e!402270 () Bool)

(assert (=> b!716410 (= e!402269 e!402270)))

(declare-fun res!479415 () Bool)

(assert (=> b!716410 (=> (not res!479415) (not e!402270))))

(assert (=> b!716410 (= res!479415 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19810 a!3591)))))

(declare-fun b!716411 () Bool)

(assert (=> b!716411 (= e!402270 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!98541 (not res!479414)) b!716410))

(assert (= (and b!716410 res!479415) b!716411))

(assert (=> d!98541 m!672411))

(declare-fun m!672463 () Bool)

(assert (=> b!716411 m!672463))

(assert (=> b!716085 d!98541))

(declare-fun d!98545 () Bool)

(declare-fun lt!318880 () Bool)

(assert (=> d!98545 (= lt!318880 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!378 newAcc!49)))))

(declare-fun e!402274 () Bool)

(assert (=> d!98545 (= lt!318880 e!402274)))

(declare-fun res!479418 () Bool)

(assert (=> d!98545 (=> (not res!479418) (not e!402274))))

(assert (=> d!98545 (= res!479418 (is-Cons!13482 newAcc!49))))

(assert (=> d!98545 (= (contains!4029 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318880)))

(declare-fun b!716414 () Bool)

(declare-fun e!402273 () Bool)

(assert (=> b!716414 (= e!402274 e!402273)))

(declare-fun res!479419 () Bool)

(assert (=> b!716414 (=> res!479419 e!402273)))

(assert (=> b!716414 (= res!479419 (= (h!14527 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716415 () Bool)

(assert (=> b!716415 (= e!402273 (contains!4029 (t!19809 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98545 res!479418) b!716414))

(assert (= (and b!716414 (not res!479419)) b!716415))

(assert (=> d!98545 m!672331))

(declare-fun m!672469 () Bool)

(assert (=> d!98545 m!672469))

(declare-fun m!672471 () Bool)

(assert (=> b!716415 m!672471))

(assert (=> b!716095 d!98545))

(declare-fun d!98547 () Bool)

(declare-fun lt!318881 () Bool)

(assert (=> d!98547 (= lt!318881 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!378 acc!652)))))

(declare-fun e!402276 () Bool)

(assert (=> d!98547 (= lt!318881 e!402276)))

(declare-fun res!479420 () Bool)

(assert (=> d!98547 (=> (not res!479420) (not e!402276))))

(assert (=> d!98547 (= res!479420 (is-Cons!13482 acc!652))))

(assert (=> d!98547 (= (contains!4029 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318881)))

(declare-fun b!716416 () Bool)

(declare-fun e!402275 () Bool)

(assert (=> b!716416 (= e!402276 e!402275)))

(declare-fun res!479421 () Bool)

(assert (=> b!716416 (=> res!479421 e!402275)))

(assert (=> b!716416 (= res!479421 (= (h!14527 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716417 () Bool)

(assert (=> b!716417 (= e!402275 (contains!4029 (t!19809 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98547 res!479420) b!716416))

(assert (= (and b!716416 (not res!479421)) b!716417))

(assert (=> d!98547 m!672319))

(declare-fun m!672473 () Bool)

(assert (=> d!98547 m!672473))

(declare-fun m!672475 () Bool)

(assert (=> b!716417 m!672475))

(assert (=> b!716086 d!98547))

(push 1)

(assert (not d!98483))

(assert (not b!716417))

(assert (not d!98547))

(assert (not b!716411))

(assert (not d!98535))

(assert (not b!716381))

(assert (not bm!34666))

(assert (not d!98497))

(assert (not b!716268))

(assert (not b!716232))

(assert (not b!716415))

(assert (not b!716267))

(assert (not b!716382))

(assert (not b!716388))

(assert (not b!716358))

(assert (not b!716359))

(assert (not d!98545))

(assert (not d!98473))

(assert (not b!716366))

(assert (not bm!34669))

(assert (not b!716385))

(assert (not b!716327))

(assert (not b!716383))

(assert (not b!716361))

(assert (not d!98519))

(assert (not b!716380))

(assert (not bm!34671))

(assert (not b!716228))

(assert (not b!716398))

(assert (not b!716397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!98597 () Bool)

(declare-fun c!78880 () Bool)

(assert (=> d!98597 (= c!78880 (is-Nil!13483 acc!652))))

(declare-fun e!402333 () (Set (_ BitVec 64)))

(assert (=> d!98597 (= (content!378 acc!652) e!402333)))

(declare-fun b!716489 () Bool)

(assert (=> b!716489 (= e!402333 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!716490 () Bool)

(assert (=> b!716490 (= e!402333 (set.union (set.insert (h!14527 acc!652) (as set.empty (Set (_ BitVec 64)))) (content!378 (t!19809 acc!652))))))

(assert (= (and d!98597 c!78880) b!716489))

(assert (= (and d!98597 (not c!78880)) b!716490))

(declare-fun m!672567 () Bool)

(assert (=> b!716490 m!672567))

(declare-fun m!672569 () Bool)

(assert (=> b!716490 m!672569))

(assert (=> d!98547 d!98597))

(declare-fun d!98599 () Bool)

(declare-fun lt!318897 () Bool)

(assert (=> d!98599 (= lt!318897 (set.member (select (arr!19392 a!3591) from!2969) (content!378 newAcc!49)))))

(declare-fun e!402335 () Bool)

(assert (=> d!98599 (= lt!318897 e!402335)))

(declare-fun res!479463 () Bool)

(assert (=> d!98599 (=> (not res!479463) (not e!402335))))

(assert (=> d!98599 (= res!479463 (is-Cons!13482 newAcc!49))))

(assert (=> d!98599 (= (contains!4029 newAcc!49 (select (arr!19392 a!3591) from!2969)) lt!318897)))

(declare-fun b!716491 () Bool)

(declare-fun e!402334 () Bool)

(assert (=> b!716491 (= e!402335 e!402334)))

(declare-fun res!479464 () Bool)

(assert (=> b!716491 (=> res!479464 e!402334)))

(assert (=> b!716491 (= res!479464 (= (h!14527 newAcc!49) (select (arr!19392 a!3591) from!2969)))))

(declare-fun b!716492 () Bool)

(assert (=> b!716492 (= e!402334 (contains!4029 (t!19809 newAcc!49) (select (arr!19392 a!3591) from!2969)))))

(assert (= (and d!98599 res!479463) b!716491))

(assert (= (and b!716491 (not res!479464)) b!716492))

(assert (=> d!98599 m!672331))

(assert (=> d!98599 m!672411))

(declare-fun m!672571 () Bool)

(assert (=> d!98599 m!672571))

(assert (=> b!716492 m!672411))

(declare-fun m!672573 () Bool)

(assert (=> b!716492 m!672573))

(assert (=> b!716383 d!98599))

(declare-fun d!98601 () Bool)

(assert (=> d!98601 (= (validKeyInArray!0 (select (arr!19392 a!3591) from!2969)) (and (not (= (select (arr!19392 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19392 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!716382 d!98601))

(assert (=> b!716358 d!98601))

(declare-fun d!98603 () Bool)

(declare-fun c!78881 () Bool)

(assert (=> d!98603 (= c!78881 (is-Nil!13483 newAcc!49))))

(declare-fun e!402336 () (Set (_ BitVec 64)))

(assert (=> d!98603 (= (content!378 newAcc!49) e!402336)))

(declare-fun b!716493 () Bool)

(assert (=> b!716493 (= e!402336 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!716494 () Bool)

(assert (=> b!716494 (= e!402336 (set.union (set.insert (h!14527 newAcc!49) (as set.empty (Set (_ BitVec 64)))) (content!378 (t!19809 newAcc!49))))))

(assert (= (and d!98603 c!78881) b!716493))

(assert (= (and d!98603 (not c!78881)) b!716494))

(declare-fun m!672575 () Bool)

(assert (=> b!716494 m!672575))

(declare-fun m!672577 () Bool)

(assert (=> b!716494 m!672577))

(assert (=> d!98519 d!98603))

(declare-fun d!98605 () Bool)

(declare-fun res!479465 () Bool)

(declare-fun e!402337 () Bool)

(assert (=> d!98605 (=> res!479465 e!402337)))

(assert (=> d!98605 (= res!479465 (= (select (arr!19392 a!3591) (bvadd from!2969 #b00000000000000000000000000000001)) k!2824))))

(assert (=> d!98605 (= (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001)) e!402337)))

(declare-fun b!716495 () Bool)

(declare-fun e!402338 () Bool)

(assert (=> b!716495 (= e!402337 e!402338)))

(declare-fun res!479466 () Bool)

(assert (=> b!716495 (=> (not res!479466) (not e!402338))))

(assert (=> b!716495 (= res!479466 (bvslt (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!19810 a!3591)))))

(declare-fun b!716496 () Bool)

(assert (=> b!716496 (= e!402338 (arrayContainsKey!0 a!3591 k!2824 (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!98605 (not res!479465)) b!716495))

(assert (= (and b!716495 res!479466) b!716496))

(declare-fun m!672579 () Bool)

(assert (=> d!98605 m!672579))

(declare-fun m!672581 () Bool)

(assert (=> b!716496 m!672581))

(assert (=> b!716411 d!98605))

(declare-fun b!716497 () Bool)

(declare-fun e!402342 () Bool)

(declare-fun e!402340 () Bool)

(assert (=> b!716497 (= e!402342 e!402340)))

(declare-fun res!479468 () Bool)

(assert (=> b!716497 (=> (not res!479468) (not e!402340))))

(declare-fun e!402341 () Bool)

(assert (=> b!716497 (= res!479468 (not e!402341))))

(declare-fun res!479469 () Bool)

(assert (=> b!716497 (=> (not res!479469) (not e!402341))))

(assert (=> b!716497 (= res!479469 (validKeyInArray!0 (select (arr!19392 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(declare-fun b!716498 () Bool)

(assert (=> b!716498 (= e!402341 (contains!4029 (ite c!78858 (Cons!13482 (select (arr!19392 a!3591) from!2969) newAcc!49) newAcc!49) (select (arr!19392 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(declare-fun b!716499 () Bool)

(declare-fun e!402339 () Bool)

(declare-fun call!34681 () Bool)

(assert (=> b!716499 (= e!402339 call!34681)))

(declare-fun bm!34678 () Bool)

(declare-fun c!78882 () Bool)

(assert (=> bm!34678 (= call!34681 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!78882 (Cons!13482 (select (arr!19392 a!3591) (bvadd from!2969 #b00000000000000000000000000000001)) (ite c!78858 (Cons!13482 (select (arr!19392 a!3591) from!2969) newAcc!49) newAcc!49)) (ite c!78858 (Cons!13482 (select (arr!19392 a!3591) from!2969) newAcc!49) newAcc!49))))))

(declare-fun b!716500 () Bool)

(assert (=> b!716500 (= e!402340 e!402339)))

(assert (=> b!716500 (= c!78882 (validKeyInArray!0 (select (arr!19392 a!3591) (bvadd from!2969 #b00000000000000000000000000000001))))))

(declare-fun d!98607 () Bool)

(declare-fun res!479467 () Bool)

(assert (=> d!98607 (=> res!479467 e!402342)))

(assert (=> d!98607 (= res!479467 (bvsge (bvadd from!2969 #b00000000000000000000000000000001) (size!19810 a!3591)))))

(assert (=> d!98607 (= (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78858 (Cons!13482 (select (arr!19392 a!3591) from!2969) newAcc!49) newAcc!49)) e!402342)))

(declare-fun b!716501 () Bool)

(assert (=> b!716501 (= e!402339 call!34681)))

(assert (= (and d!98607 (not res!479467)) b!716497))

(assert (= (and b!716497 res!479469) b!716498))

(assert (= (and b!716497 res!479468) b!716500))

(assert (= (and b!716500 c!78882) b!716501))

(assert (= (and b!716500 (not c!78882)) b!716499))

(assert (= (or b!716501 b!716499) bm!34678))

(assert (=> b!716497 m!672579))

(assert (=> b!716497 m!672579))

(declare-fun m!672583 () Bool)

(assert (=> b!716497 m!672583))

(assert (=> b!716498 m!672579))

(assert (=> b!716498 m!672579))

(declare-fun m!672585 () Bool)

(assert (=> b!716498 m!672585))

(assert (=> bm!34678 m!672579))

(declare-fun m!672587 () Bool)

(assert (=> bm!34678 m!672587))

(assert (=> b!716500 m!672579))

(assert (=> b!716500 m!672579))

(assert (=> b!716500 m!672583))

(assert (=> bm!34671 d!98607))

(declare-fun d!98609 () Bool)

(declare-fun lt!318898 () Bool)

(assert (=> d!98609 (= lt!318898 (set.member (select (arr!19392 a!3591) from!2969) (content!378 acc!652)))))

(declare-fun e!402344 () Bool)

(assert (=> d!98609 (= lt!318898 e!402344)))

(declare-fun res!479470 () Bool)

(assert (=> d!98609 (=> (not res!479470) (not e!402344))))

(assert (=> d!98609 (= res!479470 (is-Cons!13482 acc!652))))

(assert (=> d!98609 (= (contains!4029 acc!652 (select (arr!19392 a!3591) from!2969)) lt!318898)))

(declare-fun b!716502 () Bool)

(declare-fun e!402343 () Bool)

(assert (=> b!716502 (= e!402344 e!402343)))

(declare-fun res!479471 () Bool)

(assert (=> b!716502 (=> res!479471 e!402343)))

(assert (=> b!716502 (= res!479471 (= (h!14527 acc!652) (select (arr!19392 a!3591) from!2969)))))

(declare-fun b!716503 () Bool)

(assert (=> b!716503 (= e!402343 (contains!4029 (t!19809 acc!652) (select (arr!19392 a!3591) from!2969)))))

(assert (= (and d!98609 res!479470) b!716502))

(assert (= (and b!716502 (not res!479471)) b!716503))

(assert (=> d!98609 m!672319))

(assert (=> d!98609 m!672411))

(declare-fun m!672589 () Bool)

(assert (=> d!98609 m!672589))

(assert (=> b!716503 m!672411))

(declare-fun m!672591 () Bool)

(assert (=> b!716503 m!672591))

(assert (=> b!716359 d!98609))

(declare-fun d!98611 () Bool)

(declare-fun lt!318899 () Bool)

(assert (=> d!98611 (= lt!318899 (set.member k!2824 (content!378 (t!19809 acc!652))))))

(declare-fun e!402346 () Bool)

(assert (=> d!98611 (= lt!318899 e!402346)))

(declare-fun res!479472 () Bool)

(assert (=> d!98611 (=> (not res!479472) (not e!402346))))

(assert (=> d!98611 (= res!479472 (is-Cons!13482 (t!19809 acc!652)))))

(assert (=> d!98611 (= (contains!4029 (t!19809 acc!652) k!2824) lt!318899)))

(declare-fun b!716504 () Bool)

(declare-fun e!402345 () Bool)

(assert (=> b!716504 (= e!402346 e!402345)))

(declare-fun res!479473 () Bool)

(assert (=> b!716504 (=> res!479473 e!402345)))

(assert (=> b!716504 (= res!479473 (= (h!14527 (t!19809 acc!652)) k!2824))))

(declare-fun b!716505 () Bool)

(assert (=> b!716505 (= e!402345 (contains!4029 (t!19809 (t!19809 acc!652)) k!2824))))

(assert (= (and d!98611 res!479472) b!716504))

(assert (= (and b!716504 (not res!479473)) b!716505))

(assert (=> d!98611 m!672569))

(declare-fun m!672593 () Bool)

(assert (=> d!98611 m!672593))

(declare-fun m!672595 () Bool)

(assert (=> b!716505 m!672595))

(assert (=> b!716388 d!98611))

(declare-fun d!98613 () Bool)

(declare-fun lt!318902 () Int)

(assert (=> d!98613 (>= lt!318902 0)))

(declare-fun e!402349 () Int)

(assert (=> d!98613 (= lt!318902 e!402349)))

(declare-fun c!78885 () Bool)

(assert (=> d!98613 (= c!78885 (is-Nil!13483 lt!318871))))

(assert (=> d!98613 (= (size!19814 lt!318871) lt!318902)))

(declare-fun b!716510 () Bool)

(assert (=> b!716510 (= e!402349 0)))

(declare-fun b!716511 () Bool)

(assert (=> b!716511 (= e!402349 (+ 1 (size!19814 (t!19809 lt!318871))))))

(assert (= (and d!98613 c!78885) b!716510))

(assert (= (and d!98613 (not c!78885)) b!716511))

(declare-fun m!672597 () Bool)

(assert (=> b!716511 m!672597))

(assert (=> d!98497 d!98613))

(declare-fun d!98615 () Bool)

(declare-fun lt!318903 () Int)

(assert (=> d!98615 (>= lt!318903 0)))

(declare-fun e!402350 () Int)

(assert (=> d!98615 (= lt!318903 e!402350)))

(declare-fun c!78886 () Bool)

(assert (=> d!98615 (= c!78886 (is-Nil!13483 newAcc!49))))

(assert (=> d!98615 (= (size!19814 newAcc!49) lt!318903)))

(declare-fun b!716512 () Bool)

(assert (=> b!716512 (= e!402350 0)))

(declare-fun b!716513 () Bool)

(assert (=> b!716513 (= e!402350 (+ 1 (size!19814 (t!19809 newAcc!49))))))

(assert (= (and d!98615 c!78886) b!716512))

(assert (= (and d!98615 (not c!78886)) b!716513))

(declare-fun m!672599 () Bool)

(assert (=> b!716513 m!672599))

(assert (=> d!98497 d!98615))

(declare-fun d!98617 () Bool)

(declare-fun lt!318904 () Bool)

(assert (=> d!98617 (= lt!318904 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!378 (t!19809 acc!652))))))

(declare-fun e!402352 () Bool)

(assert (=> d!98617 (= lt!318904 e!402352)))

(declare-fun res!479474 () Bool)

(assert (=> d!98617 (=> (not res!479474) (not e!402352))))

(assert (=> d!98617 (= res!479474 (is-Cons!13482 (t!19809 acc!652)))))

(assert (=> d!98617 (= (contains!4029 (t!19809 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000) lt!318904)))

(declare-fun b!716514 () Bool)

(declare-fun e!402351 () Bool)

(assert (=> b!716514 (= e!402352 e!402351)))

(declare-fun res!479475 () Bool)

(assert (=> b!716514 (=> res!479475 e!402351)))

(assert (=> b!716514 (= res!479475 (= (h!14527 (t!19809 acc!652)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!716515 () Bool)

(assert (=> b!716515 (= e!402351 (contains!4029 (t!19809 (t!19809 acc!652)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98617 res!479474) b!716514))

(assert (= (and b!716514 (not res!479475)) b!716515))

(assert (=> d!98617 m!672569))

(declare-fun m!672601 () Bool)

(assert (=> d!98617 m!672601))

(declare-fun m!672603 () Bool)

(assert (=> b!716515 m!672603))

(assert (=> b!716228 d!98617))

(assert (=> d!98483 d!98603))

(declare-fun d!98619 () Bool)

(declare-fun res!479476 () Bool)

(declare-fun e!402353 () Bool)

(assert (=> d!98619 (=> res!479476 e!402353)))

(assert (=> d!98619 (= res!479476 (is-Nil!13483 (t!19809 newAcc!49)))))

(assert (=> d!98619 (= (noDuplicate!1276 (t!19809 newAcc!49)) e!402353)))

(declare-fun b!716516 () Bool)

(declare-fun e!402354 () Bool)

(assert (=> b!716516 (= e!402353 e!402354)))

(declare-fun res!479477 () Bool)

(assert (=> b!716516 (=> (not res!479477) (not e!402354))))

(assert (=> b!716516 (= res!479477 (not (contains!4029 (t!19809 (t!19809 newAcc!49)) (h!14527 (t!19809 newAcc!49)))))))

(declare-fun b!716517 () Bool)

(assert (=> b!716517 (= e!402354 (noDuplicate!1276 (t!19809 (t!19809 newAcc!49))))))

(assert (= (and d!98619 (not res!479476)) b!716516))

(assert (= (and b!716516 res!479477) b!716517))

(declare-fun m!672605 () Bool)

(assert (=> b!716516 m!672605))

(declare-fun m!672607 () Bool)

