; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61294 () Bool)

(assert start!61294)

(declare-fun b!686376 () Bool)

(declare-fun e!390849 () Bool)

(assert (=> b!686376 (= e!390849 (not true))))

(declare-datatypes ((array!39634 0))(
  ( (array!39635 (arr!18989 (Array (_ BitVec 32) (_ BitVec 64))) (size!19362 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39634)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13083 0))(
  ( (Nil!13080) (Cons!13079 (h!14124 (_ BitVec 64)) (t!19346 List!13083)) )
))
(declare-fun lt!315061 () List!13083)

(declare-fun arrayNoDuplicates!0 (array!39634 (_ BitVec 32) List!13083) Bool)

(assert (=> b!686376 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315061)))

(declare-fun acc!681 () List!13083)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((Unit!24182 0))(
  ( (Unit!24183) )
))
(declare-fun lt!315060 () Unit!24182)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39634 (_ BitVec 64) (_ BitVec 32) List!13083 List!13083) Unit!24182)

(assert (=> b!686376 (= lt!315060 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315061))))

(declare-fun -!176 (List!13083 (_ BitVec 64)) List!13083)

(assert (=> b!686376 (= (-!176 lt!315061 k!2843) acc!681)))

(declare-fun $colon$colon!375 (List!13083 (_ BitVec 64)) List!13083)

(assert (=> b!686376 (= lt!315061 ($colon$colon!375 acc!681 k!2843))))

(declare-fun lt!315062 () Unit!24182)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13083) Unit!24182)

