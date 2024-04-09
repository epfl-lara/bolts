; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60392 () Bool)

(assert start!60392)

(declare-fun b!678352 () Bool)

(declare-fun res!444935 () Bool)

(declare-fun e!386545 () Bool)

(assert (=> b!678352 (=> (not res!444935) (not e!386545))))

(declare-fun e!386543 () Bool)

(assert (=> b!678352 (= res!444935 e!386543)))

(declare-fun res!444947 () Bool)

(assert (=> b!678352 (=> res!444947 e!386543)))

(declare-fun e!386544 () Bool)

(assert (=> b!678352 (= res!444947 e!386544)))

(declare-fun res!444941 () Bool)

(assert (=> b!678352 (=> (not res!444941) (not e!386544))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678352 (= res!444941 (bvsgt from!3004 i!1382))))

(declare-fun b!678353 () Bool)

(declare-fun res!444939 () Bool)

(assert (=> b!678353 (=> (not res!444939) (not e!386545))))

(declare-datatypes ((List!12980 0))(
  ( (Nil!12977) (Cons!12976 (h!14021 (_ BitVec 64)) (t!19216 List!12980)) )
))
(declare-fun acc!681 () List!12980)

(declare-fun noDuplicate!770 (List!12980) Bool)

(assert (=> b!678353 (= res!444939 (noDuplicate!770 acc!681))))

(declare-fun b!678354 () Bool)

(declare-fun e!386541 () Bool)

(assert (=> b!678354 (= e!386543 e!386541)))

(declare-fun res!444946 () Bool)

(assert (=> b!678354 (=> (not res!444946) (not e!386541))))

(assert (=> b!678354 (= res!444946 (bvsle from!3004 i!1382))))

(declare-fun b!678355 () Bool)

(declare-fun res!444938 () Bool)

(assert (=> b!678355 (=> (not res!444938) (not e!386545))))

(declare-fun contains!3523 (List!12980 (_ BitVec 64)) Bool)

