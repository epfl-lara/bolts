; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60528 () Bool)

(assert start!60528)

(declare-fun b!680124 () Bool)

(declare-datatypes ((Unit!23842 0))(
  ( (Unit!23843) )
))
(declare-fun e!387379 () Unit!23842)

(declare-fun Unit!23844 () Unit!23842)

(assert (=> b!680124 (= e!387379 Unit!23844)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!313007 () Unit!23842)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39465 0))(
  ( (array!39466 (arr!18918 (Array (_ BitVec 32) (_ BitVec 64))) (size!19282 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39465)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39465 (_ BitVec 64) (_ BitVec 32)) Unit!23842)

(assert (=> b!680124 (= lt!313007 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!680124 false))

(declare-fun b!680125 () Bool)

(declare-fun Unit!23845 () Unit!23842)

(assert (=> b!680125 (= e!387379 Unit!23845)))

(declare-fun b!680126 () Bool)

(declare-fun res!446572 () Bool)

(declare-fun e!387384 () Bool)

(assert (=> b!680126 (=> (not res!446572) (not e!387384))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680126 (= res!446572 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19282 a!3626))))))

(declare-fun b!680127 () Bool)

(declare-fun res!446571 () Bool)

(assert (=> b!680127 (=> (not res!446571) (not e!387384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680127 (= res!446571 (validKeyInArray!0 k!2843))))

(declare-fun b!680128 () Bool)

(declare-fun res!446573 () Bool)

(assert (=> b!680128 (=> (not res!446573) (not e!387384))))

(declare-datatypes ((List!13012 0))(
  ( (Nil!13009) (Cons!13008 (h!14053 (_ BitVec 64)) (t!19248 List!13012)) )
))
(declare-fun arrayNoDuplicates!0 (array!39465 (_ BitVec 32) List!13012) Bool)

(assert (=> b!680128 (= res!446573 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13009))))

(declare-fun b!680129 () Bool)

(declare-fun res!446575 () Bool)

(assert (=> b!680129 (=> (not res!446575) (not e!387384))))

(declare-fun acc!681 () List!13012)

(assert (=> b!680129 (= res!446575 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!680130 () Bool)

(declare-fun res!446564 () Bool)

(assert (=> b!680130 (=> (not res!446564) (not e!387384))))

(declare-fun arrayContainsKey!0 (array!39465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680130 (= res!446564 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!680131 () Bool)

(declare-fun res!446568 () Bool)

(assert (=> b!680131 (=> (not res!446568) (not e!387384))))

(declare-fun contains!3555 (List!13012 (_ BitVec 64)) Bool)

(assert (=> b!680131 (= res!446568 (not (contains!3555 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680132 () Bool)

(declare-fun res!446574 () Bool)

(assert (=> b!680132 (=> (not res!446574) (not e!387384))))

(declare-fun noDuplicate!802 (List!13012) Bool)

(assert (=> b!680132 (= res!446574 (noDuplicate!802 acc!681))))

(declare-fun b!680133 () Bool)

(declare-fun res!446566 () Bool)

(assert (=> b!680133 (=> (not res!446566) (not e!387384))))

(assert (=> b!680133 (= res!446566 (not (contains!3555 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680134 () Bool)

(declare-fun res!446565 () Bool)

(assert (=> b!680134 (=> (not res!446565) (not e!387384))))

(declare-fun e!387382 () Bool)

(assert (=> b!680134 (= res!446565 e!387382)))

(declare-fun res!446577 () Bool)

(assert (=> b!680134 (=> res!446577 e!387382)))

(declare-fun e!387378 () Bool)

(assert (=> b!680134 (= res!446577 e!387378)))

(declare-fun res!446579 () Bool)

(assert (=> b!680134 (=> (not res!446579) (not e!387378))))

(assert (=> b!680134 (= res!446579 (bvsgt from!3004 i!1382))))

(declare-fun b!680135 () Bool)

(declare-fun e!387381 () Bool)

(declare-fun e!387383 () Bool)

(assert (=> b!680135 (= e!387381 e!387383)))

(declare-fun res!446578 () Bool)

(assert (=> b!680135 (=> res!446578 e!387383)))

(assert (=> b!680135 (= res!446578 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun subseq!140 (List!13012 List!13012) Bool)

(assert (=> b!680135 (subseq!140 acc!681 acc!681)))

(declare-fun lt!313008 () Unit!23842)

(declare-fun lemmaListSubSeqRefl!0 (List!13012) Unit!23842)

(assert (=> b!680135 (= lt!313008 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!680136 () Bool)

(declare-fun $colon$colon!304 (List!13012 (_ BitVec 64)) List!13012)

(assert (=> b!680136 (= e!387383 (noDuplicate!802 ($colon$colon!304 acc!681 (select (arr!18918 a!3626) from!3004))))))

(declare-fun b!680137 () Bool)

(declare-fun e!387385 () Bool)

(assert (=> b!680137 (= e!387382 e!387385)))

(declare-fun res!446569 () Bool)

(assert (=> b!680137 (=> (not res!446569) (not e!387385))))

(assert (=> b!680137 (= res!446569 (bvsle from!3004 i!1382))))

(declare-fun res!446567 () Bool)

(assert (=> start!60528 (=> (not res!446567) (not e!387384))))

(assert (=> start!60528 (= res!446567 (and (bvslt (size!19282 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19282 a!3626))))))

(assert (=> start!60528 e!387384))

(assert (=> start!60528 true))

(declare-fun array_inv!14692 (array!39465) Bool)

(assert (=> start!60528 (array_inv!14692 a!3626)))

(declare-fun b!680138 () Bool)

(assert (=> b!680138 (= e!387385 (not (contains!3555 acc!681 k!2843)))))

(declare-fun b!680139 () Bool)

(declare-fun res!446570 () Bool)

(assert (=> b!680139 (=> (not res!446570) (not e!387384))))

(assert (=> b!680139 (= res!446570 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19282 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!680140 () Bool)

(assert (=> b!680140 (= e!387384 (not e!387381))))

(declare-fun res!446576 () Bool)

(assert (=> b!680140 (=> res!446576 e!387381)))

(assert (=> b!680140 (= res!446576 (not (validKeyInArray!0 (select (arr!18918 a!3626) from!3004))))))

(declare-fun lt!313006 () Unit!23842)

(assert (=> b!680140 (= lt!313006 e!387379)))

(declare-fun c!77147 () Bool)

(assert (=> b!680140 (= c!77147 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!680140 (arrayContainsKey!0 (array!39466 (store (arr!18918 a!3626) i!1382 k!2843) (size!19282 a!3626)) k!2843 from!3004)))

(declare-fun b!680141 () Bool)

(assert (=> b!680141 (= e!387378 (contains!3555 acc!681 k!2843))))

(assert (= (and start!60528 res!446567) b!680132))

(assert (= (and b!680132 res!446574) b!680133))

(assert (= (and b!680133 res!446566) b!680131))

(assert (= (and b!680131 res!446568) b!680134))

(assert (= (and b!680134 res!446579) b!680141))

(assert (= (and b!680134 (not res!446577)) b!680137))

(assert (= (and b!680137 res!446569) b!680138))

(assert (= (and b!680134 res!446565) b!680128))

(assert (= (and b!680128 res!446573) b!680129))

(assert (= (and b!680129 res!446575) b!680126))

(assert (= (and b!680126 res!446572) b!680127))

(assert (= (and b!680127 res!446571) b!680130))

(assert (= (and b!680130 res!446564) b!680139))

(assert (= (and b!680139 res!446570) b!680140))

(assert (= (and b!680140 c!77147) b!680124))

(assert (= (and b!680140 (not c!77147)) b!680125))

(assert (= (and b!680140 (not res!446576)) b!680135))

(assert (= (and b!680135 (not res!446578)) b!680136))

(declare-fun m!645279 () Bool)

(assert (=> b!680131 m!645279))

(declare-fun m!645281 () Bool)

(assert (=> b!680138 m!645281))

(declare-fun m!645283 () Bool)

(assert (=> b!680124 m!645283))

(declare-fun m!645285 () Bool)

(assert (=> b!680136 m!645285))

(assert (=> b!680136 m!645285))

(declare-fun m!645287 () Bool)

(assert (=> b!680136 m!645287))

(assert (=> b!680136 m!645287))

(declare-fun m!645289 () Bool)

(assert (=> b!680136 m!645289))

(declare-fun m!645291 () Bool)

(assert (=> b!680133 m!645291))

(declare-fun m!645293 () Bool)

(assert (=> start!60528 m!645293))

(declare-fun m!645295 () Bool)

(assert (=> b!680127 m!645295))

(assert (=> b!680140 m!645285))

(declare-fun m!645297 () Bool)

(assert (=> b!680140 m!645297))

(declare-fun m!645299 () Bool)

(assert (=> b!680140 m!645299))

(assert (=> b!680140 m!645285))

(declare-fun m!645301 () Bool)

(assert (=> b!680140 m!645301))

(declare-fun m!645303 () Bool)

(assert (=> b!680140 m!645303))

(declare-fun m!645305 () Bool)

(assert (=> b!680132 m!645305))

(declare-fun m!645307 () Bool)

(assert (=> b!680128 m!645307))

(declare-fun m!645309 () Bool)

(assert (=> b!680130 m!645309))

(assert (=> b!680141 m!645281))

(declare-fun m!645311 () Bool)

(assert (=> b!680135 m!645311))

(declare-fun m!645313 () Bool)

(assert (=> b!680135 m!645313))

(declare-fun m!645315 () Bool)

(assert (=> b!680129 m!645315))

(push 1)

(assert (not b!680128))

(assert (not b!680141))

(assert (not b!680124))

(assert (not b!680135))

(assert (not b!680129))

(assert (not b!680140))

(assert (not b!680138))

(assert (not b!680130))

(assert (not b!680136))

(assert (not b!680127))

(assert (not b!680132))

(assert (not b!680131))

(assert (not b!680133))

(assert (not start!60528))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!93455 () Bool)

(declare-fun lt!313036 () Bool)

(declare-fun content!269 (List!13012) (Set (_ BitVec 64)))

(assert (=> d!93455 (= lt!313036 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!269 acc!681)))))

(declare-fun e!387450 () Bool)

(assert (=> d!93455 (= lt!313036 e!387450)))

(declare-fun res!446693 () Bool)

(assert (=> d!93455 (=> (not res!446693) (not e!387450))))

(assert (=> d!93455 (= res!446693 (is-Cons!13008 acc!681))))

(assert (=> d!93455 (= (contains!3555 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313036)))

(declare-fun b!680266 () Bool)

(declare-fun e!387451 () Bool)

(assert (=> b!680266 (= e!387450 e!387451)))

(declare-fun res!446692 () Bool)

(assert (=> b!680266 (=> res!446692 e!387451)))

(assert (=> b!680266 (= res!446692 (= (h!14053 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680267 () Bool)

(assert (=> b!680267 (= e!387451 (contains!3555 (t!19248 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93455 res!446693) b!680266))

(assert (= (and b!680266 (not res!446692)) b!680267))

(declare-fun m!645405 () Bool)

(assert (=> d!93455 m!645405))

(declare-fun m!645407 () Bool)

(assert (=> d!93455 m!645407))

(declare-fun m!645409 () Bool)

(assert (=> b!680267 m!645409))

(assert (=> b!680131 d!93455))

(declare-fun d!93461 () Bool)

(assert (=> d!93461 (= (array_inv!14692 a!3626) (bvsge (size!19282 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60528 d!93461))

(declare-fun d!93463 () Bool)

(declare-fun lt!313037 () Bool)

(assert (=> d!93463 (= lt!313037 (set.member k!2843 (content!269 acc!681)))))

(declare-fun e!387454 () Bool)

(assert (=> d!93463 (= lt!313037 e!387454)))

(declare-fun res!446697 () Bool)

(assert (=> d!93463 (=> (not res!446697) (not e!387454))))

(assert (=> d!93463 (= res!446697 (is-Cons!13008 acc!681))))

(assert (=> d!93463 (= (contains!3555 acc!681 k!2843) lt!313037)))

(declare-fun b!680270 () Bool)

(declare-fun e!387455 () Bool)

(assert (=> b!680270 (= e!387454 e!387455)))

(declare-fun res!446696 () Bool)

(assert (=> b!680270 (=> res!446696 e!387455)))

(assert (=> b!680270 (= res!446696 (= (h!14053 acc!681) k!2843))))

(declare-fun b!680271 () Bool)

(assert (=> b!680271 (= e!387455 (contains!3555 (t!19248 acc!681) k!2843))))

(assert (= (and d!93463 res!446697) b!680270))

(assert (= (and b!680270 (not res!446696)) b!680271))

(assert (=> d!93463 m!645405))

(declare-fun m!645415 () Bool)

(assert (=> d!93463 m!645415))

(declare-fun m!645417 () Bool)

(assert (=> b!680271 m!645417))

(assert (=> b!680141 d!93463))

(declare-fun d!93467 () Bool)

(declare-fun res!446712 () Bool)

(declare-fun e!387470 () Bool)

(assert (=> d!93467 (=> res!446712 e!387470)))

(assert (=> d!93467 (= res!446712 (= (select (arr!18918 a!3626) #b00000000000000000000000000000000) k!2843))))

(assert (=> d!93467 (= (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000) e!387470)))

(declare-fun b!680286 () Bool)

(declare-fun e!387471 () Bool)

(assert (=> b!680286 (= e!387470 e!387471)))

(declare-fun res!446713 () Bool)

(assert (=> b!680286 (=> (not res!446713) (not e!387471))))

(assert (=> b!680286 (= res!446713 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19282 a!3626)))))

(declare-fun b!680287 () Bool)

(assert (=> b!680287 (= e!387471 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93467 (not res!446712)) b!680286))

(assert (= (and b!680286 res!446713) b!680287))

(declare-fun m!645423 () Bool)

(assert (=> d!93467 m!645423))

(declare-fun m!645425 () Bool)

(assert (=> b!680287 m!645425))

(assert (=> b!680130 d!93467))

(declare-fun d!93477 () Bool)

(assert (=> d!93477 (= (validKeyInArray!0 (select (arr!18918 a!3626) from!3004)) (and (not (= (select (arr!18918 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18918 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!680140 d!93477))

(declare-fun d!93481 () Bool)

(declare-fun res!446722 () Bool)

(declare-fun e!387480 () Bool)

(assert (=> d!93481 (=> res!446722 e!387480)))

(assert (=> d!93481 (= res!446722 (= (select (arr!18918 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k!2843))))

(assert (=> d!93481 (= (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!387480)))

(declare-fun b!680296 () Bool)

(declare-fun e!387481 () Bool)

(assert (=> b!680296 (= e!387480 e!387481)))

(declare-fun res!446723 () Bool)

(assert (=> b!680296 (=> (not res!446723) (not e!387481))))

(assert (=> b!680296 (= res!446723 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19282 a!3626)))))

(declare-fun b!680297 () Bool)

(assert (=> b!680297 (= e!387481 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93481 (not res!446722)) b!680296))

(assert (= (and b!680296 res!446723) b!680297))

(declare-fun m!645431 () Bool)

(assert (=> d!93481 m!645431))

(declare-fun m!645433 () Bool)

(assert (=> b!680297 m!645433))

(assert (=> b!680140 d!93481))

(declare-fun d!93483 () Bool)

(declare-fun res!446726 () Bool)

(declare-fun e!387484 () Bool)

(assert (=> d!93483 (=> res!446726 e!387484)))

(assert (=> d!93483 (= res!446726 (= (select (arr!18918 (array!39466 (store (arr!18918 a!3626) i!1382 k!2843) (size!19282 a!3626))) from!3004) k!2843))))

(assert (=> d!93483 (= (arrayContainsKey!0 (array!39466 (store (arr!18918 a!3626) i!1382 k!2843) (size!19282 a!3626)) k!2843 from!3004) e!387484)))

(declare-fun b!680300 () Bool)

(declare-fun e!387485 () Bool)

(assert (=> b!680300 (= e!387484 e!387485)))

(declare-fun res!446727 () Bool)

(assert (=> b!680300 (=> (not res!446727) (not e!387485))))

(assert (=> b!680300 (= res!446727 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19282 (array!39466 (store (arr!18918 a!3626) i!1382 k!2843) (size!19282 a!3626)))))))

(declare-fun b!680301 () Bool)

(assert (=> b!680301 (= e!387485 (arrayContainsKey!0 (array!39466 (store (arr!18918 a!3626) i!1382 k!2843) (size!19282 a!3626)) k!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93483 (not res!446726)) b!680300))

(assert (= (and b!680300 res!446727) b!680301))

(declare-fun m!645437 () Bool)

(assert (=> d!93483 m!645437))

(declare-fun m!645443 () Bool)

(assert (=> b!680301 m!645443))

(assert (=> b!680140 d!93483))

(declare-fun d!93489 () Bool)

(declare-fun lt!313042 () Bool)

(assert (=> d!93489 (= lt!313042 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!269 acc!681)))))

(declare-fun e!387486 () Bool)

(assert (=> d!93489 (= lt!313042 e!387486)))

(declare-fun res!446729 () Bool)

(assert (=> d!93489 (=> (not res!446729) (not e!387486))))

(assert (=> d!93489 (= res!446729 (is-Cons!13008 acc!681))))

(assert (=> d!93489 (= (contains!3555 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313042)))

(declare-fun b!680302 () Bool)

(declare-fun e!387487 () Bool)

(assert (=> b!680302 (= e!387486 e!387487)))

(declare-fun res!446728 () Bool)

(assert (=> b!680302 (=> res!446728 e!387487)))

(assert (=> b!680302 (= res!446728 (= (h!14053 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680303 () Bool)

(assert (=> b!680303 (= e!387487 (contains!3555 (t!19248 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93489 res!446729) b!680302))

(assert (= (and b!680302 (not res!446728)) b!680303))

(assert (=> d!93489 m!645405))

(declare-fun m!645445 () Bool)

(assert (=> d!93489 m!645445))

(declare-fun m!645449 () Bool)

(assert (=> b!680303 m!645449))

(assert (=> b!680133 d!93489))

(declare-fun d!93491 () Bool)

(declare-fun res!446742 () Bool)

(declare-fun e!387500 () Bool)

(assert (=> d!93491 (=> res!446742 e!387500)))

(assert (=> d!93491 (= res!446742 (is-Nil!13009 acc!681))))

(assert (=> d!93491 (= (noDuplicate!802 acc!681) e!387500)))

(declare-fun b!680316 () Bool)

(declare-fun e!387501 () Bool)

(assert (=> b!680316 (= e!387500 e!387501)))

(declare-fun res!446743 () Bool)

(assert (=> b!680316 (=> (not res!446743) (not e!387501))))

(assert (=> b!680316 (= res!446743 (not (contains!3555 (t!19248 acc!681) (h!14053 acc!681))))))

(declare-fun b!680317 () Bool)

(assert (=> b!680317 (= e!387501 (noDuplicate!802 (t!19248 acc!681)))))

(assert (= (and d!93491 (not res!446742)) b!680316))

(assert (= (and b!680316 res!446743) b!680317))

(declare-fun m!645457 () Bool)

(assert (=> b!680316 m!645457))

(declare-fun m!645459 () Bool)

(assert (=> b!680317 m!645459))

(assert (=> b!680132 d!93491))

(declare-fun d!93497 () Bool)

(declare-fun res!446744 () Bool)

(declare-fun e!387502 () Bool)

(assert (=> d!93497 (=> res!446744 e!387502)))

(assert (=> d!93497 (= res!446744 (is-Nil!13009 ($colon$colon!304 acc!681 (select (arr!18918 a!3626) from!3004))))))

(assert (=> d!93497 (= (noDuplicate!802 ($colon$colon!304 acc!681 (select (arr!18918 a!3626) from!3004))) e!387502)))

(declare-fun b!680318 () Bool)

(declare-fun e!387503 () Bool)

(assert (=> b!680318 (= e!387502 e!387503)))

(declare-fun res!446745 () Bool)

(assert (=> b!680318 (=> (not res!446745) (not e!387503))))

(assert (=> b!680318 (= res!446745 (not (contains!3555 (t!19248 ($colon$colon!304 acc!681 (select (arr!18918 a!3626) from!3004))) (h!14053 ($colon$colon!304 acc!681 (select (arr!18918 a!3626) from!3004))))))))

(declare-fun b!680319 () Bool)

(assert (=> b!680319 (= e!387503 (noDuplicate!802 (t!19248 ($colon$colon!304 acc!681 (select (arr!18918 a!3626) from!3004)))))))

(assert (= (and d!93497 (not res!446744)) b!680318))

(assert (= (and b!680318 res!446745) b!680319))

(declare-fun m!645461 () Bool)

(assert (=> b!680318 m!645461))

(declare-fun m!645463 () Bool)

(assert (=> b!680319 m!645463))

(assert (=> b!680136 d!93497))

(declare-fun d!93499 () Bool)

(assert (=> d!93499 (= ($colon$colon!304 acc!681 (select (arr!18918 a!3626) from!3004)) (Cons!13008 (select (arr!18918 a!3626) from!3004) acc!681))))

(assert (=> b!680136 d!93499))

(declare-fun b!680353 () Bool)

(declare-fun e!387534 () Bool)

(declare-fun e!387537 () Bool)

(assert (=> b!680353 (= e!387534 e!387537)))

(declare-fun res!446776 () Bool)

(assert (=> b!680353 (=> (not res!446776) (not e!387537))))

(assert (=> b!680353 (= res!446776 (is-Cons!13008 acc!681))))

(declare-fun b!680356 () Bool)

(declare-fun e!387535 () Bool)

(assert (=> b!680356 (= e!387535 (subseq!140 acc!681 (t!19248 acc!681)))))

(declare-fun d!93503 () Bool)

(declare-fun res!446773 () Bool)

(assert (=> d!93503 (=> res!446773 e!387534)))

(assert (=> d!93503 (= res!446773 (is-Nil!13009 acc!681))))

(assert (=> d!93503 (= (subseq!140 acc!681 acc!681) e!387534)))

(declare-fun b!680355 () Bool)

(declare-fun e!387536 () Bool)

(assert (=> b!680355 (= e!387536 (subseq!140 (t!19248 acc!681) (t!19248 acc!681)))))

(declare-fun b!680354 () Bool)

(assert (=> b!680354 (= e!387537 e!387535)))

(declare-fun res!446775 () Bool)

(assert (=> b!680354 (=> res!446775 e!387535)))

(assert (=> b!680354 (= res!446775 e!387536)))

(declare-fun res!446774 () Bool)

(assert (=> b!680354 (=> (not res!446774) (not e!387536))))

(assert (=> b!680354 (= res!446774 (= (h!14053 acc!681) (h!14053 acc!681)))))

(assert (= (and d!93503 (not res!446773)) b!680353))

(assert (= (and b!680353 res!446776) b!680354))

(assert (= (and b!680354 res!446774) b!680355))

(assert (= (and b!680354 (not res!446775)) b!680356))

(declare-fun m!645487 () Bool)

(assert (=> b!680356 m!645487))

(declare-fun m!645489 () Bool)

(assert (=> b!680355 m!645489))

(assert (=> b!680135 d!93503))

(declare-fun d!93511 () Bool)

(assert (=> d!93511 (subseq!140 acc!681 acc!681)))

(declare-fun lt!313049 () Unit!23842)

(declare-fun choose!36 (List!13012) Unit!23842)

(assert (=> d!93511 (= lt!313049 (choose!36 acc!681))))

(assert (=> d!93511 (= (lemmaListSubSeqRefl!0 acc!681) lt!313049)))

(declare-fun bs!19975 () Bool)

(assert (= bs!19975 d!93511))

(assert (=> bs!19975 m!645311))

(declare-fun m!645491 () Bool)

(assert (=> bs!19975 m!645491))

(assert (=> b!680135 d!93511))

(declare-fun d!93513 () Bool)

(assert (=> d!93513 (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313052 () Unit!23842)

(declare-fun choose!13 (array!39465 (_ BitVec 64) (_ BitVec 32)) Unit!23842)

(assert (=> d!93513 (= lt!313052 (choose!13 a!3626 k!2843 from!3004))))

(assert (=> d!93513 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!93513 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004) lt!313052)))

(declare-fun bs!19976 () Bool)

(assert (= bs!19976 d!93513))

(assert (=> bs!19976 m!645309))

(declare-fun m!645493 () Bool)

(assert (=> bs!19976 m!645493))

(assert (=> b!680124 d!93513))

(declare-fun d!93515 () Bool)

(declare-fun res!446820 () Bool)

(declare-fun e!387589 () Bool)

(assert (=> d!93515 (=> res!446820 e!387589)))

(assert (=> d!93515 (= res!446820 (bvsge from!3004 (size!19282 a!3626)))))

(assert (=> d!93515 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!387589)))

(declare-fun b!680414 () Bool)

(declare-fun e!387588 () Bool)

(declare-fun call!33946 () Bool)

(assert (=> b!680414 (= e!387588 call!33946)))

(declare-fun b!680415 () Bool)

(assert (=> b!680415 (= e!387588 call!33946)))

(declare-fun c!77164 () Bool)

(declare-fun bm!33943 () Bool)

(assert (=> bm!33943 (= call!33946 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77164 (Cons!13008 (select (arr!18918 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!680416 () Bool)

(declare-fun e!387590 () Bool)

(assert (=> b!680416 (= e!387590 e!387588)))

(assert (=> b!680416 (= c!77164 (validKeyInArray!0 (select (arr!18918 a!3626) from!3004)))))

(declare-fun b!680417 () Bool)

(declare-fun e!387591 () Bool)

(assert (=> b!680417 (= e!387591 (contains!3555 acc!681 (select (arr!18918 a!3626) from!3004)))))

(declare-fun b!680418 () Bool)

(assert (=> b!680418 (= e!387589 e!387590)))

(declare-fun res!446822 () Bool)

(assert (=> b!680418 (=> (not res!446822) (not e!387590))))

(assert (=> b!680418 (= res!446822 (not e!387591))))

(declare-fun res!446821 () Bool)

(assert (=> b!680418 (=> (not res!446821) (not e!387591))))

(assert (=> b!680418 (= res!446821 (validKeyInArray!0 (select (arr!18918 a!3626) from!3004)))))

(assert (= (and d!93515 (not res!446820)) b!680418))

(assert (= (and b!680418 res!446821) b!680417))

(assert (= (and b!680418 res!446822) b!680416))

(assert (= (and b!680416 c!77164) b!680415))

(assert (= (and b!680416 (not c!77164)) b!680414))

(assert (= (or b!680415 b!680414) bm!33943))

(assert (=> bm!33943 m!645285))

(declare-fun m!645525 () Bool)

(assert (=> bm!33943 m!645525))

(assert (=> b!680416 m!645285))

(assert (=> b!680416 m!645285))

(assert (=> b!680416 m!645301))

(assert (=> b!680417 m!645285))

(assert (=> b!680417 m!645285))

(declare-fun m!645527 () Bool)

(assert (=> b!680417 m!645527))

(assert (=> b!680418 m!645285))

(assert (=> b!680418 m!645285))

(assert (=> b!680418 m!645301))

(assert (=> b!680129 d!93515))

(declare-fun d!93535 () Bool)

(declare-fun res!446823 () Bool)

(declare-fun e!387593 () Bool)

(assert (=> d!93535 (=> res!446823 e!387593)))

(assert (=> d!93535 (= res!446823 (bvsge #b00000000000000000000000000000000 (size!19282 a!3626)))))

(assert (=> d!93535 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13009) e!387593)))

(declare-fun b!680419 () Bool)

(declare-fun e!387592 () Bool)

(declare-fun call!33947 () Bool)

(assert (=> b!680419 (= e!387592 call!33947)))

(declare-fun b!680420 () Bool)

(assert (=> b!680420 (= e!387592 call!33947)))

(declare-fun bm!33944 () Bool)

(declare-fun c!77165 () Bool)

(assert (=> bm!33944 (= call!33947 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77165 (Cons!13008 (select (arr!18918 a!3626) #b00000000000000000000000000000000) Nil!13009) Nil!13009)))))

(declare-fun b!680421 () Bool)

(declare-fun e!387594 () Bool)

(assert (=> b!680421 (= e!387594 e!387592)))

(assert (=> b!680421 (= c!77165 (validKeyInArray!0 (select (arr!18918 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!680422 () Bool)

(declare-fun e!387595 () Bool)

(assert (=> b!680422 (= e!387595 (contains!3555 Nil!13009 (select (arr!18918 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!680423 () Bool)

(assert (=> b!680423 (= e!387593 e!387594)))

(declare-fun res!446825 () Bool)

(assert (=> b!680423 (=> (not res!446825) (not e!387594))))

(assert (=> b!680423 (= res!446825 (not e!387595))))

(declare-fun res!446824 () Bool)

(assert (=> b!680423 (=> (not res!446824) (not e!387595))))

(assert (=> b!680423 (= res!446824 (validKeyInArray!0 (select (arr!18918 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!93535 (not res!446823)) b!680423))

(assert (= (and b!680423 res!446824) b!680422))

(assert (= (and b!680423 res!446825) b!680421))

(assert (= (and b!680421 c!77165) b!680420))

(assert (= (and b!680421 (not c!77165)) b!680419))

(assert (= (or b!680420 b!680419) bm!33944))

(assert (=> bm!33944 m!645423))

(declare-fun m!645529 () Bool)

(assert (=> bm!33944 m!645529))

(assert (=> b!680421 m!645423))

(assert (=> b!680421 m!645423))

(declare-fun m!645531 () Bool)

(assert (=> b!680421 m!645531))

(assert (=> b!680422 m!645423))

(assert (=> b!680422 m!645423))

(declare-fun m!645533 () Bool)

(assert (=> b!680422 m!645533))

(assert (=> b!680423 m!645423))

(assert (=> b!680423 m!645423))

(assert (=> b!680423 m!645531))

