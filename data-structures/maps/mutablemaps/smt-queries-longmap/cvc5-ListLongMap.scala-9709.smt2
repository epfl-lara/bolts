; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114848 () Bool)

(assert start!114848)

(declare-fun b!1361180 () Bool)

(declare-fun res!905468 () Bool)

(declare-fun e!772259 () Bool)

(assert (=> b!1361180 (=> (not res!905468) (not e!772259))))

(declare-datatypes ((List!31931 0))(
  ( (Nil!31928) (Cons!31927 (h!33136 (_ BitVec 64)) (t!46620 List!31931)) )
))
(declare-fun lt!600061 () List!31931)

(declare-fun contains!9496 (List!31931 (_ BitVec 64)) Bool)

(assert (=> b!1361180 (= res!905468 (not (contains!9496 lt!600061 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361181 () Bool)

(declare-datatypes ((Unit!44813 0))(
  ( (Unit!44814) )
))
(declare-fun e!772260 () Unit!44813)

(declare-fun Unit!44815 () Unit!44813)

(assert (=> b!1361181 (= e!772260 Unit!44815)))

(declare-fun b!1361182 () Bool)

(declare-fun e!772257 () Bool)

(declare-fun e!772261 () Bool)

(assert (=> b!1361182 (= e!772257 e!772261)))

(declare-fun res!905467 () Bool)

(assert (=> b!1361182 (=> (not res!905467) (not e!772261))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lt!600063 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361182 (= res!905467 (and (not (= from!3120 i!1404)) lt!600063))))

(declare-fun lt!600062 () Unit!44813)

(assert (=> b!1361182 (= lt!600062 e!772260)))

(declare-fun c!127303 () Bool)

(assert (=> b!1361182 (= c!127303 lt!600063)))

(declare-datatypes ((array!92557 0))(
  ( (array!92558 (arr!44710 (Array (_ BitVec 32) (_ BitVec 64))) (size!45261 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92557)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361182 (= lt!600063 (validKeyInArray!0 (select (arr!44710 a!3742) from!3120)))))

(declare-fun b!1361183 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92557 (_ BitVec 32) List!31931) Bool)

(assert (=> b!1361183 (= e!772259 (not (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600061)))))

(declare-fun b!1361184 () Bool)

(declare-fun res!905462 () Bool)

(assert (=> b!1361184 (=> (not res!905462) (not e!772257))))

(declare-fun acc!759 () List!31931)

(assert (=> b!1361184 (= res!905462 (not (contains!9496 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361185 () Bool)

(declare-fun res!905466 () Bool)

(assert (=> b!1361185 (=> (not res!905466) (not e!772257))))

(assert (=> b!1361185 (= res!905466 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31928))))

(declare-fun b!1361186 () Bool)

(declare-fun res!905460 () Bool)

(assert (=> b!1361186 (=> (not res!905460) (not e!772257))))

(assert (=> b!1361186 (= res!905460 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45261 a!3742))))))

(declare-fun b!1361187 () Bool)

(declare-fun res!905461 () Bool)

(assert (=> b!1361187 (=> (not res!905461) (not e!772259))))

(declare-fun noDuplicate!2375 (List!31931) Bool)

(assert (=> b!1361187 (= res!905461 (noDuplicate!2375 lt!600061))))

(declare-fun b!1361188 () Bool)

(declare-fun res!905464 () Bool)

(assert (=> b!1361188 (=> (not res!905464) (not e!772257))))

(assert (=> b!1361188 (= res!905464 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361189 () Bool)

(declare-fun lt!600065 () Unit!44813)

(assert (=> b!1361189 (= e!772260 lt!600065)))

(declare-fun lt!600064 () Unit!44813)

(declare-fun lemmaListSubSeqRefl!0 (List!31931) Unit!44813)

(assert (=> b!1361189 (= lt!600064 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!887 (List!31931 List!31931) Bool)

(assert (=> b!1361189 (subseq!887 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92557 List!31931 List!31931 (_ BitVec 32)) Unit!44813)

(declare-fun $colon$colon!892 (List!31931 (_ BitVec 64)) List!31931)

(assert (=> b!1361189 (= lt!600065 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!892 acc!759 (select (arr!44710 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1361189 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361190 () Bool)

(declare-fun res!905470 () Bool)

(assert (=> b!1361190 (=> (not res!905470) (not e!772257))))

(assert (=> b!1361190 (= res!905470 (noDuplicate!2375 acc!759))))

(declare-fun b!1361191 () Bool)

(declare-fun res!905472 () Bool)

(assert (=> b!1361191 (=> (not res!905472) (not e!772257))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1361191 (= res!905472 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361192 () Bool)

(assert (=> b!1361192 (= e!772261 e!772259)))

(declare-fun res!905465 () Bool)

(assert (=> b!1361192 (=> (not res!905465) (not e!772259))))

(assert (=> b!1361192 (= res!905465 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1361192 (= lt!600061 ($colon$colon!892 acc!759 (select (arr!44710 a!3742) from!3120)))))

(declare-fun b!1361193 () Bool)

(declare-fun res!905463 () Bool)

(assert (=> b!1361193 (=> (not res!905463) (not e!772259))))

(assert (=> b!1361193 (= res!905463 (not (contains!9496 lt!600061 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!905459 () Bool)

(assert (=> start!114848 (=> (not res!905459) (not e!772257))))

(assert (=> start!114848 (= res!905459 (and (bvslt (size!45261 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45261 a!3742))))))

(assert (=> start!114848 e!772257))

(assert (=> start!114848 true))

(declare-fun array_inv!33655 (array!92557) Bool)

(assert (=> start!114848 (array_inv!33655 a!3742)))

(declare-fun b!1361194 () Bool)

(declare-fun res!905471 () Bool)

(assert (=> b!1361194 (=> (not res!905471) (not e!772257))))

(assert (=> b!1361194 (= res!905471 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45261 a!3742)))))

(declare-fun b!1361195 () Bool)

(declare-fun res!905469 () Bool)

(assert (=> b!1361195 (=> (not res!905469) (not e!772257))))

(assert (=> b!1361195 (= res!905469 (not (contains!9496 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114848 res!905459) b!1361190))

(assert (= (and b!1361190 res!905470) b!1361184))

(assert (= (and b!1361184 res!905462) b!1361195))

(assert (= (and b!1361195 res!905469) b!1361185))

(assert (= (and b!1361185 res!905466) b!1361188))

(assert (= (and b!1361188 res!905464) b!1361186))

(assert (= (and b!1361186 res!905460) b!1361191))

(assert (= (and b!1361191 res!905472) b!1361194))

(assert (= (and b!1361194 res!905471) b!1361182))

(assert (= (and b!1361182 c!127303) b!1361189))

(assert (= (and b!1361182 (not c!127303)) b!1361181))

(assert (= (and b!1361182 res!905467) b!1361192))

(assert (= (and b!1361192 res!905465) b!1361187))

(assert (= (and b!1361187 res!905461) b!1361193))

(assert (= (and b!1361193 res!905463) b!1361180))

(assert (= (and b!1361180 res!905468) b!1361183))

(declare-fun m!1246357 () Bool)

(assert (=> b!1361188 m!1246357))

(declare-fun m!1246359 () Bool)

(assert (=> b!1361180 m!1246359))

(declare-fun m!1246361 () Bool)

(assert (=> b!1361195 m!1246361))

(declare-fun m!1246363 () Bool)

(assert (=> b!1361182 m!1246363))

(assert (=> b!1361182 m!1246363))

(declare-fun m!1246365 () Bool)

(assert (=> b!1361182 m!1246365))

(assert (=> b!1361192 m!1246363))

(assert (=> b!1361192 m!1246363))

(declare-fun m!1246367 () Bool)

(assert (=> b!1361192 m!1246367))

(declare-fun m!1246369 () Bool)

(assert (=> b!1361193 m!1246369))

(declare-fun m!1246371 () Bool)

(assert (=> b!1361190 m!1246371))

(declare-fun m!1246373 () Bool)

(assert (=> b!1361189 m!1246373))

(assert (=> b!1361189 m!1246363))

(assert (=> b!1361189 m!1246367))

(declare-fun m!1246375 () Bool)

(assert (=> b!1361189 m!1246375))

(declare-fun m!1246377 () Bool)

(assert (=> b!1361189 m!1246377))

(assert (=> b!1361189 m!1246363))

(assert (=> b!1361189 m!1246367))

(declare-fun m!1246379 () Bool)

(assert (=> b!1361189 m!1246379))

(declare-fun m!1246381 () Bool)

(assert (=> b!1361191 m!1246381))

(declare-fun m!1246383 () Bool)

(assert (=> start!114848 m!1246383))

(declare-fun m!1246385 () Bool)

(assert (=> b!1361184 m!1246385))

(declare-fun m!1246387 () Bool)

(assert (=> b!1361185 m!1246387))

(declare-fun m!1246389 () Bool)

(assert (=> b!1361183 m!1246389))

(declare-fun m!1246391 () Bool)

(assert (=> b!1361187 m!1246391))

(push 1)

(assert (not b!1361184))

(assert (not b!1361190))

(assert (not b!1361191))

(assert (not b!1361180))

(assert (not b!1361189))

(assert (not b!1361182))

(assert (not start!114848))

(assert (not b!1361193))

(assert (not b!1361185))

(assert (not b!1361183))

(assert (not b!1361195))

(assert (not b!1361187))

(assert (not b!1361188))

(assert (not b!1361192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145765 () Bool)

(declare-fun res!905583 () Bool)

(declare-fun e!772318 () Bool)

(assert (=> d!145765 (=> res!905583 e!772318)))

(assert (=> d!145765 (= res!905583 (is-Nil!31928 lt!600061))))

(assert (=> d!145765 (= (noDuplicate!2375 lt!600061) e!772318)))

(declare-fun b!1361318 () Bool)

(declare-fun e!772319 () Bool)

(assert (=> b!1361318 (= e!772318 e!772319)))

(declare-fun res!905584 () Bool)

(assert (=> b!1361318 (=> (not res!905584) (not e!772319))))

(assert (=> b!1361318 (= res!905584 (not (contains!9496 (t!46620 lt!600061) (h!33136 lt!600061))))))

(declare-fun b!1361319 () Bool)

(assert (=> b!1361319 (= e!772319 (noDuplicate!2375 (t!46620 lt!600061)))))

(assert (= (and d!145765 (not res!905583)) b!1361318))

(assert (= (and b!1361318 res!905584) b!1361319))

(declare-fun m!1246477 () Bool)

(assert (=> b!1361318 m!1246477))

(declare-fun m!1246479 () Bool)

(assert (=> b!1361319 m!1246479))

(assert (=> b!1361187 d!145765))

(declare-fun b!1361346 () Bool)

(declare-fun e!772342 () Bool)

(assert (=> b!1361346 (= e!772342 (contains!9496 acc!759 (select (arr!44710 a!3742) from!3120)))))

(declare-fun b!1361347 () Bool)

(declare-fun e!772345 () Bool)

(declare-fun call!65358 () Bool)

(assert (=> b!1361347 (= e!772345 call!65358)))

(declare-fun b!1361348 () Bool)

(declare-fun e!772344 () Bool)

(assert (=> b!1361348 (= e!772344 e!772345)))

(declare-fun c!127314 () Bool)

(assert (=> b!1361348 (= c!127314 (validKeyInArray!0 (select (arr!44710 a!3742) from!3120)))))

(declare-fun d!145771 () Bool)

(declare-fun res!905603 () Bool)

(declare-fun e!772343 () Bool)

(assert (=> d!145771 (=> res!905603 e!772343)))

(assert (=> d!145771 (= res!905603 (bvsge from!3120 (size!45261 a!3742)))))

(assert (=> d!145771 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!772343)))

(declare-fun b!1361349 () Bool)

(assert (=> b!1361349 (= e!772345 call!65358)))

(declare-fun b!1361350 () Bool)

(assert (=> b!1361350 (= e!772343 e!772344)))

(declare-fun res!905604 () Bool)

(assert (=> b!1361350 (=> (not res!905604) (not e!772344))))

(assert (=> b!1361350 (= res!905604 (not e!772342))))

(declare-fun res!905605 () Bool)

(assert (=> b!1361350 (=> (not res!905605) (not e!772342))))

(assert (=> b!1361350 (= res!905605 (validKeyInArray!0 (select (arr!44710 a!3742) from!3120)))))

(declare-fun bm!65355 () Bool)

(assert (=> bm!65355 (= call!65358 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127314 (Cons!31927 (select (arr!44710 a!3742) from!3120) acc!759) acc!759)))))

(assert (= (and d!145771 (not res!905603)) b!1361350))

(assert (= (and b!1361350 res!905605) b!1361346))

(assert (= (and b!1361350 res!905604) b!1361348))

(assert (= (and b!1361348 c!127314) b!1361349))

(assert (= (and b!1361348 (not c!127314)) b!1361347))

(assert (= (or b!1361349 b!1361347) bm!65355))

(assert (=> b!1361346 m!1246363))

(assert (=> b!1361346 m!1246363))

(declare-fun m!1246485 () Bool)

(assert (=> b!1361346 m!1246485))

(assert (=> b!1361348 m!1246363))

(assert (=> b!1361348 m!1246363))

(assert (=> b!1361348 m!1246365))

(assert (=> b!1361350 m!1246363))

(assert (=> b!1361350 m!1246363))

(assert (=> b!1361350 m!1246365))

(assert (=> bm!65355 m!1246363))

(declare-fun m!1246489 () Bool)

(assert (=> bm!65355 m!1246489))

(assert (=> b!1361188 d!145771))

(declare-fun d!145775 () Bool)

(assert (=> d!145775 (= (array_inv!33655 a!3742) (bvsge (size!45261 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114848 d!145775))

(declare-fun d!145779 () Bool)

(assert (=> d!145779 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600109 () Unit!44813)

(declare-fun choose!80 (array!92557 List!31931 List!31931 (_ BitVec 32)) Unit!44813)

(assert (=> d!145779 (= lt!600109 (choose!80 a!3742 ($colon$colon!892 acc!759 (select (arr!44710 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> d!145779 (bvslt (size!45261 a!3742) #b01111111111111111111111111111111)))

(assert (=> d!145779 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!892 acc!759 (select (arr!44710 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)) lt!600109)))

(declare-fun bs!39033 () Bool)

(assert (= bs!39033 d!145779))

(assert (=> bs!39033 m!1246377))

(assert (=> bs!39033 m!1246367))

(declare-fun m!1246503 () Bool)

(assert (=> bs!39033 m!1246503))

(assert (=> b!1361189 d!145779))

(declare-fun b!1361373 () Bool)

(declare-fun e!772365 () Bool)

(assert (=> b!1361373 (= e!772365 (subseq!887 acc!759 (t!46620 acc!759)))))

(declare-fun b!1361370 () Bool)

(declare-fun e!772366 () Bool)

(declare-fun e!772367 () Bool)

(assert (=> b!1361370 (= e!772366 e!772367)))

(declare-fun res!905623 () Bool)

(assert (=> b!1361370 (=> (not res!905623) (not e!772367))))

(assert (=> b!1361370 (= res!905623 (is-Cons!31927 acc!759))))

(declare-fun b!1361372 () Bool)

(declare-fun e!772364 () Bool)

(assert (=> b!1361372 (= e!772364 (subseq!887 (t!46620 acc!759) (t!46620 acc!759)))))

(declare-fun b!1361371 () Bool)

(assert (=> b!1361371 (= e!772367 e!772365)))

(declare-fun res!905626 () Bool)

(assert (=> b!1361371 (=> res!905626 e!772365)))

(assert (=> b!1361371 (= res!905626 e!772364)))

(declare-fun res!905624 () Bool)

(assert (=> b!1361371 (=> (not res!905624) (not e!772364))))

(assert (=> b!1361371 (= res!905624 (= (h!33136 acc!759) (h!33136 acc!759)))))

(declare-fun d!145785 () Bool)

(declare-fun res!905625 () Bool)

(assert (=> d!145785 (=> res!905625 e!772366)))

(assert (=> d!145785 (= res!905625 (is-Nil!31928 acc!759))))

(assert (=> d!145785 (= (subseq!887 acc!759 acc!759) e!772366)))

(assert (= (and d!145785 (not res!905625)) b!1361370))

(assert (= (and b!1361370 res!905623) b!1361371))

(assert (= (and b!1361371 res!905624) b!1361372))

(assert (= (and b!1361371 (not res!905626)) b!1361373))

(declare-fun m!1246509 () Bool)

(assert (=> b!1361373 m!1246509))

(declare-fun m!1246511 () Bool)

(assert (=> b!1361372 m!1246511))

(assert (=> b!1361189 d!145785))

(declare-fun e!772374 () Bool)

(declare-fun b!1361378 () Bool)

(assert (=> b!1361378 (= e!772374 (contains!9496 acc!759 (select (arr!44710 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1361379 () Bool)

(declare-fun e!772377 () Bool)

(declare-fun call!65360 () Bool)

(assert (=> b!1361379 (= e!772377 call!65360)))

(declare-fun b!1361380 () Bool)

(declare-fun e!772376 () Bool)

(assert (=> b!1361380 (= e!772376 e!772377)))

(declare-fun c!127316 () Bool)

(assert (=> b!1361380 (= c!127316 (validKeyInArray!0 (select (arr!44710 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun d!145791 () Bool)

(declare-fun res!905633 () Bool)

(declare-fun e!772375 () Bool)

(assert (=> d!145791 (=> res!905633 e!772375)))

(assert (=> d!145791 (= res!905633 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45261 a!3742)))))

(assert (=> d!145791 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759) e!772375)))

(declare-fun b!1361381 () Bool)

(assert (=> b!1361381 (= e!772377 call!65360)))

(declare-fun b!1361382 () Bool)

(assert (=> b!1361382 (= e!772375 e!772376)))

(declare-fun res!905634 () Bool)

(assert (=> b!1361382 (=> (not res!905634) (not e!772376))))

(assert (=> b!1361382 (= res!905634 (not e!772374))))

(declare-fun res!905635 () Bool)

(assert (=> b!1361382 (=> (not res!905635) (not e!772374))))

(assert (=> b!1361382 (= res!905635 (validKeyInArray!0 (select (arr!44710 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun bm!65357 () Bool)

(assert (=> bm!65357 (= call!65360 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127316 (Cons!31927 (select (arr!44710 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) acc!759) acc!759)))))

(assert (= (and d!145791 (not res!905633)) b!1361382))

(assert (= (and b!1361382 res!905635) b!1361378))

(assert (= (and b!1361382 res!905634) b!1361380))

(assert (= (and b!1361380 c!127316) b!1361381))

(assert (= (and b!1361380 (not c!127316)) b!1361379))

(assert (= (or b!1361381 b!1361379) bm!65357))

(declare-fun m!1246517 () Bool)

(assert (=> b!1361378 m!1246517))

(assert (=> b!1361378 m!1246517))

(declare-fun m!1246519 () Bool)

(assert (=> b!1361378 m!1246519))

(assert (=> b!1361380 m!1246517))

(assert (=> b!1361380 m!1246517))

(declare-fun m!1246521 () Bool)

(assert (=> b!1361380 m!1246521))

(assert (=> b!1361382 m!1246517))

(assert (=> b!1361382 m!1246517))

(assert (=> b!1361382 m!1246521))

(assert (=> bm!65357 m!1246517))

(declare-fun m!1246523 () Bool)

(assert (=> bm!65357 m!1246523))

(assert (=> b!1361189 d!145791))

(declare-fun d!145795 () Bool)

(assert (=> d!145795 (= ($colon$colon!892 acc!759 (select (arr!44710 a!3742) from!3120)) (Cons!31927 (select (arr!44710 a!3742) from!3120) acc!759))))

(assert (=> b!1361189 d!145795))

(declare-fun d!145797 () Bool)

(assert (=> d!145797 (subseq!887 acc!759 acc!759)))

(declare-fun lt!600116 () Unit!44813)

(declare-fun choose!36 (List!31931) Unit!44813)

(assert (=> d!145797 (= lt!600116 (choose!36 acc!759))))

(assert (=> d!145797 (= (lemmaListSubSeqRefl!0 acc!759) lt!600116)))

(declare-fun bs!39036 () Bool)

(assert (= bs!39036 d!145797))

(assert (=> bs!39036 m!1246379))

(declare-fun m!1246533 () Bool)

(assert (=> bs!39036 m!1246533))

(assert (=> b!1361189 d!145797))

(declare-fun d!145803 () Bool)

(declare-fun lt!600120 () Bool)

(declare-fun content!705 (List!31931) (Set (_ BitVec 64)))

(assert (=> d!145803 (= lt!600120 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!705 lt!600061)))))

(declare-fun e!772407 () Bool)

(assert (=> d!145803 (= lt!600120 e!772407)))

(declare-fun res!905661 () Bool)

(assert (=> d!145803 (=> (not res!905661) (not e!772407))))

(assert (=> d!145803 (= res!905661 (is-Cons!31927 lt!600061))))

(assert (=> d!145803 (= (contains!9496 lt!600061 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600120)))

(declare-fun b!1361416 () Bool)

(declare-fun e!772406 () Bool)

(assert (=> b!1361416 (= e!772407 e!772406)))

(declare-fun res!905662 () Bool)

(assert (=> b!1361416 (=> res!905662 e!772406)))

(assert (=> b!1361416 (= res!905662 (= (h!33136 lt!600061) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361417 () Bool)

(assert (=> b!1361417 (= e!772406 (contains!9496 (t!46620 lt!600061) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145803 res!905661) b!1361416))

(assert (= (and b!1361416 (not res!905662)) b!1361417))

(declare-fun m!1246551 () Bool)

(assert (=> d!145803 m!1246551))

(declare-fun m!1246553 () Bool)

(assert (=> d!145803 m!1246553))

(declare-fun m!1246555 () Bool)

(assert (=> b!1361417 m!1246555))

(assert (=> b!1361180 d!145803))

(declare-fun d!145813 () Bool)

(assert (=> d!145813 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1361191 d!145813))

(declare-fun d!145817 () Bool)

(declare-fun res!905665 () Bool)

(declare-fun e!772410 () Bool)

(assert (=> d!145817 (=> res!905665 e!772410)))

(assert (=> d!145817 (= res!905665 (is-Nil!31928 acc!759))))

(assert (=> d!145817 (= (noDuplicate!2375 acc!759) e!772410)))

(declare-fun b!1361420 () Bool)

(declare-fun e!772411 () Bool)

(assert (=> b!1361420 (= e!772410 e!772411)))

(declare-fun res!905666 () Bool)

(assert (=> b!1361420 (=> (not res!905666) (not e!772411))))

(assert (=> b!1361420 (= res!905666 (not (contains!9496 (t!46620 acc!759) (h!33136 acc!759))))))

(declare-fun b!1361421 () Bool)

(assert (=> b!1361421 (= e!772411 (noDuplicate!2375 (t!46620 acc!759)))))

(assert (= (and d!145817 (not res!905665)) b!1361420))

(assert (= (and b!1361420 res!905666) b!1361421))

(declare-fun m!1246567 () Bool)

(assert (=> b!1361420 m!1246567))

(declare-fun m!1246569 () Bool)

(assert (=> b!1361421 m!1246569))

(assert (=> b!1361190 d!145817))

(assert (=> b!1361192 d!145795))

(declare-fun b!1361426 () Bool)

(declare-fun e!772416 () Bool)

(assert (=> b!1361426 (= e!772416 (contains!9496 lt!600061 (select (arr!44710 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun b!1361427 () Bool)

(declare-fun e!772419 () Bool)

(declare-fun call!65364 () Bool)

(assert (=> b!1361427 (= e!772419 call!65364)))

(declare-fun b!1361428 () Bool)

(declare-fun e!772418 () Bool)

(assert (=> b!1361428 (= e!772418 e!772419)))

(declare-fun c!127320 () Bool)

(assert (=> b!1361428 (= c!127320 (validKeyInArray!0 (select (arr!44710 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun d!145821 () Bool)

(declare-fun res!905671 () Bool)

(declare-fun e!772417 () Bool)

(assert (=> d!145821 (=> res!905671 e!772417)))

(assert (=> d!145821 (= res!905671 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45261 a!3742)))))

(assert (=> d!145821 (= (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600061) e!772417)))

(declare-fun b!1361429 () Bool)

(assert (=> b!1361429 (= e!772419 call!65364)))

(declare-fun b!1361430 () Bool)

(assert (=> b!1361430 (= e!772417 e!772418)))

(declare-fun res!905672 () Bool)

(assert (=> b!1361430 (=> (not res!905672) (not e!772418))))

(assert (=> b!1361430 (= res!905672 (not e!772416))))

(declare-fun res!905673 () Bool)

(assert (=> b!1361430 (=> (not res!905673) (not e!772416))))

(assert (=> b!1361430 (= res!905673 (validKeyInArray!0 (select (arr!44710 a!3742) (bvadd #b00000000000000000000000000000001 from!3120))))))

(declare-fun bm!65361 () Bool)

(assert (=> bm!65361 (= call!65364 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120 #b00000000000000000000000000000001) (ite c!127320 (Cons!31927 (select (arr!44710 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) lt!600061) lt!600061)))))

(assert (= (and d!145821 (not res!905671)) b!1361430))

(assert (= (and b!1361430 res!905673) b!1361426))

(assert (= (and b!1361430 res!905672) b!1361428))

(assert (= (and b!1361428 c!127320) b!1361429))

(assert (= (and b!1361428 (not c!127320)) b!1361427))

(assert (= (or b!1361429 b!1361427) bm!65361))

(assert (=> b!1361426 m!1246517))

(assert (=> b!1361426 m!1246517))

(declare-fun m!1246575 () Bool)

(assert (=> b!1361426 m!1246575))

(assert (=> b!1361428 m!1246517))

(assert (=> b!1361428 m!1246517))

(assert (=> b!1361428 m!1246521))

(assert (=> b!1361430 m!1246517))

(assert (=> b!1361430 m!1246517))

(assert (=> b!1361430 m!1246521))

(assert (=> bm!65361 m!1246517))

(declare-fun m!1246577 () Bool)

(assert (=> bm!65361 m!1246577))

(assert (=> b!1361183 d!145821))

(declare-fun d!145823 () Bool)

(assert (=> d!145823 (= (validKeyInArray!0 (select (arr!44710 a!3742) from!3120)) (and (not (= (select (arr!44710 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44710 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1361182 d!145823))

(declare-fun d!145825 () Bool)

(declare-fun lt!600123 () Bool)

(assert (=> d!145825 (= lt!600123 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!705 lt!600061)))))

(declare-fun e!772427 () Bool)

(assert (=> d!145825 (= lt!600123 e!772427)))

(declare-fun res!905678 () Bool)

(assert (=> d!145825 (=> (not res!905678) (not e!772427))))

(assert (=> d!145825 (= res!905678 (is-Cons!31927 lt!600061))))

(assert (=> d!145825 (= (contains!9496 lt!600061 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600123)))

(declare-fun b!1361439 () Bool)

(declare-fun e!772426 () Bool)

(assert (=> b!1361439 (= e!772427 e!772426)))

(declare-fun res!905679 () Bool)

(assert (=> b!1361439 (=> res!905679 e!772426)))

(assert (=> b!1361439 (= res!905679 (= (h!33136 lt!600061) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361440 () Bool)

(assert (=> b!1361440 (= e!772426 (contains!9496 (t!46620 lt!600061) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145825 res!905678) b!1361439))

(assert (= (and b!1361439 (not res!905679)) b!1361440))

(assert (=> d!145825 m!1246551))

(declare-fun m!1246579 () Bool)

(assert (=> d!145825 m!1246579))

(declare-fun m!1246581 () Bool)

(assert (=> b!1361440 m!1246581))

(assert (=> b!1361193 d!145825))

(declare-fun d!145827 () Bool)

(declare-fun lt!600124 () Bool)

(assert (=> d!145827 (= lt!600124 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!705 acc!759)))))

(declare-fun e!772429 () Bool)

(assert (=> d!145827 (= lt!600124 e!772429)))

(declare-fun res!905680 () Bool)

(assert (=> d!145827 (=> (not res!905680) (not e!772429))))

(assert (=> d!145827 (= res!905680 (is-Cons!31927 acc!759))))

(assert (=> d!145827 (= (contains!9496 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!600124)))

(declare-fun b!1361441 () Bool)

(declare-fun e!772428 () Bool)

(assert (=> b!1361441 (= e!772429 e!772428)))

(declare-fun res!905681 () Bool)

(assert (=> b!1361441 (=> res!905681 e!772428)))

(assert (=> b!1361441 (= res!905681 (= (h!33136 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361442 () Bool)

(assert (=> b!1361442 (= e!772428 (contains!9496 (t!46620 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145827 res!905680) b!1361441))

(assert (= (and b!1361441 (not res!905681)) b!1361442))

(declare-fun m!1246583 () Bool)

(assert (=> d!145827 m!1246583))

(declare-fun m!1246585 () Bool)

(assert (=> d!145827 m!1246585))

(declare-fun m!1246587 () Bool)

(assert (=> b!1361442 m!1246587))

(assert (=> b!1361184 d!145827))

(declare-fun d!145829 () Bool)

(declare-fun lt!600125 () Bool)

(assert (=> d!145829 (= lt!600125 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!705 acc!759)))))

(declare-fun e!772431 () Bool)

(assert (=> d!145829 (= lt!600125 e!772431)))

(declare-fun res!905682 () Bool)

(assert (=> d!145829 (=> (not res!905682) (not e!772431))))

(assert (=> d!145829 (= res!905682 (is-Cons!31927 acc!759))))

(assert (=> d!145829 (= (contains!9496 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!600125)))

(declare-fun b!1361443 () Bool)

(declare-fun e!772430 () Bool)

(assert (=> b!1361443 (= e!772431 e!772430)))

(declare-fun res!905683 () Bool)

(assert (=> b!1361443 (=> res!905683 e!772430)))

(assert (=> b!1361443 (= res!905683 (= (h!33136 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1361444 () Bool)

(assert (=> b!1361444 (= e!772430 (contains!9496 (t!46620 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145829 res!905682) b!1361443))

(assert (= (and b!1361443 (not res!905683)) b!1361444))

(assert (=> d!145829 m!1246583))

(declare-fun m!1246589 () Bool)

(assert (=> d!145829 m!1246589))

(declare-fun m!1246591 () Bool)

(assert (=> b!1361444 m!1246591))

(assert (=> b!1361195 d!145829))

(declare-fun b!1361445 () Bool)

(declare-fun e!772432 () Bool)

(assert (=> b!1361445 (= e!772432 (contains!9496 Nil!31928 (select (arr!44710 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1361446 () Bool)

(declare-fun e!772435 () Bool)

(declare-fun call!65367 () Bool)

(assert (=> b!1361446 (= e!772435 call!65367)))

(declare-fun b!1361447 () Bool)

(declare-fun e!772434 () Bool)

(assert (=> b!1361447 (= e!772434 e!772435)))

(declare-fun c!127323 () Bool)

(assert (=> b!1361447 (= c!127323 (validKeyInArray!0 (select (arr!44710 a!3742) #b00000000000000000000000000000000)))))

(declare-fun d!145831 () Bool)

(declare-fun res!905684 () Bool)

(declare-fun e!772433 () Bool)

(assert (=> d!145831 (=> res!905684 e!772433)))

(assert (=> d!145831 (= res!905684 (bvsge #b00000000000000000000000000000000 (size!45261 a!3742)))))

(assert (=> d!145831 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31928) e!772433)))

(declare-fun b!1361448 () Bool)

(assert (=> b!1361448 (= e!772435 call!65367)))

(declare-fun b!1361449 () Bool)

(assert (=> b!1361449 (= e!772433 e!772434)))

(declare-fun res!905685 () Bool)

(assert (=> b!1361449 (=> (not res!905685) (not e!772434))))

(assert (=> b!1361449 (= res!905685 (not e!772432))))

(declare-fun res!905686 () Bool)

(assert (=> b!1361449 (=> (not res!905686) (not e!772432))))

(assert (=> b!1361449 (= res!905686 (validKeyInArray!0 (select (arr!44710 a!3742) #b00000000000000000000000000000000)))))

(declare-fun bm!65364 () Bool)

(assert (=> bm!65364 (= call!65367 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127323 (Cons!31927 (select (arr!44710 a!3742) #b00000000000000000000000000000000) Nil!31928) Nil!31928)))))

(assert (= (and d!145831 (not res!905684)) b!1361449))

(assert (= (and b!1361449 res!905686) b!1361445))

(assert (= (and b!1361449 res!905685) b!1361447))

(assert (= (and b!1361447 c!127323) b!1361448))

(assert (= (and b!1361447 (not c!127323)) b!1361446))

(assert (= (or b!1361448 b!1361446) bm!65364))

(declare-fun m!1246593 () Bool)

(assert (=> b!1361445 m!1246593))

(assert (=> b!1361445 m!1246593))

(declare-fun m!1246595 () Bool)

(assert (=> b!1361445 m!1246595))

(assert (=> b!1361447 m!1246593))

(assert (=> b!1361447 m!1246593))

(declare-fun m!1246597 () Bool)

(assert (=> b!1361447 m!1246597))

(assert (=> b!1361449 m!1246593))

(assert (=> b!1361449 m!1246593))

(assert (=> b!1361449 m!1246597))

(assert (=> bm!65364 m!1246593))

(declare-fun m!1246599 () Bool)

(assert (=> bm!65364 m!1246599))

(assert (=> b!1361185 d!145831))

(push 1)