(assert (=> b!678355 (= res!444938 (not (contains!3523 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678356 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!678356 (= e!386544 (contains!3523 acc!681 k0!2843))))

(declare-fun b!678357 () Bool)

(declare-fun res!444937 () Bool)

(assert (=> b!678357 (=> (not res!444937) (not e!386545))))

(assert (=> b!678357 (= res!444937 (not (contains!3523 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678358 () Bool)

(declare-fun res!444936 () Bool)

(assert (=> b!678358 (=> (not res!444936) (not e!386545))))

(declare-datatypes ((array!39395 0))(
  ( (array!39396 (arr!18886 (Array (_ BitVec 32) (_ BitVec 64))) (size!19250 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39395)

(declare-fun arrayContainsKey!0 (array!39395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678358 (= res!444936 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678359 () Bool)

(declare-fun res!444945 () Bool)

(assert (=> b!678359 (=> (not res!444945) (not e!386545))))

(declare-fun arrayNoDuplicates!0 (array!39395 (_ BitVec 32) List!12980) Bool)

(assert (=> b!678359 (= res!444945 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678360 () Bool)

(declare-fun res!444940 () Bool)

(assert (=> b!678360 (=> (not res!444940) (not e!386545))))

(assert (=> b!678360 (= res!444940 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19250 a!3626))))))

(declare-fun res!444942 () Bool)

(assert (=> start!60392 (=> (not res!444942) (not e!386545))))

(assert (=> start!60392 (= res!444942 (and (bvslt (size!19250 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19250 a!3626))))))

(assert (=> start!60392 e!386545))

(assert (=> start!60392 true))

(declare-fun array_inv!14660 (array!39395) Bool)

(assert (=> start!60392 (array_inv!14660 a!3626)))

(declare-fun b!678361 () Bool)

(declare-fun res!444943 () Bool)

(assert (=> b!678361 (=> (not res!444943) (not e!386545))))

(assert (=> b!678361 (= res!444943 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12977))))

(declare-fun b!678362 () Bool)

(declare-fun res!444944 () Bool)

(assert (=> b!678362 (=> (not res!444944) (not e!386545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678362 (= res!444944 (validKeyInArray!0 k0!2843))))

(declare-fun b!678363 () Bool)

(assert (=> b!678363 (= e!386545 (not (arrayContainsKey!0 (array!39396 (store (arr!18886 a!3626) i!1382 k0!2843) (size!19250 a!3626)) k0!2843 from!3004)))))

(declare-fun b!678364 () Bool)

(declare-fun res!444934 () Bool)

(assert (=> b!678364 (=> (not res!444934) (not e!386545))))

(assert (=> b!678364 (= res!444934 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19250 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!678365 () Bool)

(assert (=> b!678365 (= e!386541 (not (contains!3523 acc!681 k0!2843)))))

(assert (= (and start!60392 res!444942) b!678353))

(assert (= (and b!678353 res!444939) b!678355))

(assert (= (and b!678355 res!444938) b!678357))

(assert (= (and b!678357 res!444937) b!678352))

(assert (= (and b!678352 res!444941) b!678356))

(assert (= (and b!678352 (not res!444947)) b!678354))

(assert (= (and b!678354 res!444946) b!678365))

(assert (= (and b!678352 res!444935) b!678361))

(assert (= (and b!678361 res!444943) b!678359))

(assert (= (and b!678359 res!444945) b!678360))

(assert (= (and b!678360 res!444940) b!678362))

(assert (= (and b!678362 res!444944) b!678358))

(assert (= (and b!678358 res!444936) b!678364))

(assert (= (and b!678364 res!444934) b!678363))

(declare-fun m!644137 () Bool)

(assert (=> b!678355 m!644137))

(declare-fun m!644139 () Bool)

(assert (=> start!60392 m!644139))

(declare-fun m!644141 () Bool)

(assert (=> b!678361 m!644141))

(declare-fun m!644143 () Bool)

(assert (=> b!678362 m!644143))

(declare-fun m!644145 () Bool)

(assert (=> b!678353 m!644145))

(declare-fun m!644147 () Bool)

(assert (=> b!678358 m!644147))

(declare-fun m!644149 () Bool)

(assert (=> b!678357 m!644149))

(declare-fun m!644151 () Bool)

(assert (=> b!678356 m!644151))

(assert (=> b!678365 m!644151))

(declare-fun m!644153 () Bool)

(assert (=> b!678359 m!644153))

(declare-fun m!644155 () Bool)

(assert (=> b!678363 m!644155))

(declare-fun m!644157 () Bool)

(assert (=> b!678363 m!644157))

(check-sat (not b!678358) (not b!678356) (not start!60392) (not b!678353) (not b!678361) (not b!678359) (not b!678362) (not b!678365) (not b!678363) (not b!678355) (not b!678357))
(check-sat)
(get-model)

(declare-fun call!33916 () Bool)

(declare-fun bm!33913 () Bool)

(declare-fun c!77080 () Bool)

(assert (=> bm!33913 (= call!33916 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77080 (Cons!12976 (select (arr!18886 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!678438 () Bool)

(declare-fun e!386587 () Bool)

(declare-fun e!386590 () Bool)

(assert (=> b!678438 (= e!386587 e!386590)))

(assert (=> b!678438 (= c!77080 (validKeyInArray!0 (select (arr!18886 a!3626) from!3004)))))

(declare-fun b!678439 () Bool)

(assert (=> b!678439 (= e!386590 call!33916)))

(declare-fun d!93297 () Bool)

(declare-fun res!445013 () Bool)

(declare-fun e!386588 () Bool)

(assert (=> d!93297 (=> res!445013 e!386588)))

(assert (=> d!93297 (= res!445013 (bvsge from!3004 (size!19250 a!3626)))))

(assert (=> d!93297 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!386588)))

(declare-fun b!678440 () Bool)

(assert (=> b!678440 (= e!386588 e!386587)))

(declare-fun res!445012 () Bool)

(assert (=> b!678440 (=> (not res!445012) (not e!386587))))

(declare-fun e!386589 () Bool)

(assert (=> b!678440 (= res!445012 (not e!386589))))

(declare-fun res!445014 () Bool)

(assert (=> b!678440 (=> (not res!445014) (not e!386589))))

(assert (=> b!678440 (= res!445014 (validKeyInArray!0 (select (arr!18886 a!3626) from!3004)))))

(declare-fun b!678441 () Bool)

(assert (=> b!678441 (= e!386589 (contains!3523 acc!681 (select (arr!18886 a!3626) from!3004)))))

(declare-fun b!678442 () Bool)

(assert (=> b!678442 (= e!386590 call!33916)))

(assert (= (and d!93297 (not res!445013)) b!678440))

(assert (= (and b!678440 res!445014) b!678441))

(assert (= (and b!678440 res!445012) b!678438))

(assert (= (and b!678438 c!77080) b!678439))

(assert (= (and b!678438 (not c!77080)) b!678442))

(assert (= (or b!678439 b!678442) bm!33913))

(declare-fun m!644185 () Bool)

(assert (=> bm!33913 m!644185))

(declare-fun m!644189 () Bool)

(assert (=> bm!33913 m!644189))

(assert (=> b!678438 m!644185))

(assert (=> b!678438 m!644185))

(declare-fun m!644193 () Bool)

(assert (=> b!678438 m!644193))

(assert (=> b!678440 m!644185))

(assert (=> b!678440 m!644185))

(assert (=> b!678440 m!644193))

(assert (=> b!678441 m!644185))

(assert (=> b!678441 m!644185))

(declare-fun m!644197 () Bool)

(assert (=> b!678441 m!644197))

(assert (=> b!678359 d!93297))

(declare-fun d!93307 () Bool)

(declare-fun res!445028 () Bool)

(declare-fun e!386605 () Bool)

(assert (=> d!93307 (=> res!445028 e!386605)))

(get-info :version)

(assert (=> d!93307 (= res!445028 ((_ is Nil!12977) acc!681))))

(assert (=> d!93307 (= (noDuplicate!770 acc!681) e!386605)))

(declare-fun b!678458 () Bool)

(declare-fun e!386606 () Bool)

(assert (=> b!678458 (= e!386605 e!386606)))

(declare-fun res!445029 () Bool)

(assert (=> b!678458 (=> (not res!445029) (not e!386606))))

(assert (=> b!678458 (= res!445029 (not (contains!3523 (t!19216 acc!681) (h!14021 acc!681))))))

(declare-fun b!678459 () Bool)

(assert (=> b!678459 (= e!386606 (noDuplicate!770 (t!19216 acc!681)))))

(assert (= (and d!93307 (not res!445028)) b!678458))

(assert (= (and b!678458 res!445029) b!678459))

(declare-fun m!644205 () Bool)

(assert (=> b!678458 m!644205))

(declare-fun m!644207 () Bool)

(assert (=> b!678459 m!644207))

(assert (=> b!678353 d!93307))

(declare-fun d!93313 () Bool)

(declare-fun res!445050 () Bool)

(declare-fun e!386627 () Bool)

(assert (=> d!93313 (=> res!445050 e!386627)))

(assert (=> d!93313 (= res!445050 (= (select (arr!18886 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!93313 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!386627)))

(declare-fun b!678480 () Bool)

(declare-fun e!386628 () Bool)

(assert (=> b!678480 (= e!386627 e!386628)))

(declare-fun res!445051 () Bool)

(assert (=> b!678480 (=> (not res!445051) (not e!386628))))

(assert (=> b!678480 (= res!445051 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19250 a!3626)))))

(declare-fun b!678481 () Bool)

(assert (=> b!678481 (= e!386628 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93313 (not res!445050)) b!678480))

(assert (= (and b!678480 res!445051) b!678481))

(declare-fun m!644237 () Bool)

(assert (=> d!93313 m!644237))

(declare-fun m!644239 () Bool)

(assert (=> b!678481 m!644239))

(assert (=> b!678358 d!93313))

(declare-fun d!93327 () Bool)

(declare-fun res!445056 () Bool)

(declare-fun e!386633 () Bool)

(assert (=> d!93327 (=> res!445056 e!386633)))

(assert (=> d!93327 (= res!445056 (= (select (arr!18886 (array!39396 (store (arr!18886 a!3626) i!1382 k0!2843) (size!19250 a!3626))) from!3004) k0!2843))))

(assert (=> d!93327 (= (arrayContainsKey!0 (array!39396 (store (arr!18886 a!3626) i!1382 k0!2843) (size!19250 a!3626)) k0!2843 from!3004) e!386633)))

(declare-fun b!678486 () Bool)

(declare-fun e!386634 () Bool)

(assert (=> b!678486 (= e!386633 e!386634)))

(declare-fun res!445057 () Bool)

(assert (=> b!678486 (=> (not res!445057) (not e!386634))))

(assert (=> b!678486 (= res!445057 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19250 (array!39396 (store (arr!18886 a!3626) i!1382 k0!2843) (size!19250 a!3626)))))))

(declare-fun b!678487 () Bool)

(assert (=> b!678487 (= e!386634 (arrayContainsKey!0 (array!39396 (store (arr!18886 a!3626) i!1382 k0!2843) (size!19250 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93327 (not res!445056)) b!678486))

(assert (= (and b!678486 res!445057) b!678487))

(declare-fun m!644241 () Bool)

(assert (=> d!93327 m!644241))

(declare-fun m!644243 () Bool)

(assert (=> b!678487 m!644243))

(assert (=> b!678363 d!93327))

(declare-fun d!93329 () Bool)

(declare-fun lt!312847 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!264 (List!12980) (InoxSet (_ BitVec 64)))

(assert (=> d!93329 (= lt!312847 (select (content!264 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!386656 () Bool)

(assert (=> d!93329 (= lt!312847 e!386656)))

(declare-fun res!445075 () Bool)

(assert (=> d!93329 (=> (not res!445075) (not e!386656))))

(assert (=> d!93329 (= res!445075 ((_ is Cons!12976) acc!681))))

(assert (=> d!93329 (= (contains!3523 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!312847)))

(declare-fun b!678511 () Bool)

(declare-fun e!386655 () Bool)

(assert (=> b!678511 (= e!386656 e!386655)))

(declare-fun res!445076 () Bool)

(assert (=> b!678511 (=> res!445076 e!386655)))

(assert (=> b!678511 (= res!445076 (= (h!14021 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!678512 () Bool)

(assert (=> b!678512 (= e!386655 (contains!3523 (t!19216 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93329 res!445075) b!678511))

(assert (= (and b!678511 (not res!445076)) b!678512))

(declare-fun m!644261 () Bool)

(assert (=> d!93329 m!644261))

(declare-fun m!644263 () Bool)

(assert (=> d!93329 m!644263))

(declare-fun m!644265 () Bool)

(assert (=> b!678512 m!644265))

(assert (=> b!678357 d!93329))

(declare-fun d!93339 () Bool)

(assert (=> d!93339 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!678362 d!93339))

(declare-fun d!93343 () Bool)

(assert (=> d!93343 (= (array_inv!14660 a!3626) (bvsge (size!19250 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60392 d!93343))

(declare-fun d!93345 () Bool)

(declare-fun lt!312848 () Bool)

(assert (=> d!93345 (= lt!312848 (select (content!264 acc!681) k0!2843))))

(declare-fun e!386658 () Bool)

(assert (=> d!93345 (= lt!312848 e!386658)))

(declare-fun res!445077 () Bool)

(assert (=> d!93345 (=> (not res!445077) (not e!386658))))

(assert (=> d!93345 (= res!445077 ((_ is Cons!12976) acc!681))))

(assert (=> d!93345 (= (contains!3523 acc!681 k0!2843) lt!312848)))

(declare-fun b!678513 () Bool)

(declare-fun e!386657 () Bool)

(assert (=> b!678513 (= e!386658 e!386657)))

(declare-fun res!445078 () Bool)

(assert (=> b!678513 (=> res!445078 e!386657)))

(assert (=> b!678513 (= res!445078 (= (h!14021 acc!681) k0!2843))))

(declare-fun b!678514 () Bool)

(assert (=> b!678514 (= e!386657 (contains!3523 (t!19216 acc!681) k0!2843))))

(assert (= (and d!93345 res!445077) b!678513))

(assert (= (and b!678513 (not res!445078)) b!678514))

(assert (=> d!93345 m!644261))

(declare-fun m!644267 () Bool)

(assert (=> d!93345 m!644267))

(declare-fun m!644269 () Bool)

(assert (=> b!678514 m!644269))

(assert (=> b!678356 d!93345))

(declare-fun bm!33919 () Bool)

(declare-fun call!33922 () Bool)

(declare-fun c!77086 () Bool)

(assert (=> bm!33919 (= call!33922 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77086 (Cons!12976 (select (arr!18886 a!3626) #b00000000000000000000000000000000) Nil!12977) Nil!12977)))))

(declare-fun b!678524 () Bool)

(declare-fun e!386667 () Bool)

(declare-fun e!386670 () Bool)

(assert (=> b!678524 (= e!386667 e!386670)))

(assert (=> b!678524 (= c!77086 (validKeyInArray!0 (select (arr!18886 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!678525 () Bool)

(assert (=> b!678525 (= e!386670 call!33922)))

(declare-fun d!93347 () Bool)

(declare-fun res!445087 () Bool)

(declare-fun e!386668 () Bool)

(assert (=> d!93347 (=> res!445087 e!386668)))

(assert (=> d!93347 (= res!445087 (bvsge #b00000000000000000000000000000000 (size!19250 a!3626)))))

(assert (=> d!93347 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12977) e!386668)))

(declare-fun b!678526 () Bool)

(assert (=> b!678526 (= e!386668 e!386667)))

(declare-fun res!445086 () Bool)

(assert (=> b!678526 (=> (not res!445086) (not e!386667))))

(declare-fun e!386669 () Bool)

(assert (=> b!678526 (= res!445086 (not e!386669))))

(declare-fun res!445088 () Bool)

(assert (=> b!678526 (=> (not res!445088) (not e!386669))))

(assert (=> b!678526 (= res!445088 (validKeyInArray!0 (select (arr!18886 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!678527 () Bool)

(assert (=> b!678527 (= e!386669 (contains!3523 Nil!12977 (select (arr!18886 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!678528 () Bool)

(assert (=> b!678528 (= e!386670 call!33922)))

(assert (= (and d!93347 (not res!445087)) b!678526))

(assert (= (and b!678526 res!445088) b!678527))

(assert (= (and b!678526 res!445086) b!678524))

(assert (= (and b!678524 c!77086) b!678525))

(assert (= (and b!678524 (not c!77086)) b!678528))

(assert (= (or b!678525 b!678528) bm!33919))

(assert (=> bm!33919 m!644237))

(declare-fun m!644279 () Bool)

(assert (=> bm!33919 m!644279))

(assert (=> b!678524 m!644237))

(assert (=> b!678524 m!644237))

(declare-fun m!644281 () Bool)

(assert (=> b!678524 m!644281))

(assert (=> b!678526 m!644237))

(assert (=> b!678526 m!644237))

(assert (=> b!678526 m!644281))

(assert (=> b!678527 m!644237))

(assert (=> b!678527 m!644237))

(declare-fun m!644283 () Bool)

(assert (=> b!678527 m!644283))

(assert (=> b!678361 d!93347))

(declare-fun d!93351 () Bool)

(declare-fun lt!312849 () Bool)

(assert (=> d!93351 (= lt!312849 (select (content!264 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!386678 () Bool)

(assert (=> d!93351 (= lt!312849 e!386678)))

(declare-fun res!445094 () Bool)

(assert (=> d!93351 (=> (not res!445094) (not e!386678))))

(assert (=> d!93351 (= res!445094 ((_ is Cons!12976) acc!681))))

(assert (=> d!93351 (= (contains!3523 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!312849)))

(declare-fun b!678536 () Bool)

(declare-fun e!386677 () Bool)

(assert (=> b!678536 (= e!386678 e!386677)))

(declare-fun res!445095 () Bool)

(assert (=> b!678536 (=> res!445095 e!386677)))

(assert (=> b!678536 (= res!445095 (= (h!14021 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!678537 () Bool)

(assert (=> b!678537 (= e!386677 (contains!3523 (t!19216 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93351 res!445094) b!678536))

(assert (= (and b!678536 (not res!445095)) b!678537))

(assert (=> d!93351 m!644261))

(declare-fun m!644287 () Bool)

(assert (=> d!93351 m!644287))

(declare-fun m!644289 () Bool)

(assert (=> b!678537 m!644289))

(assert (=> b!678355 d!93351))

(assert (=> b!678365 d!93345))

(check-sat (not b!678458) (not d!93329) (not b!678440) (not b!678537) (not b!678524) (not bm!33913) (not b!678527) (not b!678487) (not bm!33919) (not b!678481) (not b!678526) (not b!678514) (not d!93345) (not b!678459) (not d!93351) (not b!678512) (not b!678441) (not b!678438))
(check-sat)
