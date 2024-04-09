; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114936 () Bool)

(assert start!114936)

(declare-fun b!1362208 () Bool)

(declare-datatypes ((Unit!44864 0))(
  ( (Unit!44865) )
))
(declare-fun e!772683 () Unit!44864)

(declare-fun Unit!44866 () Unit!44864)

(assert (=> b!1362208 (= e!772683 Unit!44866)))

(declare-fun b!1362209 () Bool)

(declare-fun res!906350 () Bool)

(declare-fun e!772681 () Bool)

(assert (=> b!1362209 (=> (not res!906350) (not e!772681))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362209 (= res!906350 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!906361 () Bool)

(assert (=> start!114936 (=> (not res!906361) (not e!772681))))

(declare-datatypes ((array!92594 0))(
  ( (array!92595 (arr!44727 (Array (_ BitVec 32) (_ BitVec 64))) (size!45278 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92594)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114936 (= res!906361 (and (bvslt (size!45278 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45278 a!3742))))))

(assert (=> start!114936 e!772681))

(assert (=> start!114936 true))

(declare-fun array_inv!33672 (array!92594) Bool)

(assert (=> start!114936 (array_inv!33672 a!3742)))

(declare-fun b!1362210 () Bool)

(declare-fun res!906349 () Bool)

(assert (=> b!1362210 (=> (not res!906349) (not e!772681))))

(declare-datatypes ((List!31948 0))(
  ( (Nil!31945) (Cons!31944 (h!33153 (_ BitVec 64)) (t!46640 List!31948)) )
))
(declare-fun acc!759 () List!31948)

(declare-fun arrayNoDuplicates!0 (array!92594 (_ BitVec 32) List!31948) Bool)

(assert (=> b!1362210 (= res!906349 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362211 () Bool)

(declare-fun res!906351 () Bool)

(assert (=> b!1362211 (=> (not res!906351) (not e!772681))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362211 (= res!906351 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45278 a!3742))))))

(declare-fun e!772684 () Bool)

(declare-fun b!1362212 () Bool)

(declare-fun lt!600396 () array!92594)

(assert (=> b!1362212 (= e!772684 (not (arrayNoDuplicates!0 lt!600396 from!3120 acc!759)))))

(declare-fun lt!600398 () List!31948)

(assert (=> b!1362212 (arrayNoDuplicates!0 lt!600396 (bvadd #b00000000000000000000000000000001 from!3120) lt!600398)))

(assert (=> b!1362212 (= lt!600396 (array!92595 (store (arr!44727 a!3742) i!1404 l!3587) (size!45278 a!3742)))))

(declare-fun lt!600399 () Unit!44864)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92594 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31948) Unit!44864)

(assert (=> b!1362212 (= lt!600399 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!600398))))

(declare-fun b!1362213 () Bool)

(declare-fun res!906362 () Bool)

(assert (=> b!1362213 (=> (not res!906362) (not e!772681))))

(declare-fun noDuplicate!2392 (List!31948) Bool)

(assert (=> b!1362213 (= res!906362 (noDuplicate!2392 acc!759))))

(declare-fun b!1362214 () Bool)

(declare-fun res!906354 () Bool)

(assert (=> b!1362214 (=> (not res!906354) (not e!772681))))

(declare-fun contains!9513 (List!31948 (_ BitVec 64)) Bool)

(assert (=> b!1362214 (= res!906354 (not (contains!9513 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362215 () Bool)

(declare-fun res!906356 () Bool)

(assert (=> b!1362215 (=> (not res!906356) (not e!772684))))

(assert (=> b!1362215 (= res!906356 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600398))))

(declare-fun b!1362216 () Bool)

(declare-fun res!906359 () Bool)

(assert (=> b!1362216 (=> (not res!906359) (not e!772681))))

(assert (=> b!1362216 (= res!906359 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31945))))

(declare-fun b!1362217 () Bool)

(declare-fun e!772682 () Bool)

(assert (=> b!1362217 (= e!772681 e!772682)))

(declare-fun res!906360 () Bool)

(assert (=> b!1362217 (=> (not res!906360) (not e!772682))))

(declare-fun lt!600397 () Bool)

(assert (=> b!1362217 (= res!906360 (and (not (= from!3120 i!1404)) lt!600397))))

(declare-fun lt!600395 () Unit!44864)

(assert (=> b!1362217 (= lt!600395 e!772683)))

(declare-fun c!127372 () Bool)

(assert (=> b!1362217 (= c!127372 lt!600397)))

(assert (=> b!1362217 (= lt!600397 (validKeyInArray!0 (select (arr!44727 a!3742) from!3120)))))

(declare-fun b!1362218 () Bool)

(declare-fun res!906358 () Bool)

(assert (=> b!1362218 (=> (not res!906358) (not e!772684))))

(assert (=> b!1362218 (= res!906358 (noDuplicate!2392 lt!600398))))

(declare-fun b!1362219 () Bool)

(declare-fun res!906353 () Bool)

(assert (=> b!1362219 (=> (not res!906353) (not e!772681))))

(assert (=> b!1362219 (= res!906353 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45278 a!3742)))))

(declare-fun b!1362220 () Bool)

(declare-fun res!906355 () Bool)

(assert (=> b!1362220 (=> (not res!906355) (not e!772684))))

(assert (=> b!1362220 (= res!906355 (not (contains!9513 lt!600398 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362221 () Bool)

(declare-fun lt!600400 () Unit!44864)

(assert (=> b!1362221 (= e!772683 lt!600400)))

(declare-fun lt!600401 () Unit!44864)

(declare-fun lemmaListSubSeqRefl!0 (List!31948) Unit!44864)

(assert (=> b!1362221 (= lt!600401 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!904 (List!31948 List!31948) Bool)

(assert (=> b!1362221 (subseq!904 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92594 List!31948 List!31948 (_ BitVec 32)) Unit!44864)

(declare-fun $colon$colon!909 (List!31948 (_ BitVec 64)) List!31948)

(assert (=> b!1362221 (= lt!600400 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!909 acc!759 (select (arr!44727 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362221 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362222 () Bool)

(declare-fun res!906363 () Bool)

(assert (=> b!1362222 (=> (not res!906363) (not e!772681))))

(assert (=> b!1362222 (= res!906363 (not (contains!9513 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362223 () Bool)

(declare-fun res!906352 () Bool)

(assert (=> b!1362223 (=> (not res!906352) (not e!772684))))

(assert (=> b!1362223 (= res!906352 (not (contains!9513 lt!600398 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362224 () Bool)

(assert (=> b!1362224 (= e!772682 e!772684)))

(declare-fun res!906357 () Bool)

(assert (=> b!1362224 (=> (not res!906357) (not e!772684))))

(assert (=> b!1362224 (= res!906357 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1362224 (= lt!600398 ($colon$colon!909 acc!759 (select (arr!44727 a!3742) from!3120)))))

(assert (= (and start!114936 res!906361) b!1362213))

(assert (= (and b!1362213 res!906362) b!1362214))

(assert (= (and b!1362214 res!906354) b!1362222))

(assert (= (and b!1362222 res!906363) b!1362216))

(assert (= (and b!1362216 res!906359) b!1362210))

(assert (= (and b!1362210 res!906349) b!1362211))

(assert (= (and b!1362211 res!906351) b!1362209))

(assert (= (and b!1362209 res!906350) b!1362219))

(assert (= (and b!1362219 res!906353) b!1362217))

(assert (= (and b!1362217 c!127372) b!1362221))

(assert (= (and b!1362217 (not c!127372)) b!1362208))

(assert (= (and b!1362217 res!906360) b!1362224))

(assert (= (and b!1362224 res!906357) b!1362218))

(assert (= (and b!1362218 res!906358) b!1362223))

(assert (= (and b!1362223 res!906352) b!1362220))

(assert (= (and b!1362220 res!906355) b!1362215))

(assert (= (and b!1362215 res!906356) b!1362212))

(declare-fun m!1247183 () Bool)

(assert (=> start!114936 m!1247183))

(declare-fun m!1247185 () Bool)

(assert (=> b!1362220 m!1247185))

(declare-fun m!1247187 () Bool)

(assert (=> b!1362212 m!1247187))

(declare-fun m!1247189 () Bool)

(assert (=> b!1362212 m!1247189))

(declare-fun m!1247191 () Bool)

(assert (=> b!1362212 m!1247191))

(declare-fun m!1247193 () Bool)

(assert (=> b!1362212 m!1247193))

(declare-fun m!1247195 () Bool)

(assert (=> b!1362223 m!1247195))

(declare-fun m!1247197 () Bool)

(assert (=> b!1362216 m!1247197))

(declare-fun m!1247199 () Bool)

(assert (=> b!1362213 m!1247199))

(declare-fun m!1247201 () Bool)

(assert (=> b!1362217 m!1247201))

(assert (=> b!1362217 m!1247201))

(declare-fun m!1247203 () Bool)

(assert (=> b!1362217 m!1247203))

(declare-fun m!1247205 () Bool)

(assert (=> b!1362222 m!1247205))

(declare-fun m!1247207 () Bool)

(assert (=> b!1362214 m!1247207))

(declare-fun m!1247209 () Bool)

(assert (=> b!1362210 m!1247209))

(declare-fun m!1247211 () Bool)

(assert (=> b!1362221 m!1247211))

(assert (=> b!1362221 m!1247201))

(declare-fun m!1247213 () Bool)

(assert (=> b!1362221 m!1247213))

(declare-fun m!1247215 () Bool)

(assert (=> b!1362221 m!1247215))

(declare-fun m!1247217 () Bool)

(assert (=> b!1362221 m!1247217))

(assert (=> b!1362221 m!1247201))

(assert (=> b!1362221 m!1247213))

(declare-fun m!1247219 () Bool)

(assert (=> b!1362221 m!1247219))

(declare-fun m!1247221 () Bool)

(assert (=> b!1362209 m!1247221))

(declare-fun m!1247223 () Bool)

(assert (=> b!1362215 m!1247223))

(declare-fun m!1247225 () Bool)

(assert (=> b!1362218 m!1247225))

(assert (=> b!1362224 m!1247201))

(assert (=> b!1362224 m!1247201))

(assert (=> b!1362224 m!1247213))

(push 1)

(assert (not b!1362210))

(assert (not b!1362214))

(assert (not b!1362222))

(assert (not b!1362223))

(assert (not b!1362221))

(assert (not b!1362212))

(assert (not b!1362213))

(assert (not b!1362218))

(assert (not b!1362217))

(assert (not b!1362220))

(assert (not start!114936))

(assert (not b!1362216))

(assert (not b!1362215))

(assert (not b!1362224))

(assert (not b!1362209))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145889 () Bool)

(declare-fun lt!600414 () Bool)

(declare-fun content!707 (List!31948) (Set (_ BitVec 64)))

(assert (=> d!145889 (= lt!600414 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!707 lt!600398)))))

(declare-fun e!772724 () Bool)

(assert (=> d!145889 (= lt!600414 e!772724)))

(declare-fun res!906403 () Bool)

(assert (=> d!145889 (=> (not res!906403) (not e!772724))))

(assert (=> d!145889 (= res!906403 (is-Cons!31944 lt!600398))))

(assert (=> d!145889 (= (contains!9513 lt!600398 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600414)))

(declare-fun b!1362263 () Bool)

(declare-fun e!772723 () Bool)

(assert (=> b!1362263 (= e!772724 e!772723)))

(declare-fun res!906404 () Bool)

(assert (=> b!1362263 (=> res!906404 e!772723)))

(assert (=> b!1362263 (= res!906404 (= (h!33153 lt!600398) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362264 () Bool)

(assert (=> b!1362264 (= e!772723 (contains!9513 (t!46640 lt!600398) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145889 res!906403) b!1362263))

(assert (= (and b!1362263 (not res!906404)) b!1362264))

(declare-fun m!1247259 () Bool)

(assert (=> d!145889 m!1247259))

(declare-fun m!1247263 () Bool)

(assert (=> d!145889 m!1247263))

(declare-fun m!1247267 () Bool)

(assert (=> b!1362264 m!1247267))

(assert (=> b!1362220 d!145889))

(declare-fun d!145895 () Bool)

(assert (=> d!145895 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1362209 d!145895))

(declare-fun d!145899 () Bool)

(declare-fun res!906424 () Bool)

(declare-fun e!772747 () Bool)

(assert (=> d!145899 (=> res!906424 e!772747)))

(assert (=> d!145899 (= res!906424 (is-Nil!31945 lt!600398))))

(assert (=> d!145899 (= (noDuplicate!2392 lt!600398) e!772747)))

(declare-fun b!1362289 () Bool)

(declare-fun e!772748 () Bool)

(assert (=> b!1362289 (= e!772747 e!772748)))

(declare-fun res!906425 () Bool)

(assert (=> b!1362289 (=> (not res!906425) (not e!772748))))

(assert (=> b!1362289 (= res!906425 (not (contains!9513 (t!46640 lt!600398) (h!33153 lt!600398))))))

(declare-fun b!1362290 () Bool)

(assert (=> b!1362290 (= e!772748 (noDuplicate!2392 (t!46640 lt!600398)))))

(assert (= (and d!145899 (not res!906424)) b!1362289))

(assert (= (and b!1362289 res!906425) b!1362290))

(declare-fun m!1247279 () Bool)

(assert (=> b!1362289 m!1247279))

(declare-fun m!1247281 () Bool)

(assert (=> b!1362290 m!1247281))

(assert (=> b!1362218 d!145899))

(declare-fun d!145903 () Bool)

(assert (=> d!145903 (= (array_inv!33672 a!3742) (bvsge (size!45278 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114936 d!145903))

(declare-fun d!145905 () Bool)

(assert (=> d!145905 (= (validKeyInArray!0 (select (arr!44727 a!3742) from!3120)) (and (not (= (select (arr!44727 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44727 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1362217 d!145905))

(declare-fun b!1362333 () Bool)

(declare-fun e!772785 () Bool)

(declare-fun call!65380 () Bool)

(assert (=> b!1362333 (= e!772785 call!65380)))

(declare-fun bm!65377 () Bool)

(declare-fun c!127381 () Bool)

(assert (=> bm!65377 (= call!65380 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127381 (Cons!31944 (select (arr!44727 a!3742) #b00000000000000000000000000000000) Nil!31945) Nil!31945)))))

(declare-fun b!1362334 () Bool)

(declare-fun e!772787 () Bool)

(assert (=> b!1362334 (= e!772787 (contains!9513 Nil!31945 (select (arr!44727 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1362335 () Bool)

(declare-fun e!772788 () Bool)

(assert (=> b!1362335 (= e!772788 e!772785)))

(assert (=> b!1362335 (= c!127381 (validKeyInArray!0 (select (arr!44727 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1362336 () Bool)

(declare-fun e!772786 () Bool)

(assert (=> b!1362336 (= e!772786 e!772788)))

(declare-fun res!906458 () Bool)

(assert (=> b!1362336 (=> (not res!906458) (not e!772788))))

(assert (=> b!1362336 (= res!906458 (not e!772787))))

(declare-fun res!906456 () Bool)

(assert (=> b!1362336 (=> (not res!906456) (not e!772787))))

(assert (=> b!1362336 (= res!906456 (validKeyInArray!0 (select (arr!44727 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1362337 () Bool)

(assert (=> b!1362337 (= e!772785 call!65380)))

(declare-fun d!145907 () Bool)

(declare-fun res!906457 () Bool)

(assert (=> d!145907 (=> res!906457 e!772786)))

(assert (=> d!145907 (= res!906457 (bvsge #b00000000000000000000000000000000 (size!45278 a!3742)))))

(assert (=> d!145907 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31945) e!772786)))

(assert (= (and d!145907 (not res!906457)) b!1362336))

(assert (= (and b!1362336 res!906456) b!1362334))

(assert (= (and b!1362336 res!906458) b!1362335))

(assert (= (and b!1362335 c!127381) b!1362333))

(assert (= (and b!1362335 (not c!127381)) b!1362337))

(assert (= (or b!1362333 b!1362337) bm!65377))

(declare-fun m!1247323 () Bool)

(assert (=> bm!65377 m!1247323))

(declare-fun m!1247325 () Bool)

(assert (=> bm!65377 m!1247325))

(assert (=> b!1362334 m!1247323))

(assert (=> b!1362334 m!1247323))

(declare-fun m!1247327 () Bool)

(assert (=> b!1362334 m!1247327))

(assert (=> b!1362335 m!1247323))

(assert (=> b!1362335 m!1247323))

(declare-fun m!1247329 () Bool)

(assert (=> b!1362335 m!1247329))

(assert (=> b!1362336 m!1247323))

(assert (=> b!1362336 m!1247323))

(assert (=> b!1362336 m!1247329))

(assert (=> b!1362216 d!145907))

(declare-fun b!1362338 () Bool)

(declare-fun e!772789 () Bool)

(declare-fun call!65381 () Bool)

(assert (=> b!1362338 (= e!772789 call!65381)))

(declare-fun c!127382 () Bool)

(declare-fun bm!65378 () Bool)

(assert (=> bm!65378 (= call!65381 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127382 (Cons!31944 (select (arr!44727 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) lt!600398) lt!600398)))))

(declare-fun b!1362339 () Bool)

(declare-fun e!772791 () Bool)

(assert (=> b!1362339 (= e!772791 (contains!9513 lt!600398 (select (arr!44727 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362340 () Bool)

(declare-fun e!772792 () Bool)

(assert (=> b!1362340 (= e!772792 e!772789)))

(assert (=> b!1362340 (= c!127382 (validKeyInArray!0 (select (arr!44727 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362341 () Bool)

(declare-fun e!772790 () Bool)

(assert (=> b!1362341 (= e!772790 e!772792)))

(declare-fun res!906461 () Bool)

(assert (=> b!1362341 (=> (not res!906461) (not e!772792))))

(assert (=> b!1362341 (= res!906461 (not e!772791))))

(declare-fun res!906459 () Bool)

(assert (=> b!1362341 (=> (not res!906459) (not e!772791))))

(assert (=> b!1362341 (= res!906459 (validKeyInArray!0 (select (arr!44727 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362342 () Bool)

(assert (=> b!1362342 (= e!772789 call!65381)))

(declare-fun d!145923 () Bool)

(declare-fun res!906460 () Bool)

(assert (=> d!145923 (=> res!906460 e!772790)))

(assert (=> d!145923 (= res!906460 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45278 a!3742)))))

(assert (=> d!145923 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600398) e!772790)))

(assert (= (and d!145923 (not res!906460)) b!1362341))

(assert (= (and b!1362341 res!906459) b!1362339))

(assert (= (and b!1362341 res!906461) b!1362340))

(assert (= (and b!1362340 c!127382) b!1362338))

(assert (= (and b!1362340 (not c!127382)) b!1362342))

(assert (= (or b!1362338 b!1362342) bm!65378))

(declare-fun m!1247331 () Bool)

(assert (=> bm!65378 m!1247331))

(declare-fun m!1247333 () Bool)

(assert (=> bm!65378 m!1247333))

(assert (=> b!1362339 m!1247331))

(assert (=> b!1362339 m!1247331))

(declare-fun m!1247335 () Bool)

(assert (=> b!1362339 m!1247335))

(assert (=> b!1362340 m!1247331))

(assert (=> b!1362340 m!1247331))

(declare-fun m!1247337 () Bool)

(assert (=> b!1362340 m!1247337))

(assert (=> b!1362341 m!1247331))

(assert (=> b!1362341 m!1247331))

(assert (=> b!1362341 m!1247337))

(assert (=> b!1362215 d!145923))

(declare-fun d!145925 () Bool)

(declare-fun lt!600423 () Bool)

(assert (=> d!145925 (= lt!600423 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!707 acc!759)))))

(declare-fun e!772794 () Bool)

(assert (=> d!145925 (= lt!600423 e!772794)))

(declare-fun res!906462 () Bool)

(assert (=> d!145925 (=> (not res!906462) (not e!772794))))

(assert (=> d!145925 (= res!906462 (is-Cons!31944 acc!759))))

(assert (=> d!145925 (= (contains!9513 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600423)))

(declare-fun b!1362343 () Bool)

(declare-fun e!772793 () Bool)

(assert (=> b!1362343 (= e!772794 e!772793)))

(declare-fun res!906463 () Bool)

(assert (=> b!1362343 (=> res!906463 e!772793)))

(assert (=> b!1362343 (= res!906463 (= (h!33153 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362344 () Bool)

(assert (=> b!1362344 (= e!772793 (contains!9513 (t!46640 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145925 res!906462) b!1362343))

(assert (= (and b!1362343 (not res!906463)) b!1362344))

(declare-fun m!1247339 () Bool)

(assert (=> d!145925 m!1247339))

(declare-fun m!1247341 () Bool)

(assert (=> d!145925 m!1247341))

(declare-fun m!1247343 () Bool)

(assert (=> b!1362344 m!1247343))

(assert (=> b!1362214 d!145925))

(declare-fun d!145927 () Bool)

(assert (=> d!145927 (= ($colon$colon!909 acc!759 (select (arr!44727 a!3742) from!3120)) (Cons!31944 (select (arr!44727 a!3742) from!3120) acc!759))))

(assert (=> b!1362224 d!145927))

(declare-fun d!145929 () Bool)

(declare-fun res!906472 () Bool)

(declare-fun e!772803 () Bool)

(assert (=> d!145929 (=> res!906472 e!772803)))

(assert (=> d!145929 (= res!906472 (is-Nil!31945 acc!759))))

(assert (=> d!145929 (= (noDuplicate!2392 acc!759) e!772803)))

(declare-fun b!1362351 () Bool)

(declare-fun e!772804 () Bool)

(assert (=> b!1362351 (= e!772803 e!772804)))

(declare-fun res!906473 () Bool)

(assert (=> b!1362351 (=> (not res!906473) (not e!772804))))

(assert (=> b!1362351 (= res!906473 (not (contains!9513 (t!46640 acc!759) (h!33153 acc!759))))))

(declare-fun b!1362352 () Bool)

(assert (=> b!1362352 (= e!772804 (noDuplicate!2392 (t!46640 acc!759)))))

(assert (= (and d!145929 (not res!906472)) b!1362351))

(assert (= (and b!1362351 res!906473) b!1362352))

(declare-fun m!1247345 () Bool)

(assert (=> b!1362351 m!1247345))

(declare-fun m!1247347 () Bool)

(assert (=> b!1362352 m!1247347))

(assert (=> b!1362213 d!145929))

(declare-fun b!1362359 () Bool)

(declare-fun e!772807 () Bool)

(declare-fun call!65382 () Bool)

(assert (=> b!1362359 (= e!772807 call!65382)))

(declare-fun bm!65379 () Bool)

(declare-fun c!127385 () Bool)

(assert (=> bm!65379 (= call!65382 (arrayNoDuplicates!0 lt!600396 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127385 (Cons!31944 (select (arr!44727 lt!600396) from!3120) acc!759) acc!759)))))

(declare-fun e!772809 () Bool)

(declare-fun b!1362360 () Bool)

(assert (=> b!1362360 (= e!772809 (contains!9513 acc!759 (select (arr!44727 lt!600396) from!3120)))))

(declare-fun b!1362361 () Bool)

(declare-fun e!772810 () Bool)

(assert (=> b!1362361 (= e!772810 e!772807)))

(assert (=> b!1362361 (= c!127385 (validKeyInArray!0 (select (arr!44727 lt!600396) from!3120)))))

(declare-fun b!1362362 () Bool)

(declare-fun e!772808 () Bool)

(assert (=> b!1362362 (= e!772808 e!772810)))

(declare-fun res!906476 () Bool)

(assert (=> b!1362362 (=> (not res!906476) (not e!772810))))

(assert (=> b!1362362 (= res!906476 (not e!772809))))

(declare-fun res!906474 () Bool)

(assert (=> b!1362362 (=> (not res!906474) (not e!772809))))

(assert (=> b!1362362 (= res!906474 (validKeyInArray!0 (select (arr!44727 lt!600396) from!3120)))))

(declare-fun b!1362363 () Bool)

(assert (=> b!1362363 (= e!772807 call!65382)))

(declare-fun d!145931 () Bool)

(declare-fun res!906475 () Bool)

(assert (=> d!145931 (=> res!906475 e!772808)))

(assert (=> d!145931 (= res!906475 (bvsge from!3120 (size!45278 lt!600396)))))

(assert (=> d!145931 (= (arrayNoDuplicates!0 lt!600396 from!3120 acc!759) e!772808)))

(assert (= (and d!145931 (not res!906475)) b!1362362))

(assert (= (and b!1362362 res!906474) b!1362360))

(assert (= (and b!1362362 res!906476) b!1362361))

(assert (= (and b!1362361 c!127385) b!1362359))

(assert (= (and b!1362361 (not c!127385)) b!1362363))

(assert (= (or b!1362359 b!1362363) bm!65379))

(declare-fun m!1247353 () Bool)

(assert (=> bm!65379 m!1247353))

(declare-fun m!1247355 () Bool)

(assert (=> bm!65379 m!1247355))

(assert (=> b!1362360 m!1247353))

(assert (=> b!1362360 m!1247353))

(declare-fun m!1247357 () Bool)

(assert (=> b!1362360 m!1247357))

(assert (=> b!1362361 m!1247353))

(assert (=> b!1362361 m!1247353))

(declare-fun m!1247359 () Bool)

(assert (=> b!1362361 m!1247359))

(assert (=> b!1362362 m!1247353))

(assert (=> b!1362362 m!1247353))

(assert (=> b!1362362 m!1247359))

(assert (=> b!1362212 d!145931))

(declare-fun b!1362370 () Bool)

(declare-fun e!772816 () Bool)

(declare-fun call!65386 () Bool)

(assert (=> b!1362370 (= e!772816 call!65386)))

(declare-fun c!127387 () Bool)

(declare-fun bm!65383 () Bool)

(assert (=> bm!65383 (= call!65386 (arrayNoDuplicates!0 lt!600396 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127387 (Cons!31944 (select (arr!44727 lt!600396) (bvadd #b00000000000000000000000000000001 from!3120)) lt!600398) lt!600398)))))

(declare-fun b!1362371 () Bool)

(declare-fun e!772818 () Bool)

(assert (=> b!1362371 (= e!772818 (contains!9513 lt!600398 (select (arr!44727 lt!600396) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362372 () Bool)

(declare-fun e!772819 () Bool)

(assert (=> b!1362372 (= e!772819 e!772816)))

(assert (=> b!1362372 (= c!127387 (validKeyInArray!0 (select (arr!44727 lt!600396) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362373 () Bool)

(declare-fun e!772817 () Bool)

(assert (=> b!1362373 (= e!772817 e!772819)))

(declare-fun res!906483 () Bool)

(assert (=> b!1362373 (=> (not res!906483) (not e!772819))))

(assert (=> b!1362373 (= res!906483 (not e!772818))))

(declare-fun res!906481 () Bool)

(assert (=> b!1362373 (=> (not res!906481) (not e!772818))))

(assert (=> b!1362373 (= res!906481 (validKeyInArray!0 (select (arr!44727 lt!600396) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1362374 () Bool)

(assert (=> b!1362374 (= e!772816 call!65386)))

(declare-fun d!145935 () Bool)

(declare-fun res!906482 () Bool)

(assert (=> d!145935 (=> res!906482 e!772817)))

(assert (=> d!145935 (= res!906482 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45278 lt!600396)))))

(assert (=> d!145935 (= (arrayNoDuplicates!0 lt!600396 (bvadd #b00000000000000000000000000000001 from!3120) lt!600398) e!772817)))

(assert (= (and d!145935 (not res!906482)) b!1362373))

(assert (= (and b!1362373 res!906481) b!1362371))

(assert (= (and b!1362373 res!906483) b!1362372))

(assert (= (and b!1362372 c!127387) b!1362370))

(assert (= (and b!1362372 (not c!127387)) b!1362374))

(assert (= (or b!1362370 b!1362374) bm!65383))

(declare-fun m!1247365 () Bool)

(assert (=> bm!65383 m!1247365))

(declare-fun m!1247367 () Bool)

(assert (=> bm!65383 m!1247367))

(assert (=> b!1362371 m!1247365))

(assert (=> b!1362371 m!1247365))

(declare-fun m!1247369 () Bool)

(assert (=> b!1362371 m!1247369))

(assert (=> b!1362372 m!1247365))

(assert (=> b!1362372 m!1247365))

(declare-fun m!1247371 () Bool)

(assert (=> b!1362372 m!1247371))

(assert (=> b!1362373 m!1247365))

(assert (=> b!1362373 m!1247365))

(assert (=> b!1362373 m!1247371))

(assert (=> b!1362212 d!145935))

(declare-fun d!145939 () Bool)

(declare-fun e!772836 () Bool)

(assert (=> d!145939 e!772836))

(declare-fun res!906497 () Bool)

(assert (=> d!145939 (=> (not res!906497) (not e!772836))))

(assert (=> d!145939 (= res!906497 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45278 a!3742))))))

(declare-fun lt!600433 () Unit!44864)

(declare-fun choose!53 (array!92594 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31948) Unit!44864)

(assert (=> d!145939 (= lt!600433 (choose!53 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!600398))))

(assert (=> d!145939 (bvslt (size!45278 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145939 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!600398) lt!600433)))

(declare-fun b!1362394 () Bool)

(assert (=> b!1362394 (= e!772836 (arrayNoDuplicates!0 (array!92595 (store (arr!44727 a!3742) i!1404 l!3587) (size!45278 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!600398))))

(assert (= (and d!145939 res!906497) b!1362394))

(declare-fun m!1247397 () Bool)

(assert (=> d!145939 m!1247397))

(assert (=> b!1362394 m!1247191))

(declare-fun m!1247401 () Bool)

(assert (=> b!1362394 m!1247401))

(assert (=> b!1362212 d!145939))

(declare-fun d!145951 () Bool)

(declare-fun lt!600434 () Bool)

(assert (=> d!145951 (= lt!600434 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!707 lt!600398)))))

(declare-fun e!772838 () Bool)

(assert (=> d!145951 (= lt!600434 e!772838)))

(declare-fun res!906498 () Bool)

(assert (=> d!145951 (=> (not res!906498) (not e!772838))))

(assert (=> d!145951 (= res!906498 (is-Cons!31944 lt!600398))))

(assert (=> d!145951 (= (contains!9513 lt!600398 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600434)))

(declare-fun b!1362395 () Bool)

(declare-fun e!772837 () Bool)

(assert (=> b!1362395 (= e!772838 e!772837)))

(declare-fun res!906499 () Bool)

(assert (=> b!1362395 (=> res!906499 e!772837)))

(assert (=> b!1362395 (= res!906499 (= (h!33153 lt!600398) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1362396 () Bool)

(assert (=> b!1362396 (= e!772837 (contains!9513 (t!46640 lt!600398) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145951 res!906498) b!1362395))

(assert (= (and b!1362395 (not res!906499)) b!1362396))

(assert (=> d!145951 m!1247259))

(declare-fun m!1247403 () Bool)

(assert (=> d!145951 m!1247403))

