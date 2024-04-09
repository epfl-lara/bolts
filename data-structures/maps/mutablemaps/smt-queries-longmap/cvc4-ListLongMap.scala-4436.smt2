; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61612 () Bool)

(assert start!61612)

(declare-fun b!689575 () Bool)

(declare-fun res!454248 () Bool)

(declare-fun e!392576 () Bool)

(assert (=> b!689575 (=> (not res!454248) (not e!392576))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!689575 (= res!454248 (validKeyInArray!0 k!2843))))

(declare-fun b!689576 () Bool)

(declare-fun e!392582 () Bool)

(declare-datatypes ((List!13116 0))(
  ( (Nil!13113) (Cons!13112 (h!14157 (_ BitVec 64)) (t!19388 List!13116)) )
))
(declare-fun acc!681 () List!13116)

(declare-fun contains!3659 (List!13116 (_ BitVec 64)) Bool)

(assert (=> b!689576 (= e!392582 (contains!3659 acc!681 k!2843))))

(declare-fun b!689577 () Bool)

(declare-fun res!454249 () Bool)

(declare-fun e!392578 () Bool)

(assert (=> b!689577 (=> res!454249 e!392578)))

(declare-fun lt!316254 () List!13116)

(assert (=> b!689577 (= res!454249 (contains!3659 lt!316254 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689578 () Bool)

(declare-datatypes ((Unit!24347 0))(
  ( (Unit!24348) )
))
(declare-fun e!392584 () Unit!24347)

(declare-fun Unit!24349 () Unit!24347)

(assert (=> b!689578 (= e!392584 Unit!24349)))

(declare-fun lt!316250 () Unit!24347)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((array!39709 0))(
  ( (array!39710 (arr!19022 (Array (_ BitVec 32) (_ BitVec 64))) (size!19403 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39709)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39709 (_ BitVec 64) (_ BitVec 32)) Unit!24347)

(assert (=> b!689578 (= lt!316250 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!689578 false))

(declare-fun b!689579 () Bool)

(declare-fun res!454261 () Bool)

(assert (=> b!689579 (=> (not res!454261) (not e!392576))))

(assert (=> b!689579 (= res!454261 (not (contains!3659 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689580 () Bool)

(declare-fun e!392580 () Bool)

(declare-fun e!392583 () Bool)

(assert (=> b!689580 (= e!392580 e!392583)))

(declare-fun res!454258 () Bool)

(assert (=> b!689580 (=> (not res!454258) (not e!392583))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!689580 (= res!454258 (bvsle from!3004 i!1382))))

(declare-fun b!689581 () Bool)

(assert (=> b!689581 (= e!392583 (not (contains!3659 acc!681 k!2843)))))

(declare-fun b!689582 () Bool)

(declare-fun res!454245 () Bool)

(assert (=> b!689582 (=> (not res!454245) (not e!392576))))

(assert (=> b!689582 (= res!454245 e!392580)))

(declare-fun res!454257 () Bool)

(assert (=> b!689582 (=> res!454257 e!392580)))

(assert (=> b!689582 (= res!454257 e!392582)))

(declare-fun res!454251 () Bool)

(assert (=> b!689582 (=> (not res!454251) (not e!392582))))

(assert (=> b!689582 (= res!454251 (bvsgt from!3004 i!1382))))

(declare-fun b!689583 () Bool)

(assert (=> b!689583 (= e!392576 (not e!392578))))

(declare-fun res!454242 () Bool)

(assert (=> b!689583 (=> res!454242 e!392578)))

(assert (=> b!689583 (= res!454242 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun arrayNoDuplicates!0 (array!39709 (_ BitVec 32) List!13116) Bool)

(assert (=> b!689583 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316254)))

(declare-fun lt!316256 () Unit!24347)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39709 (_ BitVec 64) (_ BitVec 32) List!13116 List!13116) Unit!24347)

(assert (=> b!689583 (= lt!316256 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!316254))))

(declare-fun -!209 (List!13116 (_ BitVec 64)) List!13116)

(assert (=> b!689583 (= (-!209 lt!316254 k!2843) acc!681)))

(declare-fun $colon$colon!408 (List!13116 (_ BitVec 64)) List!13116)

(assert (=> b!689583 (= lt!316254 ($colon$colon!408 acc!681 k!2843))))

(declare-fun lt!316247 () Unit!24347)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13116) Unit!24347)

(assert (=> b!689583 (= lt!316247 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!244 (List!13116 List!13116) Bool)

(assert (=> b!689583 (subseq!244 acc!681 acc!681)))

(declare-fun lt!316251 () Unit!24347)

(declare-fun lemmaListSubSeqRefl!0 (List!13116) Unit!24347)

(assert (=> b!689583 (= lt!316251 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689583 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316253 () Unit!24347)

(declare-fun e!392574 () Unit!24347)

(assert (=> b!689583 (= lt!316253 e!392574)))

(declare-fun c!78034 () Bool)

(assert (=> b!689583 (= c!78034 (validKeyInArray!0 (select (arr!19022 a!3626) from!3004)))))

(declare-fun lt!316252 () Unit!24347)

(assert (=> b!689583 (= lt!316252 e!392584)))

(declare-fun c!78035 () Bool)

(declare-fun arrayContainsKey!0 (array!39709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!689583 (= c!78035 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun lt!316257 () array!39709)

(assert (=> b!689583 (arrayContainsKey!0 lt!316257 k!2843 from!3004)))

(assert (=> b!689583 (= lt!316257 (array!39710 (store (arr!19022 a!3626) i!1382 k!2843) (size!19403 a!3626)))))

(declare-fun b!689584 () Bool)

(declare-fun res!454244 () Bool)

(assert (=> b!689584 (=> (not res!454244) (not e!392576))))

(declare-fun noDuplicate!906 (List!13116) Bool)

(assert (=> b!689584 (= res!454244 (noDuplicate!906 acc!681))))

(declare-fun b!689585 () Bool)

(declare-fun res!454241 () Bool)

(assert (=> b!689585 (=> (not res!454241) (not e!392576))))

(assert (=> b!689585 (= res!454241 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!454246 () Bool)

(assert (=> start!61612 (=> (not res!454246) (not e!392576))))

(assert (=> start!61612 (= res!454246 (and (bvslt (size!19403 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19403 a!3626))))))

(assert (=> start!61612 e!392576))

(assert (=> start!61612 true))

(declare-fun array_inv!14796 (array!39709) Bool)

(assert (=> start!61612 (array_inv!14796 a!3626)))

(declare-fun b!689586 () Bool)

(declare-fun res!454253 () Bool)

(assert (=> b!689586 (=> (not res!454253) (not e!392576))))

(assert (=> b!689586 (= res!454253 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13113))))

(declare-fun b!689587 () Bool)

(declare-fun Unit!24350 () Unit!24347)

(assert (=> b!689587 (= e!392574 Unit!24350)))

(declare-fun b!689588 () Bool)

(declare-fun res!454255 () Bool)

(assert (=> b!689588 (=> res!454255 e!392578)))

(assert (=> b!689588 (= res!454255 (contains!3659 lt!316254 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689589 () Bool)

(declare-fun res!454243 () Bool)

(assert (=> b!689589 (=> res!454243 e!392578)))

(assert (=> b!689589 (= res!454243 (not (noDuplicate!906 lt!316254)))))

(declare-fun b!689590 () Bool)

(declare-fun res!454259 () Bool)

(assert (=> b!689590 (=> (not res!454259) (not e!392576))))

(assert (=> b!689590 (= res!454259 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19403 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!689591 () Bool)

(declare-fun Unit!24351 () Unit!24347)

(assert (=> b!689591 (= e!392584 Unit!24351)))

(declare-fun b!689592 () Bool)

(declare-fun e!392575 () Bool)

(declare-fun e!392581 () Bool)

(assert (=> b!689592 (= e!392575 e!392581)))

(declare-fun res!454250 () Bool)

(assert (=> b!689592 (=> res!454250 e!392581)))

(assert (=> b!689592 (= res!454250 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689593 () Bool)

(declare-fun res!454252 () Bool)

(assert (=> b!689593 (=> res!454252 e!392578)))

(assert (=> b!689593 (= res!454252 e!392575)))

(declare-fun res!454260 () Bool)

(assert (=> b!689593 (=> (not res!454260) (not e!392575))))

(declare-fun e!392577 () Bool)

(assert (=> b!689593 (= res!454260 e!392577)))

(declare-fun res!454247 () Bool)

(assert (=> b!689593 (=> res!454247 e!392577)))

(assert (=> b!689593 (= res!454247 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!689594 () Bool)

(declare-fun lt!316255 () Unit!24347)

(assert (=> b!689594 (= e!392574 lt!316255)))

(declare-fun lt!316249 () Unit!24347)

(assert (=> b!689594 (= lt!316249 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!689594 (subseq!244 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39709 List!13116 List!13116 (_ BitVec 32)) Unit!24347)

(assert (=> b!689594 (= lt!316255 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!408 acc!681 (select (arr!19022 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!689594 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!689595 () Bool)

(assert (=> b!689595 (= e!392577 (not (contains!3659 lt!316254 k!2843)))))

(declare-fun b!689596 () Bool)

(declare-fun res!454262 () Bool)

(assert (=> b!689596 (=> (not res!454262) (not e!392576))))

(assert (=> b!689596 (= res!454262 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19403 a!3626))))))

(declare-fun b!689597 () Bool)

(declare-fun res!454254 () Bool)

(assert (=> b!689597 (=> (not res!454254) (not e!392576))))

(assert (=> b!689597 (= res!454254 (not (contains!3659 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!689598 () Bool)

(assert (=> b!689598 (= e!392578 (arrayNoDuplicates!0 lt!316257 from!3004 acc!681))))

(assert (=> b!689598 (arrayNoDuplicates!0 lt!316257 (bvadd #b00000000000000000000000000000001 from!3004) lt!316254)))

(declare-fun lt!316248 () Unit!24347)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39709 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13116) Unit!24347)

(assert (=> b!689598 (= lt!316248 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316254))))

(declare-fun b!689599 () Bool)

(assert (=> b!689599 (= e!392581 (contains!3659 lt!316254 k!2843))))

(declare-fun b!689600 () Bool)

(declare-fun res!454256 () Bool)

(assert (=> b!689600 (=> (not res!454256) (not e!392576))))

(assert (=> b!689600 (= res!454256 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!61612 res!454246) b!689584))

(assert (= (and b!689584 res!454244) b!689579))

(assert (= (and b!689579 res!454261) b!689597))

(assert (= (and b!689597 res!454254) b!689582))

(assert (= (and b!689582 res!454251) b!689576))

(assert (= (and b!689582 (not res!454257)) b!689580))

(assert (= (and b!689580 res!454258) b!689581))

(assert (= (and b!689582 res!454245) b!689586))

(assert (= (and b!689586 res!454253) b!689600))

(assert (= (and b!689600 res!454256) b!689596))

(assert (= (and b!689596 res!454262) b!689575))

(assert (= (and b!689575 res!454248) b!689585))

(assert (= (and b!689585 res!454241) b!689590))

(assert (= (and b!689590 res!454259) b!689583))

(assert (= (and b!689583 c!78035) b!689578))

(assert (= (and b!689583 (not c!78035)) b!689591))

(assert (= (and b!689583 c!78034) b!689594))

(assert (= (and b!689583 (not c!78034)) b!689587))

(assert (= (and b!689583 (not res!454242)) b!689589))

(assert (= (and b!689589 (not res!454243)) b!689577))

(assert (= (and b!689577 (not res!454249)) b!689588))

(assert (= (and b!689588 (not res!454255)) b!689593))

(assert (= (and b!689593 (not res!454247)) b!689595))

(assert (= (and b!689593 res!454260) b!689592))

(assert (= (and b!689592 (not res!454250)) b!689599))

(assert (= (and b!689593 (not res!454252)) b!689598))

(declare-fun m!653237 () Bool)

(assert (=> b!689577 m!653237))

(declare-fun m!653239 () Bool)

(assert (=> b!689586 m!653239))

(declare-fun m!653241 () Bool)

(assert (=> b!689581 m!653241))

(declare-fun m!653243 () Bool)

(assert (=> start!61612 m!653243))

(declare-fun m!653245 () Bool)

(assert (=> b!689588 m!653245))

(declare-fun m!653247 () Bool)

(assert (=> b!689583 m!653247))

(declare-fun m!653249 () Bool)

(assert (=> b!689583 m!653249))

(declare-fun m!653251 () Bool)

(assert (=> b!689583 m!653251))

(declare-fun m!653253 () Bool)

(assert (=> b!689583 m!653253))

(declare-fun m!653255 () Bool)

(assert (=> b!689583 m!653255))

(declare-fun m!653257 () Bool)

(assert (=> b!689583 m!653257))

(declare-fun m!653259 () Bool)

(assert (=> b!689583 m!653259))

(assert (=> b!689583 m!653249))

(declare-fun m!653261 () Bool)

(assert (=> b!689583 m!653261))

(declare-fun m!653263 () Bool)

(assert (=> b!689583 m!653263))

(declare-fun m!653265 () Bool)

(assert (=> b!689583 m!653265))

(declare-fun m!653267 () Bool)

(assert (=> b!689583 m!653267))

(declare-fun m!653269 () Bool)

(assert (=> b!689583 m!653269))

(declare-fun m!653271 () Bool)

(assert (=> b!689583 m!653271))

(declare-fun m!653273 () Bool)

(assert (=> b!689584 m!653273))

(declare-fun m!653275 () Bool)

(assert (=> b!689600 m!653275))

(assert (=> b!689594 m!653265))

(assert (=> b!689594 m!653249))

(declare-fun m!653277 () Bool)

(assert (=> b!689594 m!653277))

(declare-fun m!653279 () Bool)

(assert (=> b!689594 m!653279))

(assert (=> b!689594 m!653249))

(assert (=> b!689594 m!653277))

(assert (=> b!689594 m!653255))

(assert (=> b!689594 m!653263))

(declare-fun m!653281 () Bool)

(assert (=> b!689578 m!653281))

(assert (=> b!689576 m!653241))

(declare-fun m!653283 () Bool)

(assert (=> b!689595 m!653283))

(assert (=> b!689599 m!653283))

(declare-fun m!653285 () Bool)

(assert (=> b!689585 m!653285))

(declare-fun m!653287 () Bool)

(assert (=> b!689579 m!653287))

(declare-fun m!653289 () Bool)

(assert (=> b!689575 m!653289))

(declare-fun m!653291 () Bool)

(assert (=> b!689597 m!653291))

(declare-fun m!653293 () Bool)

(assert (=> b!689598 m!653293))

(declare-fun m!653295 () Bool)

(assert (=> b!689598 m!653295))

(declare-fun m!653297 () Bool)

(assert (=> b!689598 m!653297))

(declare-fun m!653299 () Bool)

(assert (=> b!689589 m!653299))

(push 1)

(assert (not b!689594))

(assert (not b!689599))

(assert (not b!689589))

(assert (not b!689585))

(assert (not b!689577))

(assert (not b!689584))

(assert (not b!689579))

(assert (not b!689581))

(assert (not b!689578))

(assert (not b!689575))

(assert (not b!689583))

(assert (not b!689588))

(assert (not start!61612))

(assert (not b!689586))

(assert (not b!689600))

(assert (not b!689576))

(assert (not b!689595))

(assert (not b!689598))

(assert (not b!689597))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!95133 () Bool)

(declare-fun lt!316265 () Bool)

(declare-fun content!305 (List!13116) (Set (_ BitVec 64)))

(assert (=> d!95133 (= lt!316265 (member k!2843 (content!305 acc!681)))))

(declare-fun e!392614 () Bool)

(assert (=> d!95133 (= lt!316265 e!392614)))

(declare-fun res!454287 () Bool)

(assert (=> d!95133 (=> (not res!454287) (not e!392614))))

(assert (=> d!95133 (= res!454287 (is-Cons!13112 acc!681))))

(assert (=> d!95133 (= (contains!3659 acc!681 k!2843) lt!316265)))

(declare-fun b!689633 () Bool)

(declare-fun e!392613 () Bool)

(assert (=> b!689633 (= e!392614 e!392613)))

(declare-fun res!454288 () Bool)

(assert (=> b!689633 (=> res!454288 e!392613)))

(assert (=> b!689633 (= res!454288 (= (h!14157 acc!681) k!2843))))

(declare-fun b!689634 () Bool)

(assert (=> b!689634 (= e!392613 (contains!3659 (t!19388 acc!681) k!2843))))

(assert (= (and d!95133 res!454287) b!689633))

(assert (= (and b!689633 (not res!454288)) b!689634))

(declare-fun m!653323 () Bool)

(assert (=> d!95133 m!653323))

(declare-fun m!653325 () Bool)

(assert (=> d!95133 m!653325))

(declare-fun m!653327 () Bool)

(assert (=> b!689634 m!653327))

(assert (=> b!689581 d!95133))

(declare-fun d!95135 () Bool)

(declare-fun lt!316267 () Bool)

(assert (=> d!95135 (= lt!316267 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!305 acc!681)))))

(declare-fun e!392617 () Bool)

(assert (=> d!95135 (= lt!316267 e!392617)))

(declare-fun res!454289 () Bool)

(assert (=> d!95135 (=> (not res!454289) (not e!392617))))

(assert (=> d!95135 (= res!454289 (is-Cons!13112 acc!681))))

(assert (=> d!95135 (= (contains!3659 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316267)))

(declare-fun b!689636 () Bool)

(declare-fun e!392616 () Bool)

(assert (=> b!689636 (= e!392617 e!392616)))

(declare-fun res!454290 () Bool)

(assert (=> b!689636 (=> res!454290 e!392616)))

(assert (=> b!689636 (= res!454290 (= (h!14157 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689637 () Bool)

(assert (=> b!689637 (= e!392616 (contains!3659 (t!19388 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95135 res!454289) b!689636))

(assert (= (and b!689636 (not res!454290)) b!689637))

(assert (=> d!95135 m!653323))

(declare-fun m!653329 () Bool)

(assert (=> d!95135 m!653329))

(declare-fun m!653333 () Bool)

(assert (=> b!689637 m!653333))

(assert (=> b!689579 d!95135))

(declare-fun d!95137 () Bool)

(assert (=> d!95137 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!316271 () Unit!24347)

(declare-fun choose!13 (array!39709 (_ BitVec 64) (_ BitVec 32)) Unit!24347)

(assert (=> d!95137 (= lt!316271 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!95137 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!95137 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!316271)))

(declare-fun bs!20201 () Bool)

(assert (= bs!20201 d!95137))

(assert (=> bs!20201 m!653285))

(declare-fun m!653343 () Bool)

(assert (=> bs!20201 m!653343))

(assert (=> b!689578 d!95137))

(declare-fun d!95143 () Bool)

(declare-fun lt!316272 () Bool)

(assert (=> d!95143 (= lt!316272 (member k!2843 (content!305 lt!316254)))))

(declare-fun e!392625 () Bool)

(assert (=> d!95143 (= lt!316272 e!392625)))

(declare-fun res!454298 () Bool)

(assert (=> d!95143 (=> (not res!454298) (not e!392625))))

(assert (=> d!95143 (= res!454298 (is-Cons!13112 lt!316254))))

(assert (=> d!95143 (= (contains!3659 lt!316254 k!2843) lt!316272)))

(declare-fun b!689644 () Bool)

(declare-fun e!392624 () Bool)

(assert (=> b!689644 (= e!392625 e!392624)))

(declare-fun res!454299 () Bool)

(assert (=> b!689644 (=> res!454299 e!392624)))

(assert (=> b!689644 (= res!454299 (= (h!14157 lt!316254) k!2843))))

(declare-fun b!689645 () Bool)

(assert (=> b!689645 (= e!392624 (contains!3659 (t!19388 lt!316254) k!2843))))

(assert (= (and d!95143 res!454298) b!689644))

(assert (= (and b!689644 (not res!454299)) b!689645))

(declare-fun m!653345 () Bool)

(assert (=> d!95143 m!653345))

(declare-fun m!653347 () Bool)

(assert (=> d!95143 m!653347))

(declare-fun m!653349 () Bool)

(assert (=> b!689645 m!653349))

(assert (=> b!689599 d!95143))

(declare-fun b!689676 () Bool)

(declare-fun e!392655 () Bool)

(declare-fun e!392657 () Bool)

(assert (=> b!689676 (= e!392655 e!392657)))

(declare-fun c!78042 () Bool)

(assert (=> b!689676 (= c!78042 (validKeyInArray!0 (select (arr!19022 a!3626) from!3004)))))

(declare-fun b!689677 () Bool)

(declare-fun e!392654 () Bool)

(assert (=> b!689677 (= e!392654 (contains!3659 acc!681 (select (arr!19022 a!3626) from!3004)))))

(declare-fun b!689678 () Bool)

(declare-fun call!34185 () Bool)

(assert (=> b!689678 (= e!392657 call!34185)))

(declare-fun b!689679 () Bool)

(assert (=> b!689679 (= e!392657 call!34185)))

(declare-fun bm!34182 () Bool)

(assert (=> bm!34182 (= call!34185 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78042 (Cons!13112 (select (arr!19022 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun d!95145 () Bool)

(declare-fun res!454326 () Bool)

(declare-fun e!392656 () Bool)

(assert (=> d!95145 (=> res!454326 e!392656)))

(assert (=> d!95145 (= res!454326 (bvsge from!3004 (size!19403 a!3626)))))

(assert (=> d!95145 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!392656)))

(declare-fun b!689680 () Bool)

(assert (=> b!689680 (= e!392656 e!392655)))

(declare-fun res!454327 () Bool)

(assert (=> b!689680 (=> (not res!454327) (not e!392655))))

(assert (=> b!689680 (= res!454327 (not e!392654))))

(declare-fun res!454328 () Bool)

(assert (=> b!689680 (=> (not res!454328) (not e!392654))))

(assert (=> b!689680 (= res!454328 (validKeyInArray!0 (select (arr!19022 a!3626) from!3004)))))

(assert (= (and d!95145 (not res!454326)) b!689680))

(assert (= (and b!689680 res!454328) b!689677))

(assert (= (and b!689680 res!454327) b!689676))

(assert (= (and b!689676 c!78042) b!689678))

(assert (= (and b!689676 (not c!78042)) b!689679))

(assert (= (or b!689678 b!689679) bm!34182))

(assert (=> b!689676 m!653249))

(assert (=> b!689676 m!653249))

(assert (=> b!689676 m!653261))

(assert (=> b!689677 m!653249))

(assert (=> b!689677 m!653249))

(declare-fun m!653381 () Bool)

(assert (=> b!689677 m!653381))

(assert (=> bm!34182 m!653249))

(declare-fun m!653383 () Bool)

(assert (=> bm!34182 m!653383))

(assert (=> b!689680 m!653249))

(assert (=> b!689680 m!653249))

(assert (=> b!689680 m!653261))

(assert (=> b!689600 d!95145))

(declare-fun d!95165 () Bool)

(declare-fun res!454335 () Bool)

(declare-fun e!392669 () Bool)

(assert (=> d!95165 (=> res!454335 e!392669)))

(assert (=> d!95165 (= res!454335 (is-Nil!13113 lt!316254))))

(assert (=> d!95165 (= (noDuplicate!906 lt!316254) e!392669)))

(declare-fun b!689695 () Bool)

(declare-fun e!392670 () Bool)

(assert (=> b!689695 (= e!392669 e!392670)))

(declare-fun res!454336 () Bool)

(assert (=> b!689695 (=> (not res!454336) (not e!392670))))

(assert (=> b!689695 (= res!454336 (not (contains!3659 (t!19388 lt!316254) (h!14157 lt!316254))))))

(declare-fun b!689696 () Bool)

(assert (=> b!689696 (= e!392670 (noDuplicate!906 (t!19388 lt!316254)))))

(assert (= (and d!95165 (not res!454335)) b!689695))

(assert (= (and b!689695 res!454336) b!689696))

(declare-fun m!653385 () Bool)

(assert (=> b!689695 m!653385))

(declare-fun m!653387 () Bool)

(assert (=> b!689696 m!653387))

(assert (=> b!689589 d!95165))

(declare-fun b!689699 () Bool)

(declare-fun e!392676 () Bool)

(declare-fun e!392678 () Bool)

(assert (=> b!689699 (= e!392676 e!392678)))

(declare-fun c!78047 () Bool)

(assert (=> b!689699 (= c!78047 (validKeyInArray!0 (select (arr!19022 lt!316257) from!3004)))))

(declare-fun e!392675 () Bool)

(declare-fun b!689700 () Bool)

(assert (=> b!689700 (= e!392675 (contains!3659 acc!681 (select (arr!19022 lt!316257) from!3004)))))

(declare-fun b!689701 () Bool)

(declare-fun call!34188 () Bool)

(assert (=> b!689701 (= e!392678 call!34188)))

(declare-fun b!689702 () Bool)

(assert (=> b!689702 (= e!392678 call!34188)))

(declare-fun bm!34185 () Bool)

(assert (=> bm!34185 (= call!34188 (arrayNoDuplicates!0 lt!316257 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!78047 (Cons!13112 (select (arr!19022 lt!316257) from!3004) acc!681) acc!681)))))

(declare-fun d!95167 () Bool)

(declare-fun res!454341 () Bool)

(declare-fun e!392677 () Bool)

(assert (=> d!95167 (=> res!454341 e!392677)))

(assert (=> d!95167 (= res!454341 (bvsge from!3004 (size!19403 lt!316257)))))

(assert (=> d!95167 (= (arrayNoDuplicates!0 lt!316257 from!3004 acc!681) e!392677)))

(declare-fun b!689703 () Bool)

(assert (=> b!689703 (= e!392677 e!392676)))

(declare-fun res!454342 () Bool)

(assert (=> b!689703 (=> (not res!454342) (not e!392676))))

(assert (=> b!689703 (= res!454342 (not e!392675))))

(declare-fun res!454343 () Bool)

(assert (=> b!689703 (=> (not res!454343) (not e!392675))))

(assert (=> b!689703 (= res!454343 (validKeyInArray!0 (select (arr!19022 lt!316257) from!3004)))))

(assert (= (and d!95167 (not res!454341)) b!689703))

(assert (= (and b!689703 res!454343) b!689700))

(assert (= (and b!689703 res!454342) b!689699))

(assert (= (and b!689699 c!78047) b!689701))

(assert (= (and b!689699 (not c!78047)) b!689702))

(assert (= (or b!689701 b!689702) bm!34185))

(declare-fun m!653389 () Bool)

(assert (=> b!689699 m!653389))

(assert (=> b!689699 m!653389))

(declare-fun m!653391 () Bool)

(assert (=> b!689699 m!653391))

(assert (=> b!689700 m!653389))

(assert (=> b!689700 m!653389))

(declare-fun m!653393 () Bool)

(assert (=> b!689700 m!653393))

(assert (=> bm!34185 m!653389))

(declare-fun m!653395 () Bool)

(assert (=> bm!34185 m!653395))

(assert (=> b!689703 m!653389))

(assert (=> b!689703 m!653389))

(assert (=> b!689703 m!653391))

(assert (=> b!689598 d!95167))

(declare-fun b!689714 () Bool)

(declare-fun e!392686 () Bool)

(declare-fun e!392688 () Bool)

(assert (=> b!689714 (= e!392686 e!392688)))

(declare-fun c!78050 () Bool)

(assert (=> b!689714 (= c!78050 (validKeyInArray!0 (select (arr!19022 lt!316257) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun e!392685 () Bool)

(declare-fun b!689715 () Bool)

(assert (=> b!689715 (= e!392685 (contains!3659 lt!316254 (select (arr!19022 lt!316257) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!689716 () Bool)

(declare-fun call!34191 () Bool)

(assert (=> b!689716 (= e!392688 call!34191)))

(declare-fun b!689717 () Bool)

(assert (=> b!689717 (= e!392688 call!34191)))

(declare-fun bm!34188 () Bool)

(assert (=> bm!34188 (= call!34191 (arrayNoDuplicates!0 lt!316257 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78050 (Cons!13112 (select (arr!19022 lt!316257) (bvadd #b00000000000000000000000000000001 from!3004)) lt!316254) lt!316254)))))

(declare-fun d!95169 () Bool)

(declare-fun res!454348 () Bool)

(declare-fun e!392687 () Bool)

(assert (=> d!95169 (=> res!454348 e!392687)))

(assert (=> d!95169 (= res!454348 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19403 lt!316257)))))

(assert (=> d!95169 (= (arrayNoDuplicates!0 lt!316257 (bvadd #b00000000000000000000000000000001 from!3004) lt!316254) e!392687)))

(declare-fun b!689718 () Bool)

(assert (=> b!689718 (= e!392687 e!392686)))

(declare-fun res!454349 () Bool)

(assert (=> b!689718 (=> (not res!454349) (not e!392686))))

(assert (=> b!689718 (= res!454349 (not e!392685))))

(declare-fun res!454350 () Bool)

(assert (=> b!689718 (=> (not res!454350) (not e!392685))))

(assert (=> b!689718 (= res!454350 (validKeyInArray!0 (select (arr!19022 lt!316257) (bvadd #b00000000000000000000000000000001 from!3004))))))

(assert (= (and d!95169 (not res!454348)) b!689718))

(assert (= (and b!689718 res!454350) b!689715))

(assert (= (and b!689718 res!454349) b!689714))

(assert (= (and b!689714 c!78050) b!689716))

(assert (= (and b!689714 (not c!78050)) b!689717))

(assert (= (or b!689716 b!689717) bm!34188))

(declare-fun m!653397 () Bool)

(assert (=> b!689714 m!653397))

(assert (=> b!689714 m!653397))

(declare-fun m!653399 () Bool)

(assert (=> b!689714 m!653399))

(assert (=> b!689715 m!653397))

(assert (=> b!689715 m!653397))

(declare-fun m!653401 () Bool)

(assert (=> b!689715 m!653401))

(assert (=> bm!34188 m!653397))

(declare-fun m!653403 () Bool)

(assert (=> bm!34188 m!653403))

(assert (=> b!689718 m!653397))

(assert (=> b!689718 m!653397))

(assert (=> b!689718 m!653399))

(assert (=> b!689598 d!95169))

(declare-fun d!95171 () Bool)

(declare-fun e!392710 () Bool)

(assert (=> d!95171 e!392710))

(declare-fun res!454369 () Bool)

(assert (=> d!95171 (=> (not res!454369) (not e!392710))))

(assert (=> d!95171 (= res!454369 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19403 a!3626))))))

(declare-fun lt!316286 () Unit!24347)

(declare-fun choose!41 (array!39709 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!13116) Unit!24347)

(assert (=> d!95171 (= lt!316286 (choose!41 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316254))))

(assert (=> d!95171 (bvslt (size!19403 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95171 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!316254) lt!316286)))

(declare-fun b!689743 () Bool)

(assert (=> b!689743 (= e!392710 (arrayNoDuplicates!0 (array!39710 (store (arr!19022 a!3626) i!1382 k!2843) (size!19403 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!316254))))

(assert (= (and d!95171 res!454369) b!689743))

(declare-fun m!653429 () Bool)

(assert (=> d!95171 m!653429))

(assert (=> b!689743 m!653251))

(declare-fun m!653431 () Bool)

(assert (=> b!689743 m!653431))

(assert (=> b!689598 d!95171))

(declare-fun d!95185 () Bool)

(declare-fun lt!316287 () Bool)

(assert (=> d!95185 (= lt!316287 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!305 lt!316254)))))

(declare-fun e!392716 () Bool)

(assert (=> d!95185 (= lt!316287 e!392716)))

(declare-fun res!454374 () Bool)

(assert (=> d!95185 (=> (not res!454374) (not e!392716))))

(assert (=> d!95185 (= res!454374 (is-Cons!13112 lt!316254))))

(assert (=> d!95185 (= (contains!3659 lt!316254 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316287)))

(declare-fun b!689748 () Bool)

(declare-fun e!392715 () Bool)

(assert (=> b!689748 (= e!392716 e!392715)))

(declare-fun res!454375 () Bool)

(assert (=> b!689748 (=> res!454375 e!392715)))

(assert (=> b!689748 (= res!454375 (= (h!14157 lt!316254) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689749 () Bool)

(assert (=> b!689749 (= e!392715 (contains!3659 (t!19388 lt!316254) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95185 res!454374) b!689748))

(assert (= (and b!689748 (not res!454375)) b!689749))

(assert (=> d!95185 m!653345))

(declare-fun m!653437 () Bool)

(assert (=> d!95185 m!653437))

(declare-fun m!653439 () Bool)

(assert (=> b!689749 m!653439))

(assert (=> b!689588 d!95185))

(declare-fun d!95189 () Bool)

(declare-fun lt!316288 () Bool)

(assert (=> d!95189 (= lt!316288 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!305 lt!316254)))))

(declare-fun e!392720 () Bool)

(assert (=> d!95189 (= lt!316288 e!392720)))

(declare-fun res!454378 () Bool)

(assert (=> d!95189 (=> (not res!454378) (not e!392720))))

(assert (=> d!95189 (= res!454378 (is-Cons!13112 lt!316254))))

(assert (=> d!95189 (= (contains!3659 lt!316254 #b0000000000000000000000000000000000000000000000000000000000000000) lt!316288)))

(declare-fun b!689752 () Bool)

(declare-fun e!392719 () Bool)

(assert (=> b!689752 (= e!392720 e!392719)))

(declare-fun res!454379 () Bool)

(assert (=> b!689752 (=> res!454379 e!392719)))

(assert (=> b!689752 (= res!454379 (= (h!14157 lt!316254) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689753 () Bool)

(assert (=> b!689753 (= e!392719 (contains!3659 (t!19388 lt!316254) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95189 res!454378) b!689752))

(assert (= (and b!689752 (not res!454379)) b!689753))

(assert (=> d!95189 m!653345))

(declare-fun m!653445 () Bool)

(assert (=> d!95189 m!653445))

(declare-fun m!653447 () Bool)

(assert (=> b!689753 m!653447))

(assert (=> b!689577 d!95189))

(declare-fun b!689754 () Bool)

(declare-fun e!392722 () Bool)

(declare-fun e!392724 () Bool)

(assert (=> b!689754 (= e!392722 e!392724)))

(declare-fun c!78054 () Bool)

(assert (=> b!689754 (= c!78054 (validKeyInArray!0 (select (arr!19022 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!689755 () Bool)

(declare-fun e!392721 () Bool)

(assert (=> b!689755 (= e!392721 (contains!3659 Nil!13113 (select (arr!19022 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!689756 () Bool)

(declare-fun call!34194 () Bool)

(assert (=> b!689756 (= e!392724 call!34194)))

(declare-fun b!689757 () Bool)

(assert (=> b!689757 (= e!392724 call!34194)))

(declare-fun bm!34191 () Bool)

(assert (=> bm!34191 (= call!34194 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!78054 (Cons!13112 (select (arr!19022 a!3626) #b00000000000000000000000000000000) Nil!13113) Nil!13113)))))

(declare-fun d!95193 () Bool)

(declare-fun res!454380 () Bool)

(declare-fun e!392723 () Bool)

(assert (=> d!95193 (=> res!454380 e!392723)))

(assert (=> d!95193 (= res!454380 (bvsge #b00000000000000000000000000000000 (size!19403 a!3626)))))

(assert (=> d!95193 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13113) e!392723)))

(declare-fun b!689758 () Bool)

(assert (=> b!689758 (= e!392723 e!392722)))

(declare-fun res!454381 () Bool)

(assert (=> b!689758 (=> (not res!454381) (not e!392722))))

(assert (=> b!689758 (= res!454381 (not e!392721))))

(declare-fun res!454382 () Bool)

(assert (=> b!689758 (=> (not res!454382) (not e!392721))))

(assert (=> b!689758 (= res!454382 (validKeyInArray!0 (select (arr!19022 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!95193 (not res!454380)) b!689758))

(assert (= (and b!689758 res!454382) b!689755))

(assert (= (and b!689758 res!454381) b!689754))

(assert (= (and b!689754 c!78054) b!689756))

(assert (= (and b!689754 (not c!78054)) b!689757))

(assert (= (or b!689756 b!689757) bm!34191))

(declare-fun m!653449 () Bool)

(assert (=> b!689754 m!653449))

(assert (=> b!689754 m!653449))

(declare-fun m!653451 () Bool)

(assert (=> b!689754 m!653451))

(assert (=> b!689755 m!653449))

(assert (=> b!689755 m!653449))

(declare-fun m!653453 () Bool)

(assert (=> b!689755 m!653453))

(assert (=> bm!34191 m!653449))

(declare-fun m!653455 () Bool)

(assert (=> bm!34191 m!653455))

(assert (=> b!689758 m!653449))

(assert (=> b!689758 m!653449))

(assert (=> b!689758 m!653451))

(assert (=> b!689586 d!95193))

(declare-fun d!95195 () Bool)

(assert (=> d!95195 (= (validKeyInArray!0 k!2843) (and (not (= k!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!689575 d!95195))

(assert (=> b!689576 d!95133))

(declare-fun d!95197 () Bool)

(assert (=> d!95197 (= (array_inv!14796 a!3626) (bvsge (size!19403 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!61612 d!95197))

(declare-fun d!95201 () Bool)

(declare-fun lt!316292 () Bool)

(assert (=> d!95201 (= lt!316292 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!305 acc!681)))))

(declare-fun e!392738 () Bool)

(assert (=> d!95201 (= lt!316292 e!392738)))

(declare-fun res!454395 () Bool)

(assert (=> d!95201 (=> (not res!454395) (not e!392738))))

(assert (=> d!95201 (= res!454395 (is-Cons!13112 acc!681))))

(assert (=> d!95201 (= (contains!3659 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!316292)))

(declare-fun b!689771 () Bool)

(declare-fun e!392737 () Bool)

(assert (=> b!689771 (= e!392738 e!392737)))

(declare-fun res!454396 () Bool)

(assert (=> b!689771 (=> res!454396 e!392737)))

(assert (=> b!689771 (= res!454396 (= (h!14157 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!689772 () Bool)

(assert (=> b!689772 (= e!392737 (contains!3659 (t!19388 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!95201 res!454395) b!689771))

(assert (= (and b!689771 (not res!454396)) b!689772))

(assert (=> d!95201 m!653323))

(declare-fun m!653465 () Bool)

(assert (=> d!95201 m!653465))

(declare-fun m!653467 () Bool)

(assert (=> b!689772 m!653467))

(assert (=> b!689597 d!95201))

(assert (=> b!689595 d!95143))

(declare-fun d!95205 () Bool)

(declare-fun res!454404 () Bool)

(declare-fun e!392747 () Bool)

(assert (=> d!95205 (=> res!454404 e!392747)))

(assert (=> d!95205 (= res!454404 (= (select (arr!19022 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!95205 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!392747)))

(declare-fun b!689782 () Bool)

(declare-fun e!392748 () Bool)

(assert (=> b!689782 (= e!392747 e!392748)))

(declare-fun res!454405 () Bool)

(assert (=> b!689782 (=> (not res!454405) (not e!392748))))

(assert (=> b!689782 (= res!454405 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19403 a!3626)))))

(declare-fun b!689783 () Bool)

(assert (=> b!689783 (= e!392748 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!95205 (not res!454404)) b!689782))

(assert (= (and b!689782 res!454405) b!689783))

(assert (=> d!95205 m!653449))

(declare-fun m!653473 () Bool)

(assert (=> b!689783 m!653473))

(assert (=> b!689585 d!95205))

(declare-fun d!95211 () Bool)

(assert (=> d!95211 (= ($colon$colon!408 acc!681 (select (arr!19022 a!3626) from!3004)) (Cons!13112 (select (arr!19022 a!3626) from!3004) acc!681))))

(assert (=> b!689594 d!95211))

(declare-fun b!689809 () Bool)

(declare-fun e!392774 () Bool)

(declare-fun e!392771 () Bool)

(assert (=> b!689809 (= e!392774 e!392771)))

(declare-fun res!454427 () Bool)

(assert (=> b!689809 (=> res!454427 e!392771)))

(declare-fun e!392772 () Bool)

(assert (=> b!689809 (= res!454427 e!392772)))

(declare-fun res!454429 () Bool)

(assert (=> b!689809 (=> (not res!454429) (not e!392772))))

(assert (=> b!689809 (= res!454429 (= (h!14157 acc!681) (h!14157 acc!681)))))

(declare-fun b!689811 () Bool)

(assert (=> b!689811 (= e!392771 (subseq!244 acc!681 (t!19388 acc!681)))))

(declare-fun d!95215 () Bool)

(declare-fun res!454426 () Bool)

(declare-fun e!392773 () Bool)

(assert (=> d!95215 (=> res!454426 e!392773)))

(assert (=> d!95215 (= res!454426 (is-Nil!13113 acc!681))))

(assert (=> d!95215 (= (subseq!244 acc!681 acc!681) e!392773)))

(declare-fun b!689808 () Bool)

(assert (=> b!689808 (= e!392773 e!392774)))

(declare-fun res!454428 () Bool)

(assert (=> b!689808 (=> (not res!454428) (not e!392774))))

(assert (=> b!689808 (= res!454428 (is-Cons!13112 acc!681))))

(declare-fun b!689810 () Bool)

(assert (=> b!689810 (= e!392772 (subseq!244 (t!19388 acc!681) (t!19388 acc!681)))))

(assert (= (and d!95215 (not res!454426)) b!689808))

(assert (= (and b!689808 res!454428) b!689809))

(assert (= (and b!689809 res!454429) b!689810))

(assert (= (and b!689809 (not res!454427)) b!689811))

(declare-fun m!653499 () Bool)

(assert (=> b!689811 m!653499))

(declare-fun m!653501 () Bool)

(assert (=> b!689810 m!653501))

(assert (=> b!689594 d!95215))

(declare-fun d!95233 () Bool)

(assert (=> d!95233 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!316310 () Unit!24347)

(declare-fun choose!80 (array!39709 List!13116 List!13116 (_ BitVec 32)) Unit!24347)

(assert (=> d!95233 (= lt!316310 (choose!80 a!3626 ($colon$colon!408 acc!681 (select (arr!19022 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> d!95233 (bvslt (size!19403 a!3626) #b01111111111111111111111111111111)))

(assert (=> d!95233 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!408 acc!681 (select (arr!19022 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)) lt!316310)))

(declare-fun bs!20208 () Bool)

(assert (= bs!20208 d!95233))

(assert (=> bs!20208 m!653265))

(assert (=> bs!20208 m!653277))

(declare-fun m!653525 () Bool)

(assert (=> bs!20208 m!653525))

(assert (=> b!689594 d!95233))

(declare-fun d!95247 () Bool)

(assert (=> d!95247 (subseq!244 acc!681 acc!681)))

(declare-fun lt!316316 () Unit!24347)

(declare-fun choose!36 (List!13116) Unit!24347)

(assert (=> d!95247 (= lt!316316 (choose!36 acc!681))))

(assert (=> d!95247 (= (lemmaListSubSeqRefl!0 acc!681) lt!316316)))

(declare-fun bs!20209 () Bool)

(assert (= bs!20209 d!95247))

(assert (=> bs!20209 m!653263))

(declare-fun m!653531 () Bool)

(assert (=> bs!20209 m!653531))

(assert (=> b!689594 d!95247))

(declare-fun b!689833 () Bool)

(declare-fun e!392794 () Bool)

(declare-fun e!392796 () Bool)

(assert (=> b!689833 (= e!392794 e!392796)))

(declare-fun c!78061 () Bool)

(assert (=> b!689833 (= c!78061 (validKeyInArray!0 (select (arr!19022 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun e!392793 () Bool)

(declare-fun b!689834 () Bool)

(assert (=> b!689834 (= e!392793 (contains!3659 acc!681 (select (arr!19022 a!3626) (bvadd #b00000000000000000000000000000001 from!3004))))))

(declare-fun b!689835 () Bool)

(declare-fun call!34201 () Bool)

(assert (=> b!689835 (= e!392796 call!34201)))

(declare-fun b!689836 () Bool)

(assert (=> b!689836 (= e!392796 call!34201)))

(declare-fun bm!34198 () Bool)

(assert (=> bm!34198 (= call!34201 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (ite c!78061 (Cons!13112 (select (arr!19022 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) acc!681) acc!681)))))

