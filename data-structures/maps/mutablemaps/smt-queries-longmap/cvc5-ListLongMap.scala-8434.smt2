; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102728 () Bool)

(assert start!102728)

(declare-fun res!822513 () Bool)

(declare-fun e!700060 () Bool)

(assert (=> start!102728 (=> (not res!822513) (not e!700060))))

(declare-datatypes ((array!79559 0))(
  ( (array!79560 (arr!38385 (Array (_ BitVec 32) (_ BitVec 64))) (size!38922 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79559)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102728 (= res!822513 (and (bvslt (size!38922 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38922 a!3835))))))

(assert (=> start!102728 e!700060))

(declare-fun array_inv!29161 (array!79559) Bool)

(assert (=> start!102728 (array_inv!29161 a!3835)))

(assert (=> start!102728 true))

(declare-fun b!1234220 () Bool)

(declare-fun res!822518 () Bool)

(assert (=> b!1234220 (=> (not res!822518) (not e!700060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234220 (= res!822518 (validKeyInArray!0 (select (arr!38385 a!3835) from!3213)))))

(declare-fun b!1234221 () Bool)

(declare-datatypes ((List!27336 0))(
  ( (Nil!27333) (Cons!27332 (h!28541 (_ BitVec 64)) (t!40806 List!27336)) )
))
(declare-fun lt!559771 () List!27336)

(declare-fun isEmpty!1006 (List!27336) Bool)

(assert (=> b!1234221 (= e!700060 (not (not (isEmpty!1006 lt!559771))))))

(declare-fun subseq!506 (List!27336 List!27336) Bool)

(assert (=> b!1234221 (subseq!506 lt!559771 lt!559771)))

(declare-datatypes ((Unit!40814 0))(
  ( (Unit!40815) )
))
(declare-fun lt!559770 () Unit!40814)

(declare-fun lemmaListSubSeqRefl!0 (List!27336) Unit!40814)

(assert (=> b!1234221 (= lt!559770 (lemmaListSubSeqRefl!0 lt!559771))))

(declare-fun acc!846 () List!27336)

(assert (=> b!1234221 (= lt!559771 (Cons!27332 (select (arr!38385 a!3835) from!3213) acc!846))))

(declare-fun b!1234222 () Bool)

(declare-fun res!822516 () Bool)

(assert (=> b!1234222 (=> (not res!822516) (not e!700060))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7251 (List!27336 (_ BitVec 64)) Bool)

(assert (=> b!1234222 (= res!822516 (contains!7251 acc!846 k!2925))))

(declare-fun b!1234223 () Bool)

(declare-fun res!822515 () Bool)

(assert (=> b!1234223 (=> (not res!822515) (not e!700060))))

(assert (=> b!1234223 (= res!822515 (not (contains!7251 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234224 () Bool)

(declare-fun res!822517 () Bool)

(assert (=> b!1234224 (=> (not res!822517) (not e!700060))))

(declare-fun noDuplicate!1858 (List!27336) Bool)

(assert (=> b!1234224 (= res!822517 (noDuplicate!1858 acc!846))))

(declare-fun b!1234225 () Bool)

(declare-fun res!822511 () Bool)

(assert (=> b!1234225 (=> (not res!822511) (not e!700060))))

(declare-fun arrayNoDuplicates!0 (array!79559 (_ BitVec 32) List!27336) Bool)

(assert (=> b!1234225 (= res!822511 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234226 () Bool)

(declare-fun res!822512 () Bool)

(assert (=> b!1234226 (=> (not res!822512) (not e!700060))))

(assert (=> b!1234226 (= res!822512 (not (contains!7251 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234227 () Bool)

(declare-fun res!822514 () Bool)

(assert (=> b!1234227 (=> (not res!822514) (not e!700060))))

(assert (=> b!1234227 (= res!822514 (not (= from!3213 (bvsub (size!38922 a!3835) #b00000000000000000000000000000001))))))

(assert (= (and start!102728 res!822513) b!1234224))

(assert (= (and b!1234224 res!822517) b!1234223))

(assert (= (and b!1234223 res!822515) b!1234226))

(assert (= (and b!1234226 res!822512) b!1234225))

(assert (= (and b!1234225 res!822511) b!1234222))

(assert (= (and b!1234222 res!822516) b!1234227))

(assert (= (and b!1234227 res!822514) b!1234220))

(assert (= (and b!1234220 res!822518) b!1234221))

(declare-fun m!1138265 () Bool)

(assert (=> b!1234224 m!1138265))

(declare-fun m!1138267 () Bool)

(assert (=> start!102728 m!1138267))

(declare-fun m!1138269 () Bool)

(assert (=> b!1234222 m!1138269))

(declare-fun m!1138271 () Bool)

(assert (=> b!1234221 m!1138271))

(declare-fun m!1138273 () Bool)

(assert (=> b!1234221 m!1138273))

(declare-fun m!1138275 () Bool)

(assert (=> b!1234221 m!1138275))

(declare-fun m!1138277 () Bool)

(assert (=> b!1234221 m!1138277))

(declare-fun m!1138279 () Bool)

(assert (=> b!1234226 m!1138279))

(declare-fun m!1138281 () Bool)

(assert (=> b!1234225 m!1138281))

(assert (=> b!1234220 m!1138277))

(assert (=> b!1234220 m!1138277))

(declare-fun m!1138283 () Bool)

(assert (=> b!1234220 m!1138283))

(declare-fun m!1138285 () Bool)

(assert (=> b!1234223 m!1138285))

(push 1)

(assert (not b!1234225))

(assert (not b!1234223))

(assert (not b!1234221))

(assert (not b!1234222))

(assert (not b!1234226))

(assert (not b!1234224))

(assert (not b!1234220))

(assert (not start!102728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!135329 () Bool)

(assert (=> d!135329 (= (isEmpty!1006 lt!559771) (is-Nil!27333 lt!559771))))

(assert (=> b!1234221 d!135329))

(declare-fun d!135331 () Bool)

(declare-fun res!822585 () Bool)

(declare-fun e!700091 () Bool)

(assert (=> d!135331 (=> res!822585 e!700091)))

(assert (=> d!135331 (= res!822585 (is-Nil!27333 lt!559771))))

(assert (=> d!135331 (= (subseq!506 lt!559771 lt!559771) e!700091)))

(declare-fun b!1234295 () Bool)

(declare-fun e!700089 () Bool)

(assert (=> b!1234295 (= e!700089 (subseq!506 lt!559771 (t!40806 lt!559771)))))

(declare-fun b!1234293 () Bool)

(declare-fun e!700090 () Bool)

(assert (=> b!1234293 (= e!700090 e!700089)))

(declare-fun res!822584 () Bool)

(assert (=> b!1234293 (=> res!822584 e!700089)))

(declare-fun e!700092 () Bool)

(assert (=> b!1234293 (= res!822584 e!700092)))

(declare-fun res!822586 () Bool)

(assert (=> b!1234293 (=> (not res!822586) (not e!700092))))

(assert (=> b!1234293 (= res!822586 (= (h!28541 lt!559771) (h!28541 lt!559771)))))

(declare-fun b!1234294 () Bool)

(assert (=> b!1234294 (= e!700092 (subseq!506 (t!40806 lt!559771) (t!40806 lt!559771)))))

(declare-fun b!1234292 () Bool)

(assert (=> b!1234292 (= e!700091 e!700090)))

(declare-fun res!822583 () Bool)

(assert (=> b!1234292 (=> (not res!822583) (not e!700090))))

(assert (=> b!1234292 (= res!822583 (is-Cons!27332 lt!559771))))

(assert (= (and d!135331 (not res!822585)) b!1234292))

(assert (= (and b!1234292 res!822583) b!1234293))

(assert (= (and b!1234293 res!822586) b!1234294))

(assert (= (and b!1234293 (not res!822584)) b!1234295))

(declare-fun m!1138341 () Bool)

(assert (=> b!1234295 m!1138341))

(declare-fun m!1138343 () Bool)

(assert (=> b!1234294 m!1138343))

(assert (=> b!1234221 d!135331))

(declare-fun d!135339 () Bool)

(assert (=> d!135339 (subseq!506 lt!559771 lt!559771)))

(declare-fun lt!559790 () Unit!40814)

(declare-fun choose!36 (List!27336) Unit!40814)

(assert (=> d!135339 (= lt!559790 (choose!36 lt!559771))))

(assert (=> d!135339 (= (lemmaListSubSeqRefl!0 lt!559771) lt!559790)))

(declare-fun bs!34688 () Bool)

(assert (= bs!34688 d!135339))

(assert (=> bs!34688 m!1138273))

(declare-fun m!1138345 () Bool)

(assert (=> bs!34688 m!1138345))

(assert (=> b!1234221 d!135339))

(declare-fun d!135343 () Bool)

(declare-fun lt!559796 () Bool)

(declare-fun content!586 (List!27336) (Set (_ BitVec 64)))

(assert (=> d!135343 (= lt!559796 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!586 acc!846)))))

(declare-fun e!700115 () Bool)

(assert (=> d!135343 (= lt!559796 e!700115)))

(declare-fun res!822610 () Bool)

(assert (=> d!135343 (=> (not res!822610) (not e!700115))))

(assert (=> d!135343 (= res!822610 (is-Cons!27332 acc!846))))

(assert (=> d!135343 (= (contains!7251 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559796)))

(declare-fun b!1234318 () Bool)

(declare-fun e!700116 () Bool)

(assert (=> b!1234318 (= e!700115 e!700116)))

(declare-fun res!822609 () Bool)

(assert (=> b!1234318 (=> res!822609 e!700116)))

(assert (=> b!1234318 (= res!822609 (= (h!28541 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234319 () Bool)

(assert (=> b!1234319 (= e!700116 (contains!7251 (t!40806 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135343 res!822610) b!1234318))

(assert (= (and b!1234318 (not res!822609)) b!1234319))

(declare-fun m!1138357 () Bool)

(assert (=> d!135343 m!1138357))

(declare-fun m!1138359 () Bool)

(assert (=> d!135343 m!1138359))

(declare-fun m!1138361 () Bool)

(assert (=> b!1234319 m!1138361))

(assert (=> b!1234226 d!135343))

(declare-fun d!135353 () Bool)

(declare-fun lt!559799 () Bool)

(assert (=> d!135353 (= lt!559799 (set.member k!2925 (content!586 acc!846)))))

(declare-fun e!700121 () Bool)

(assert (=> d!135353 (= lt!559799 e!700121)))

(declare-fun res!822616 () Bool)

(assert (=> d!135353 (=> (not res!822616) (not e!700121))))

(assert (=> d!135353 (= res!822616 (is-Cons!27332 acc!846))))

(assert (=> d!135353 (= (contains!7251 acc!846 k!2925) lt!559799)))

(declare-fun b!1234324 () Bool)

(declare-fun e!700122 () Bool)

(assert (=> b!1234324 (= e!700121 e!700122)))

(declare-fun res!822615 () Bool)

(assert (=> b!1234324 (=> res!822615 e!700122)))

(assert (=> b!1234324 (= res!822615 (= (h!28541 acc!846) k!2925))))

(declare-fun b!1234325 () Bool)

(assert (=> b!1234325 (= e!700122 (contains!7251 (t!40806 acc!846) k!2925))))

(assert (= (and d!135353 res!822616) b!1234324))

(assert (= (and b!1234324 (not res!822615)) b!1234325))

(assert (=> d!135353 m!1138357))

(declare-fun m!1138363 () Bool)

(assert (=> d!135353 m!1138363))

(declare-fun m!1138365 () Bool)

(assert (=> b!1234325 m!1138365))

(assert (=> b!1234222 d!135353))

(declare-fun d!135355 () Bool)

(declare-fun lt!559800 () Bool)

(assert (=> d!135355 (= lt!559800 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!586 acc!846)))))

(declare-fun e!700123 () Bool)

(assert (=> d!135355 (= lt!559800 e!700123)))

(declare-fun res!822618 () Bool)

(assert (=> d!135355 (=> (not res!822618) (not e!700123))))

(assert (=> d!135355 (= res!822618 (is-Cons!27332 acc!846))))

(assert (=> d!135355 (= (contains!7251 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559800)))

(declare-fun b!1234326 () Bool)

(declare-fun e!700124 () Bool)

(assert (=> b!1234326 (= e!700123 e!700124)))

(declare-fun res!822617 () Bool)

(assert (=> b!1234326 (=> res!822617 e!700124)))

(assert (=> b!1234326 (= res!822617 (= (h!28541 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234327 () Bool)

(assert (=> b!1234327 (= e!700124 (contains!7251 (t!40806 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135355 res!822618) b!1234326))

(assert (= (and b!1234326 (not res!822617)) b!1234327))

(assert (=> d!135355 m!1138357))

(declare-fun m!1138367 () Bool)

(assert (=> d!135355 m!1138367))

(declare-fun m!1138369 () Bool)

(assert (=> b!1234327 m!1138369))

(assert (=> b!1234223 d!135355))

(declare-fun d!135357 () Bool)

(declare-fun res!822635 () Bool)

(declare-fun e!700143 () Bool)

(assert (=> d!135357 (=> res!822635 e!700143)))

(assert (=> d!135357 (= res!822635 (is-Nil!27333 acc!846))))

(assert (=> d!135357 (= (noDuplicate!1858 acc!846) e!700143)))

(declare-fun b!1234348 () Bool)

(declare-fun e!700144 () Bool)

(assert (=> b!1234348 (= e!700143 e!700144)))

(declare-fun res!822636 () Bool)

(assert (=> b!1234348 (=> (not res!822636) (not e!700144))))

(assert (=> b!1234348 (= res!822636 (not (contains!7251 (t!40806 acc!846) (h!28541 acc!846))))))

(declare-fun b!1234349 () Bool)

(assert (=> b!1234349 (= e!700144 (noDuplicate!1858 (t!40806 acc!846)))))

(assert (= (and d!135357 (not res!822635)) b!1234348))

(assert (= (and b!1234348 res!822636) b!1234349))

(declare-fun m!1138385 () Bool)

(assert (=> b!1234348 m!1138385))

(declare-fun m!1138387 () Bool)

(assert (=> b!1234349 m!1138387))

(assert (=> b!1234224 d!135357))

(declare-fun d!135367 () Bool)

(declare-fun res!822667 () Bool)

(declare-fun e!700178 () Bool)

(assert (=> d!135367 (=> res!822667 e!700178)))

(assert (=> d!135367 (= res!822667 (bvsge from!3213 (size!38922 a!3835)))))

(assert (=> d!135367 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!700178)))

(declare-fun b!1234385 () Bool)

(declare-fun e!700180 () Bool)

(declare-fun call!60989 () Bool)

(assert (=> b!1234385 (= e!700180 call!60989)))

(declare-fun e!700179 () Bool)

(declare-fun b!1234386 () Bool)

(assert (=> b!1234386 (= e!700179 (contains!7251 acc!846 (select (arr!38385 a!3835) from!3213)))))

(declare-fun b!1234387 () Bool)

(declare-fun e!700177 () Bool)

(assert (=> b!1234387 (= e!700178 e!700177)))

(declare-fun res!822666 () Bool)

(assert (=> b!1234387 (=> (not res!822666) (not e!700177))))

(assert (=> b!1234387 (= res!822666 (not e!700179))))

(declare-fun res!822668 () Bool)

(assert (=> b!1234387 (=> (not res!822668) (not e!700179))))

(assert (=> b!1234387 (= res!822668 (validKeyInArray!0 (select (arr!38385 a!3835) from!3213)))))

(declare-fun b!1234388 () Bool)

(assert (=> b!1234388 (= e!700177 e!700180)))

(declare-fun c!120722 () Bool)

(assert (=> b!1234388 (= c!120722 (validKeyInArray!0 (select (arr!38385 a!3835) from!3213)))))

(declare-fun b!1234389 () Bool)

(assert (=> b!1234389 (= e!700180 call!60989)))

(declare-fun bm!60986 () Bool)

(assert (=> bm!60986 (= call!60989 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120722 (Cons!27332 (select (arr!38385 a!3835) from!3213) acc!846) acc!846)))))

(assert (= (and d!135367 (not res!822667)) b!1234387))

(assert (= (and b!1234387 res!822668) b!1234386))

(assert (= (and b!1234387 res!822666) b!1234388))

(assert (= (and b!1234388 c!120722) b!1234385))

(assert (= (and b!1234388 (not c!120722)) b!1234389))

(assert (= (or b!1234385 b!1234389) bm!60986))

(assert (=> b!1234386 m!1138277))

(assert (=> b!1234386 m!1138277))

(declare-fun m!1138407 () Bool)

(assert (=> b!1234386 m!1138407))

(assert (=> b!1234387 m!1138277))

(assert (=> b!1234387 m!1138277))

(assert (=> b!1234387 m!1138283))

(assert (=> b!1234388 m!1138277))

(assert (=> b!1234388 m!1138277))

(assert (=> b!1234388 m!1138283))

(assert (=> bm!60986 m!1138277))

(declare-fun m!1138409 () Bool)

(assert (=> bm!60986 m!1138409))

(assert (=> b!1234225 d!135367))

(declare-fun d!135383 () Bool)

(assert (=> d!135383 (= (array_inv!29161 a!3835) (bvsge (size!38922 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!102728 d!135383))

(declare-fun d!135385 () Bool)

(assert (=> d!135385 (= (validKeyInArray!0 (select (arr!38385 a!3835) from!3213)) (and (not (= (select (arr!38385 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38385 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1234220 d!135385))

(push 1)