(assert (=> b!686376 (= lt!315062 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!211 (List!13083 List!13083) Bool)

(assert (=> b!686376 (subseq!211 acc!681 acc!681)))

(declare-fun lt!315057 () Unit!24182)

(declare-fun lemmaListSubSeqRefl!0 (List!13083) Unit!24182)

(assert (=> b!686376 (= lt!315057 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686376 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315059 () Unit!24182)

(declare-fun e!390852 () Unit!24182)

(assert (=> b!686376 (= lt!315059 e!390852)))

(declare-fun c!77729 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686376 (= c!77729 (validKeyInArray!0 (select (arr!18989 a!3626) from!3004)))))

(declare-fun lt!315058 () Unit!24182)

(declare-fun e!390848 () Unit!24182)

(assert (=> b!686376 (= lt!315058 e!390848)))

(declare-fun c!77728 () Bool)

(declare-fun arrayContainsKey!0 (array!39634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686376 (= c!77728 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!686376 (arrayContainsKey!0 (array!39635 (store (arr!18989 a!3626) i!1382 k!2843) (size!19362 a!3626)) k!2843 from!3004)))

(declare-fun b!686377 () Bool)

(declare-fun res!451665 () Bool)

(assert (=> b!686377 (=> (not res!451665) (not e!390849))))

(declare-fun noDuplicate!873 (List!13083) Bool)

(assert (=> b!686377 (= res!451665 (noDuplicate!873 acc!681))))

(declare-fun b!686378 () Bool)

(declare-fun res!451654 () Bool)

(assert (=> b!686378 (=> (not res!451654) (not e!390849))))

(assert (=> b!686378 (= res!451654 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19362 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686379 () Bool)

(declare-fun e!390851 () Bool)

(declare-fun contains!3626 (List!13083 (_ BitVec 64)) Bool)

(assert (=> b!686379 (= e!390851 (contains!3626 acc!681 k!2843))))

(declare-fun b!686380 () Bool)

(declare-fun Unit!24184 () Unit!24182)

(assert (=> b!686380 (= e!390848 Unit!24184)))

(declare-fun b!686381 () Bool)

(declare-fun res!451661 () Bool)

(assert (=> b!686381 (=> (not res!451661) (not e!390849))))

(assert (=> b!686381 (= res!451661 (validKeyInArray!0 k!2843))))

(declare-fun res!451664 () Bool)

(assert (=> start!61294 (=> (not res!451664) (not e!390849))))

(assert (=> start!61294 (= res!451664 (and (bvslt (size!19362 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19362 a!3626))))))

(assert (=> start!61294 e!390849))

(assert (=> start!61294 true))

(declare-fun array_inv!14763 (array!39634) Bool)

(assert (=> start!61294 (array_inv!14763 a!3626)))

(declare-fun b!686382 () Bool)

(declare-fun e!390853 () Bool)

(declare-fun e!390850 () Bool)

(assert (=> b!686382 (= e!390853 e!390850)))

(declare-fun res!451656 () Bool)

(assert (=> b!686382 (=> (not res!451656) (not e!390850))))

(assert (=> b!686382 (= res!451656 (bvsle from!3004 i!1382))))

(declare-fun b!686383 () Bool)

(declare-fun res!451659 () Bool)

(assert (=> b!686383 (=> (not res!451659) (not e!390849))))

(assert (=> b!686383 (= res!451659 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13080))))

(declare-fun b!686384 () Bool)

(declare-fun res!451655 () Bool)

(assert (=> b!686384 (=> (not res!451655) (not e!390849))))

(assert (=> b!686384 (= res!451655 (not (contains!3626 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686385 () Bool)

(declare-fun Unit!24185 () Unit!24182)

(assert (=> b!686385 (= e!390848 Unit!24185)))

(declare-fun lt!315056 () Unit!24182)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39634 (_ BitVec 64) (_ BitVec 32)) Unit!24182)

(assert (=> b!686385 (= lt!315056 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!686385 false))

(declare-fun b!686386 () Bool)

(declare-fun res!451663 () Bool)

(assert (=> b!686386 (=> (not res!451663) (not e!390849))))

(assert (=> b!686386 (= res!451663 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19362 a!3626))))))

(declare-fun b!686387 () Bool)

(declare-fun Unit!24186 () Unit!24182)

(assert (=> b!686387 (= e!390852 Unit!24186)))

(declare-fun b!686388 () Bool)

(declare-fun res!451667 () Bool)

(assert (=> b!686388 (=> (not res!451667) (not e!390849))))

(assert (=> b!686388 (= res!451667 (not (contains!3626 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686389 () Bool)

(declare-fun lt!315063 () Unit!24182)

(assert (=> b!686389 (= e!390852 lt!315063)))

(declare-fun lt!315055 () Unit!24182)

(assert (=> b!686389 (= lt!315055 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686389 (subseq!211 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39634 List!13083 List!13083 (_ BitVec 32)) Unit!24182)

(assert (=> b!686389 (= lt!315063 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!375 acc!681 (select (arr!18989 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686389 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686390 () Bool)

(declare-fun res!451666 () Bool)

(assert (=> b!686390 (=> (not res!451666) (not e!390849))))

(assert (=> b!686390 (= res!451666 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686391 () Bool)

(assert (=> b!686391 (= e!390850 (not (contains!3626 acc!681 k!2843)))))

(declare-fun b!686392 () Bool)

(declare-fun res!451662 () Bool)

(assert (=> b!686392 (=> (not res!451662) (not e!390849))))

(assert (=> b!686392 (= res!451662 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686393 () Bool)

(declare-fun res!451657 () Bool)

(assert (=> b!686393 (=> (not res!451657) (not e!390849))))

(assert (=> b!686393 (= res!451657 e!390853)))

(declare-fun res!451658 () Bool)

(assert (=> b!686393 (=> res!451658 e!390853)))

(assert (=> b!686393 (= res!451658 e!390851)))

(declare-fun res!451660 () Bool)

(assert (=> b!686393 (=> (not res!451660) (not e!390851))))

(assert (=> b!686393 (= res!451660 (bvsgt from!3004 i!1382))))

(assert (= (and start!61294 res!451664) b!686377))

(assert (= (and b!686377 res!451665) b!686384))

(assert (= (and b!686384 res!451655) b!686388))

(assert (= (and b!686388 res!451667) b!686393))

(assert (= (and b!686393 res!451660) b!686379))

(assert (= (and b!686393 (not res!451658)) b!686382))

(assert (= (and b!686382 res!451656) b!686391))

(assert (= (and b!686393 res!451657) b!686383))

(assert (= (and b!686383 res!451659) b!686390))

(assert (= (and b!686390 res!451666) b!686386))

(assert (= (and b!686386 res!451663) b!686381))

(assert (= (and b!686381 res!451661) b!686392))

(assert (= (and b!686392 res!451662) b!686378))

(assert (= (and b!686378 res!451654) b!686376))

(assert (= (and b!686376 c!77728) b!686385))

(assert (= (and b!686376 (not c!77728)) b!686380))

(assert (= (and b!686376 c!77729) b!686389))

(assert (= (and b!686376 (not c!77729)) b!686387))

(declare-fun m!650533 () Bool)

(assert (=> b!686390 m!650533))

(declare-fun m!650535 () Bool)

(assert (=> b!686376 m!650535))

(declare-fun m!650537 () Bool)

(assert (=> b!686376 m!650537))

(declare-fun m!650539 () Bool)

(assert (=> b!686376 m!650539))

(declare-fun m!650541 () Bool)

(assert (=> b!686376 m!650541))

(declare-fun m!650543 () Bool)

(assert (=> b!686376 m!650543))

(declare-fun m!650545 () Bool)

(assert (=> b!686376 m!650545))

(assert (=> b!686376 m!650539))

(declare-fun m!650547 () Bool)

(assert (=> b!686376 m!650547))

(declare-fun m!650549 () Bool)

(assert (=> b!686376 m!650549))

(declare-fun m!650551 () Bool)

(assert (=> b!686376 m!650551))

(declare-fun m!650553 () Bool)

(assert (=> b!686376 m!650553))

(declare-fun m!650555 () Bool)

(assert (=> b!686376 m!650555))

(declare-fun m!650557 () Bool)

(assert (=> b!686376 m!650557))

(declare-fun m!650559 () Bool)

(assert (=> b!686376 m!650559))

(declare-fun m!650561 () Bool)

(assert (=> b!686385 m!650561))

(declare-fun m!650563 () Bool)

(assert (=> b!686391 m!650563))

(declare-fun m!650565 () Bool)

(assert (=> start!61294 m!650565))

(declare-fun m!650567 () Bool)

(assert (=> b!686377 m!650567))

(assert (=> b!686379 m!650563))

(declare-fun m!650569 () Bool)

(assert (=> b!686388 m!650569))

(declare-fun m!650571 () Bool)

(assert (=> b!686392 m!650571))

(declare-fun m!650573 () Bool)

(assert (=> b!686383 m!650573))

(declare-fun m!650575 () Bool)

(assert (=> b!686381 m!650575))

(declare-fun m!650577 () Bool)

(assert (=> b!686384 m!650577))

(assert (=> b!686389 m!650537))

(assert (=> b!686389 m!650539))

(declare-fun m!650579 () Bool)

(assert (=> b!686389 m!650579))

(declare-fun m!650581 () Bool)

(assert (=> b!686389 m!650581))

(assert (=> b!686389 m!650539))

(assert (=> b!686389 m!650579))

(assert (=> b!686389 m!650543))

(assert (=> b!686389 m!650559))

(push 1)

(assert (not b!686390))

(assert (not b!686392))

(assert (not start!61294))

(assert (not b!686388))

(assert (not b!686379))

(assert (not b!686381))

(assert (not b!686385))

(assert (not b!686383))

(assert (not b!686389))

(assert (not b!686384))

(assert (not b!686377))

(assert (not b!686376))

(assert (not b!686391))

(check-sat)

(pop 1)

(push 1)

