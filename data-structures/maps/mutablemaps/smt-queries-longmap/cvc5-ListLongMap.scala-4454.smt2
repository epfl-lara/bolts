; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61986 () Bool)

(assert start!61986)

(declare-fun b!693133 () Bool)

(declare-fun res!457449 () Bool)

(declare-fun e!394377 () Bool)

(assert (=> b!693133 (=> (not res!457449) (not e!394377))))

(declare-datatypes ((List!13168 0))(
  ( (Nil!13165) (Cons!13164 (h!14209 (_ BitVec 64)) (t!19452 List!13168)) )
))
(declare-fun lt!316678 () List!13168)

(declare-fun noDuplicate!958 (List!13168) Bool)

(assert (=> b!693133 (= res!457449 (noDuplicate!958 lt!316678))))

(declare-fun b!693134 () Bool)

(declare-fun res!457454 () Bool)

(declare-fun e!394373 () Bool)

(assert (=> b!693134 (=> (not res!457454) (not e!394373))))

(declare-datatypes ((array!39828 0))(
  ( (array!39829 (arr!19074 (Array (_ BitVec 32) (_ BitVec 64))) (size!19457 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39828)

(declare-fun arrayNoDuplicates!0 (array!39828 (_ BitVec 32) List!13168) Bool)

(assert (=> b!693134 (= res!457454 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13165))))

(declare-fun b!693135 () Bool)

(declare-datatypes ((Unit!24466 0))(
  ( (Unit!24467) )
))
(declare-fun e!394375 () Unit!24466)

(declare-fun Unit!24468 () Unit!24466)

(assert (=> b!693135 (= e!394375 Unit!24468)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!693135 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316679 () Unit!24466)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39828 (_ BitVec 64) (_ BitVec 32)) Unit!24466)

(assert (=> b!693135 (= lt!316679 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!693135 false))

(declare-fun b!693136 () Bool)

(declare-fun res!457462 () Bool)

(assert (=> b!693136 (=> (not res!457462) (not e!394373))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!693136 (= res!457462 (validKeyInArray!0 k!2843))))

(declare-fun b!693137 () Bool)

(declare-fun res!457460 () Bool)

(assert (=> b!693137 (=> (not res!457460) (not e!394373))))

(declare-fun e!394374 () Bool)

(assert (=> b!693137 (= res!457460 e!394374)))

(declare-fun res!457450 () Bool)

(assert (=> b!693137 (=> res!457450 e!394374)))

(declare-fun e!394371 () Bool)

(assert (=> b!693137 (= res!457450 e!394371)))

(declare-fun res!457458 () Bool)

(assert (=> b!693137 (=> (not res!457458) (not e!394371))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!693137 (= res!457458 (bvsgt from!3004 i!1382))))

(declare-fun b!693138 () Bool)

(declare-fun res!457461 () Bool)

(assert (=> b!693138 (=> (not res!457461) (not e!394373))))

(declare-fun acc!681 () List!13168)

(assert (=> b!693138 (= res!457461 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!693139 () Bool)

(declare-fun res!457472 () Bool)

(assert (=> b!693139 (=> (not res!457472) (not e!394373))))

(assert (=> b!693139 (= res!457472 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!693140 () Bool)

(declare-fun Unit!24469 () Unit!24466)

(assert (=> b!693140 (= e!394375 Unit!24469)))

(declare-fun b!693141 () Bool)

(declare-fun e!394381 () Bool)

(declare-fun e!394376 () Bool)

(assert (=> b!693141 (= e!394381 e!394376)))

(declare-fun res!457452 () Bool)

(assert (=> b!693141 (=> (not res!457452) (not e!394376))))

(assert (=> b!693141 (= res!457452 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693142 () Bool)

(declare-fun e!394378 () Bool)

(declare-fun contains!3711 (List!13168 (_ BitVec 64)) Bool)

(assert (=> b!693142 (= e!394378 (contains!3711 lt!316678 k!2843))))

(declare-fun b!693143 () Bool)

(declare-fun e!394380 () Bool)

(assert (=> b!693143 (= e!394380 (not (contains!3711 acc!681 k!2843)))))

(declare-fun b!693144 () Bool)

(declare-fun res!457468 () Bool)

(assert (=> b!693144 (=> (not res!457468) (not e!394377))))

(assert (=> b!693144 (= res!457468 (not (contains!3711 lt!316678 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693145 () Bool)

(declare-fun res!457464 () Bool)

(assert (=> b!693145 (=> (not res!457464) (not e!394373))))

(assert (=> b!693145 (= res!457464 (not (contains!3711 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693146 () Bool)

(assert (=> b!693146 (= e!394376 (not (contains!3711 lt!316678 k!2843)))))

(declare-fun b!693147 () Bool)

(declare-fun e!394379 () Bool)

(assert (=> b!693147 (= e!394373 e!394379)))

(declare-fun res!457456 () Bool)

(assert (=> b!693147 (=> (not res!457456) (not e!394379))))

(assert (=> b!693147 (= res!457456 (not (= (select (arr!19074 a!3626) from!3004) k!2843)))))

(declare-fun lt!316680 () Unit!24466)

(assert (=> b!693147 (= lt!316680 e!394375)))

(declare-fun c!78209 () Bool)

(assert (=> b!693147 (= c!78209 (= (select (arr!19074 a!3626) from!3004) k!2843))))

(declare-fun b!693148 () Bool)

(declare-fun res!457457 () Bool)

(assert (=> b!693148 (=> (not res!457457) (not e!394373))))

(assert (=> b!693148 (= res!457457 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19457 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!693149 () Bool)

(assert (=> b!693149 (= e!394377 (not (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316678)))))

(declare-fun b!693150 () Bool)

(declare-fun res!457459 () Bool)

(assert (=> b!693150 (=> (not res!457459) (not e!394377))))

(assert (=> b!693150 (= res!457459 (not (contains!3711 lt!316678 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693151 () Bool)

(assert (=> b!693151 (= e!394374 e!394380)))

(declare-fun res!457465 () Bool)

(assert (=> b!693151 (=> (not res!457465) (not e!394380))))

(assert (=> b!693151 (= res!457465 (bvsle from!3004 i!1382))))

(declare-fun b!693152 () Bool)

(assert (=> b!693152 (= e!394371 (contains!3711 acc!681 k!2843))))

(declare-fun b!693153 () Bool)

(declare-fun res!457453 () Bool)

(assert (=> b!693153 (=> (not res!457453) (not e!394373))))

(assert (=> b!693153 (= res!457453 (noDuplicate!958 acc!681))))

(declare-fun b!693154 () Bool)

(declare-fun res!457471 () Bool)

(assert (=> b!693154 (=> (not res!457471) (not e!394373))))

(assert (=> b!693154 (= res!457471 (not (contains!3711 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!457467 () Bool)

(assert (=> start!61986 (=> (not res!457467) (not e!394373))))

(assert (=> start!61986 (= res!457467 (and (bvslt (size!19457 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19457 a!3626))))))

(assert (=> start!61986 e!394373))

(assert (=> start!61986 true))

(declare-fun array_inv!14848 (array!39828) Bool)

(assert (=> start!61986 (array_inv!14848 a!3626)))

(declare-fun b!693155 () Bool)

(declare-fun res!457455 () Bool)

(assert (=> b!693155 (=> (not res!457455) (not e!394377))))

(assert (=> b!693155 (= res!457455 e!394381)))

(declare-fun res!457469 () Bool)

(assert (=> b!693155 (=> res!457469 e!394381)))

(assert (=> b!693155 (= res!457469 e!394378)))

(declare-fun res!457463 () Bool)

(assert (=> b!693155 (=> (not res!457463) (not e!394378))))

(assert (=> b!693155 (= res!457463 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693156 () Bool)

(declare-fun res!457466 () Bool)

(assert (=> b!693156 (=> (not res!457466) (not e!394373))))

(assert (=> b!693156 (= res!457466 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19457 a!3626))))))

(declare-fun b!693157 () Bool)

(declare-fun res!457470 () Bool)

(assert (=> b!693157 (=> (not res!457470) (not e!394373))))

(assert (=> b!693157 (= res!457470 (validKeyInArray!0 (select (arr!19074 a!3626) from!3004)))))

(declare-fun b!693158 () Bool)

(assert (=> b!693158 (= e!394379 e!394377)))

(declare-fun res!457451 () Bool)

(assert (=> b!693158 (=> (not res!457451) (not e!394377))))

(assert (=> b!693158 (= res!457451 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!421 (List!13168 (_ BitVec 64)) List!13168)

(assert (=> b!693158 (= lt!316678 ($colon$colon!421 acc!681 (select (arr!19074 a!3626) from!3004)))))

(assert (= (and start!61986 res!457467) b!693153))

(assert (= (and b!693153 res!457453) b!693145))

(assert (= (and b!693145 res!457464) b!693154))

(assert (= (and b!693154 res!457471) b!693137))

(assert (= (and b!693137 res!457458) b!693152))

(assert (= (and b!693137 (not res!457450)) b!693151))

(assert (= (and b!693151 res!457465) b!693143))

(assert (= (and b!693137 res!457460) b!693134))

(assert (= (and b!693134 res!457454) b!693138))

(assert (= (and b!693138 res!457461) b!693156))

(assert (= (and b!693156 res!457466) b!693136))

(assert (= (and b!693136 res!457462) b!693139))

(assert (= (and b!693139 res!457472) b!693148))

(assert (= (and b!693148 res!457457) b!693157))

(assert (= (and b!693157 res!457470) b!693147))

(assert (= (and b!693147 c!78209) b!693135))

(assert (= (and b!693147 (not c!78209)) b!693140))

(assert (= (and b!693147 res!457456) b!693158))

(assert (= (and b!693158 res!457451) b!693133))

(assert (= (and b!693133 res!457449) b!693150))

(assert (= (and b!693150 res!457459) b!693144))

(assert (= (and b!693144 res!457468) b!693155))

(assert (= (and b!693155 res!457463) b!693142))

(assert (= (and b!693155 (not res!457469)) b!693141))

(assert (= (and b!693141 res!457452) b!693146))

(assert (= (and b!693155 res!457455) b!693149))

(declare-fun m!655491 () Bool)

(assert (=> b!693146 m!655491))

(declare-fun m!655493 () Bool)

(assert (=> b!693143 m!655493))

(declare-fun m!655495 () Bool)

(assert (=> b!693158 m!655495))

(assert (=> b!693158 m!655495))

(declare-fun m!655497 () Bool)

(assert (=> b!693158 m!655497))

(declare-fun m!655499 () Bool)

(assert (=> b!693133 m!655499))

(declare-fun m!655501 () Bool)

(assert (=> b!693139 m!655501))

(assert (=> b!693147 m!655495))

(declare-fun m!655503 () Bool)

(assert (=> b!693153 m!655503))

(declare-fun m!655505 () Bool)

(assert (=> b!693154 m!655505))

(declare-fun m!655507 () Bool)

(assert (=> b!693138 m!655507))

(declare-fun m!655509 () Bool)

(assert (=> b!693134 m!655509))

(declare-fun m!655511 () Bool)

(assert (=> b!693145 m!655511))

(assert (=> b!693157 m!655495))

(assert (=> b!693157 m!655495))

(declare-fun m!655513 () Bool)

(assert (=> b!693157 m!655513))

(assert (=> b!693142 m!655491))

(declare-fun m!655515 () Bool)

(assert (=> b!693144 m!655515))

(declare-fun m!655517 () Bool)

(assert (=> b!693149 m!655517))

(declare-fun m!655519 () Bool)

(assert (=> b!693135 m!655519))

(declare-fun m!655521 () Bool)

(assert (=> b!693135 m!655521))

(declare-fun m!655523 () Bool)

(assert (=> b!693150 m!655523))

(declare-fun m!655525 () Bool)

(assert (=> b!693136 m!655525))

(declare-fun m!655527 () Bool)

(assert (=> start!61986 m!655527))

(assert (=> b!693152 m!655493))

(push 1)

(assert (not b!693135))

(assert (not b!693138))

(assert (not b!693152))

(assert (not b!693136))

(assert (not b!693143))

(assert (not b!693150))

(assert (not b!693145))

(assert (not b!693149))

(assert (not b!693153))

(assert (not b!693144))

(assert (not b!693139))

(assert (not b!693157))

(assert (not b!693142))

(assert (not b!693158))

(assert (not start!61986))

(assert (not b!693134))

(assert (not b!693146))

(assert (not b!693154))

(assert (not b!693133))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95703 () Bool)

(assert (=> d!95703 (= (array_inv!14848 a!3626) (bvsge (size!19457 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61986 d!95703))

(declare-fun b!693405 () Bool)

(declare-fun e!394530 () Bool)

(declare-fun call!34270 () Bool)

(assert (=> b!693405 (= e!394530 call!34270)))

(declare-fun b!693406 () Bool)

(declare-fun e!394531 () Bool)

(assert (=> b!693406 (= e!394531 e!394530)))

(declare-fun c!78226 () Bool)

(assert (=> b!693406 (= c!78226 (validKeyInArray!0 (select (arr!19074 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!693407 () Bool)

(declare-fun e!394528 () Bool)

(assert (=> b!693407 (= e!394528 e!394531)))

(declare-fun res!457689 () Bool)

(assert (=> b!693407 (=> (not res!457689) (not e!394531))))

(declare-fun e!394529 () Bool)

(assert (=> b!693407 (= res!457689 (not e!394529))))

(declare-fun res!457687 () Bool)

(assert (=> b!693407 (=> (not res!457687) (not e!394529))))

(assert (=> b!693407 (= res!457687 (validKeyInArray!0 (select (arr!19074 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!34267 () Bool)

(assert (=> bm!34267 (= call!34270 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78226 (Cons!13164 (select (arr!19074 a!3626) #b00000000000000000000000000000000) Nil!13165) Nil!13165)))))

(declare-fun b!693408 () Bool)

(assert (=> b!693408 (= e!394529 (contains!3711 Nil!13165 (select (arr!19074 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!693409 () Bool)

(assert (=> b!693409 (= e!394530 call!34270)))

(declare-fun d!95707 () Bool)

(declare-fun res!457688 () Bool)

(assert (=> d!95707 (=> res!457688 e!394528)))

(assert (=> d!95707 (= res!457688 (bvsge #b00000000000000000000000000000000 (size!19457 a!3626)))))

(assert (=> d!95707 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13165) e!394528)))

(assert (= (and d!95707 (not res!457688)) b!693407))

(assert (= (and b!693407 res!457687) b!693408))

(assert (= (and b!693407 res!457689) b!693406))

(assert (= (and b!693406 c!78226) b!693409))

(assert (= (and b!693406 (not c!78226)) b!693405))

(assert (= (or b!693409 b!693405) bm!34267))

(declare-fun m!655681 () Bool)

(assert (=> b!693406 m!655681))

(assert (=> b!693406 m!655681))

(declare-fun m!655683 () Bool)

(assert (=> b!693406 m!655683))

(assert (=> b!693407 m!655681))

(assert (=> b!693407 m!655681))

(assert (=> b!693407 m!655683))

(assert (=> bm!34267 m!655681))

(declare-fun m!655691 () Bool)

(assert (=> bm!34267 m!655691))

(assert (=> b!693408 m!655681))

(assert (=> b!693408 m!655681))

(declare-fun m!655695 () Bool)

(assert (=> b!693408 m!655695))

(assert (=> b!693134 d!95707))

(declare-fun d!95739 () Bool)

(declare-fun res!457710 () Bool)

(declare-fun e!394554 () Bool)

(assert (=> d!95739 (=> res!457710 e!394554)))

(assert (=> d!95739 (= res!457710 (is-Nil!13165 lt!316678))))

(assert (=> d!95739 (= (noDuplicate!958 lt!316678) e!394554)))

(declare-fun b!693434 () Bool)

(declare-fun e!394555 () Bool)

(assert (=> b!693434 (= e!394554 e!394555)))

(declare-fun res!457711 () Bool)

(assert (=> b!693434 (=> (not res!457711) (not e!394555))))

(assert (=> b!693434 (= res!457711 (not (contains!3711 (t!19452 lt!316678) (h!14209 lt!316678))))))

(declare-fun b!693435 () Bool)

(assert (=> b!693435 (= e!394555 (noDuplicate!958 (t!19452 lt!316678)))))

(assert (= (and d!95739 (not res!457710)) b!693434))

(assert (= (and b!693434 res!457711) b!693435))

(declare-fun m!655717 () Bool)

(assert (=> b!693434 m!655717))

(declare-fun m!655719 () Bool)

(assert (=> b!693435 m!655719))

(assert (=> b!693133 d!95739))

(declare-fun d!95755 () Bool)

(declare-fun lt!316721 () Bool)

(declare-fun content!321 (List!13168) (Set (_ BitVec 64)))

(assert (=> d!95755 (= lt!316721 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!321 lt!316678)))))

(declare-fun e!394573 () Bool)

(assert (=> d!95755 (= lt!316721 e!394573)))

(declare-fun res!457728 () Bool)

(assert (=> d!95755 (=> (not res!457728) (not e!394573))))

(assert (=> d!95755 (= res!457728 (is-Cons!13164 lt!316678))))

(assert (=> d!95755 (= (contains!3711 lt!316678 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316721)))

(declare-fun b!693452 () Bool)

(declare-fun e!394572 () Bool)

(assert (=> b!693452 (= e!394573 e!394572)))

(declare-fun res!457729 () Bool)

(assert (=> b!693452 (=> res!457729 e!394572)))

(assert (=> b!693452 (= res!457729 (= (h!14209 lt!316678) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!693453 () Bool)

(assert (=> b!693453 (= e!394572 (contains!3711 (t!19452 lt!316678) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95755 res!457728) b!693452))

(assert (= (and b!693452 (not res!457729)) b!693453))

(declare-fun m!655737 () Bool)

(assert (=> d!95755 m!655737))

(declare-fun m!655739 () Bool)

(assert (=> d!95755 m!655739))

(declare-fun m!655741 () Bool)

(assert (=> b!693453 m!655741))

(assert (=> b!693144 d!95755))

(declare-fun d!95767 () Bool)

(declare-fun lt!316724 () Bool)

(assert (=> d!95767 (= lt!316724 (set.member k!2843 (content!321 acc!681)))))

(declare-fun e!394575 () Bool)

(assert (=> d!95767 (= lt!316724 e!394575)))

(declare-fun res!457730 () Bool)

(assert (=> d!95767 (=> (not res!457730) (not e!394575))))

(assert (=> d!95767 (= res!457730 (is-Cons!13164 acc!681))))

(assert (=> d!95767 (= (contains!3711 acc!681 k!2843) lt!316724)))

(declare-fun b!693454 () Bool)

(declare-fun e!394574 () Bool)

(assert (=> b!693454 (= e!394575 e!394574)))

(declare-fun res!457731 () Bool)

(assert (=> b!693454 (=> res!457731 e!394574)))

(assert (=> b!693454 (= res!457731 (= (h!14209 acc!681) k!2843))))

(declare-fun b!693455 () Bool)

(assert (=> b!693455 (= e!394574 (contains!3711 (t!19452 acc!681) k!2843))))

(assert (= (and d!95767 res!457730) b!693454))

(assert (= (and b!693454 (not res!457731)) b!693455))

(declare-fun m!655745 () Bool)

(assert (=> d!95767 m!655745))

(declare-fun m!655747 () Bool)

(assert (=> d!95767 m!655747))

(declare-fun m!655749 () Bool)

(assert (=> b!693455 m!655749))

(assert (=> b!693143 d!95767))

(declare-fun d!95771 () Bool)

(declare-fun lt!316725 () Bool)

(assert (=> d!95771 (= lt!316725 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!321 acc!681)))))

(declare-fun e!394579 () Bool)

(assert (=> d!95771 (= lt!316725 e!394579)))

(declare-fun res!457734 () Bool)

(assert (=> d!95771 (=> (not res!457734) (not e!394579))))

(assert (=> d!95771 (= res!457734 (is-Cons!13164 acc!681))))

(assert (=> d!95771 (= (contains!3711 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316725)))

(declare-fun b!693458 () Bool)

(declare-fun e!394578 () Bool)

(assert (=> b!693458 (= e!394579 e!394578)))

(declare-fun res!457735 () Bool)

(assert (=> b!693458 (=> res!457735 e!394578)))

(assert (=> b!693458 (= res!457735 (= (h!14209 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!693459 () Bool)

(assert (=> b!693459 (= e!394578 (contains!3711 (t!19452 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95771 res!457734) b!693458))

(assert (= (and b!693458 (not res!457735)) b!693459))

(assert (=> d!95771 m!655745))

(declare-fun m!655753 () Bool)

(assert (=> d!95771 m!655753))

(declare-fun m!655755 () Bool)

(assert (=> b!693459 m!655755))

(assert (=> b!693154 d!95771))

(declare-fun d!95773 () Bool)

(declare-fun res!457736 () Bool)

(declare-fun e!394580 () Bool)

(assert (=> d!95773 (=> res!457736 e!394580)))

(assert (=> d!95773 (= res!457736 (is-Nil!13165 acc!681))))

(assert (=> d!95773 (= (noDuplicate!958 acc!681) e!394580)))

(declare-fun b!693460 () Bool)

(declare-fun e!394581 () Bool)

(assert (=> b!693460 (= e!394580 e!394581)))

(declare-fun res!457737 () Bool)

(assert (=> b!693460 (=> (not res!457737) (not e!394581))))

(assert (=> b!693460 (= res!457737 (not (contains!3711 (t!19452 acc!681) (h!14209 acc!681))))))

(declare-fun b!693461 () Bool)

(assert (=> b!693461 (= e!394581 (noDuplicate!958 (t!19452 acc!681)))))

(assert (= (and d!95773 (not res!457736)) b!693460))

(assert (= (and b!693460 res!457737) b!693461))

(declare-fun m!655757 () Bool)

(assert (=> b!693460 m!655757))

(declare-fun m!655759 () Bool)

(assert (=> b!693461 m!655759))

(assert (=> b!693153 d!95773))

(declare-fun d!95775 () Bool)

(declare-fun lt!316726 () Bool)

(assert (=> d!95775 (= lt!316726 (set.member k!2843 (content!321 lt!316678)))))

(declare-fun e!394583 () Bool)

(assert (=> d!95775 (= lt!316726 e!394583)))

(declare-fun res!457738 () Bool)

(assert (=> d!95775 (=> (not res!457738) (not e!394583))))

(assert (=> d!95775 (= res!457738 (is-Cons!13164 lt!316678))))

(assert (=> d!95775 (= (contains!3711 lt!316678 k!2843) lt!316726)))

(declare-fun b!693462 () Bool)

(declare-fun e!394582 () Bool)

(assert (=> b!693462 (= e!394583 e!394582)))

(declare-fun res!457739 () Bool)

(assert (=> b!693462 (=> res!457739 e!394582)))

(assert (=> b!693462 (= res!457739 (= (h!14209 lt!316678) k!2843))))

(declare-fun b!693463 () Bool)

(assert (=> b!693463 (= e!394582 (contains!3711 (t!19452 lt!316678) k!2843))))

(assert (= (and d!95775 res!457738) b!693462))

(assert (= (and b!693462 (not res!457739)) b!693463))

(assert (=> d!95775 m!655737))

(declare-fun m!655761 () Bool)

(assert (=> d!95775 m!655761))

(declare-fun m!655763 () Bool)

(assert (=> b!693463 m!655763))

(assert (=> b!693142 d!95775))

(assert (=> b!693152 d!95767))

(declare-fun d!95777 () Bool)

(declare-fun res!457744 () Bool)

(declare-fun e!394588 () Bool)

(assert (=> d!95777 (=> res!457744 e!394588)))

(assert (=> d!95777 (= res!457744 (= (select (arr!19074 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!95777 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!394588)))

(declare-fun b!693468 () Bool)

(declare-fun e!394589 () Bool)

(assert (=> b!693468 (= e!394588 e!394589)))

(declare-fun res!457745 () Bool)

(assert (=> b!693468 (=> (not res!457745) (not e!394589))))

(assert (=> b!693468 (= res!457745 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19457 a!3626)))))

(declare-fun b!693469 () Bool)

(assert (=> b!693469 (= e!394589 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95777 (not res!457744)) b!693468))

(assert (= (and b!693468 res!457745) b!693469))

(assert (=> d!95777 m!655681))

(declare-fun m!655765 () Bool)

(assert (=> b!693469 m!655765))

(assert (=> b!693139 d!95777))

(declare-fun d!95779 () Bool)

(declare-fun lt!316727 () Bool)

(assert (=> d!95779 (= lt!316727 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!321 lt!316678)))))

(declare-fun e!394591 () Bool)

(assert (=> d!95779 (= lt!316727 e!394591)))

(declare-fun res!457746 () Bool)

(assert (=> d!95779 (=> (not res!457746) (not e!394591))))

(assert (=> d!95779 (= res!457746 (is-Cons!13164 lt!316678))))

(assert (=> d!95779 (= (contains!3711 lt!316678 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316727)))

(declare-fun b!693470 () Bool)

(declare-fun e!394590 () Bool)

(assert (=> b!693470 (= e!394591 e!394590)))

(declare-fun res!457747 () Bool)

(assert (=> b!693470 (=> res!457747 e!394590)))

(assert (=> b!693470 (= res!457747 (= (h!14209 lt!316678) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!693471 () Bool)

(assert (=> b!693471 (= e!394590 (contains!3711 (t!19452 lt!316678) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95779 res!457746) b!693470))

(assert (= (and b!693470 (not res!457747)) b!693471))

(assert (=> d!95779 m!655737))

(declare-fun m!655767 () Bool)

(assert (=> d!95779 m!655767))

(declare-fun m!655769 () Bool)

(assert (=> b!693471 m!655769))

(assert (=> b!693150 d!95779))

(declare-fun b!693472 () Bool)

(declare-fun e!394594 () Bool)

(declare-fun call!34273 () Bool)

(assert (=> b!693472 (= e!394594 call!34273)))

(declare-fun b!693473 () Bool)

(declare-fun e!394595 () Bool)

(assert (=> b!693473 (= e!394595 e!394594)))

(declare-fun c!78229 () Bool)

(assert (=> b!693473 (= c!78229 (validKeyInArray!0 (select (arr!19074 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!693474 () Bool)

(declare-fun e!394592 () Bool)

(assert (=> b!693474 (= e!394592 e!394595)))

(declare-fun res!457750 () Bool)

(assert (=> b!693474 (=> (not res!457750) (not e!394595))))

(declare-fun e!394593 () Bool)

(assert (=> b!693474 (= res!457750 (not e!394593))))

(declare-fun res!457748 () Bool)

(assert (=> b!693474 (=> (not res!457748) (not e!394593))))

(assert (=> b!693474 (= res!457748 (validKeyInArray!0 (select (arr!19074 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun bm!34270 () Bool)

(assert (=> bm!34270 (= call!34273 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78229 (Cons!13164 (select (arr!19074 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) lt!316678) lt!316678)))))

(declare-fun b!693475 () Bool)

(assert (=> b!693475 (= e!394593 (contains!3711 lt!316678 (select (arr!19074 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!693476 () Bool)

(assert (=> b!693476 (= e!394594 call!34273)))

(declare-fun d!95781 () Bool)

(declare-fun res!457749 () Bool)

(assert (=> d!95781 (=> res!457749 e!394592)))

(assert (=> d!95781 (= res!457749 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19457 a!3626)))))

(assert (=> d!95781 (= (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316678) e!394592)))

(assert (= (and d!95781 (not res!457749)) b!693474))

(assert (= (and b!693474 res!457748) b!693475))

(assert (= (and b!693474 res!457750) b!693473))

(assert (= (and b!693473 c!78229) b!693476))

(assert (= (and b!693473 (not c!78229)) b!693472))

(assert (= (or b!693476 b!693472) bm!34270))

(declare-fun m!655771 () Bool)

(assert (=> b!693473 m!655771))

