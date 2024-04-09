; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60340 () Bool)

(assert start!60340)

(declare-fun b!677361 () Bool)

(declare-fun e!386117 () Bool)

(declare-datatypes ((List!12954 0))(
  ( (Nil!12951) (Cons!12950 (h!13995 (_ BitVec 64)) (t!19190 List!12954)) )
))
(declare-fun acc!681 () List!12954)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3497 (List!12954 (_ BitVec 64)) Bool)

(assert (=> b!677361 (= e!386117 (contains!3497 acc!681 k!2843))))

(declare-fun b!677362 () Bool)

(declare-fun e!386112 () Bool)

(declare-fun e!386114 () Bool)

(assert (=> b!677362 (= e!386112 e!386114)))

(declare-fun res!443981 () Bool)

(assert (=> b!677362 (=> (not res!443981) (not e!386114))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677362 (= res!443981 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677363 () Bool)

(declare-fun res!443968 () Bool)

(declare-fun e!386113 () Bool)

(assert (=> b!677363 (=> (not res!443968) (not e!386113))))

(declare-datatypes ((array!39343 0))(
  ( (array!39344 (arr!18860 (Array (_ BitVec 32) (_ BitVec 64))) (size!19224 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39343)

(declare-fun arrayNoDuplicates!0 (array!39343 (_ BitVec 32) List!12954) Bool)

(assert (=> b!677363 (= res!443968 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677364 () Bool)

(declare-fun e!386119 () Bool)

(assert (=> b!677364 (= e!386119 (not (contains!3497 acc!681 k!2843)))))

(declare-fun res!443965 () Bool)

(assert (=> start!60340 (=> (not res!443965) (not e!386113))))

(assert (=> start!60340 (= res!443965 (and (bvslt (size!19224 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19224 a!3626))))))

(assert (=> start!60340 e!386113))

(assert (=> start!60340 true))

(declare-fun array_inv!14634 (array!39343) Bool)

(assert (=> start!60340 (array_inv!14634 a!3626)))

(declare-fun b!677365 () Bool)

(declare-fun res!443977 () Bool)

(assert (=> b!677365 (=> (not res!443977) (not e!386113))))

(declare-fun noDuplicate!744 (List!12954) Bool)

(assert (=> b!677365 (= res!443977 (noDuplicate!744 acc!681))))

(declare-fun b!677366 () Bool)

(declare-fun e!386116 () Bool)

(assert (=> b!677366 (= e!386116 e!386119)))

(declare-fun res!443964 () Bool)

(assert (=> b!677366 (=> (not res!443964) (not e!386119))))

(assert (=> b!677366 (= res!443964 (bvsle from!3004 i!1382))))

(declare-fun b!677367 () Bool)

(declare-fun res!443969 () Bool)

(assert (=> b!677367 (=> (not res!443969) (not e!386113))))

(assert (=> b!677367 (= res!443969 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677368 () Bool)

(declare-fun res!443980 () Bool)

(assert (=> b!677368 (=> (not res!443980) (not e!386113))))

(assert (=> b!677368 (= res!443980 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!677369 () Bool)

(declare-fun res!443967 () Bool)

(assert (=> b!677369 (=> (not res!443967) (not e!386113))))

(declare-fun arrayContainsKey!0 (array!39343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677369 (= res!443967 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677370 () Bool)

(declare-fun res!443970 () Bool)

(assert (=> b!677370 (=> (not res!443970) (not e!386113))))

(assert (=> b!677370 (= res!443970 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19224 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!677371 () Bool)

(declare-fun e!386115 () Bool)

(assert (=> b!677371 (= e!386115 (contains!3497 acc!681 k!2843))))

(declare-fun b!677372 () Bool)

(declare-fun res!443976 () Bool)

(assert (=> b!677372 (=> (not res!443976) (not e!386113))))

(assert (=> b!677372 (= res!443976 e!386116)))

(declare-fun res!443966 () Bool)

(assert (=> b!677372 (=> res!443966 e!386116)))

(assert (=> b!677372 (= res!443966 e!386117)))

(declare-fun res!443962 () Bool)

(assert (=> b!677372 (=> (not res!443962) (not e!386117))))

(assert (=> b!677372 (= res!443962 (bvsgt from!3004 i!1382))))

(declare-fun b!677373 () Bool)

(declare-fun res!443963 () Bool)

(assert (=> b!677373 (=> (not res!443963) (not e!386113))))

(assert (=> b!677373 (= res!443963 e!386112)))

(declare-fun res!443961 () Bool)

(assert (=> b!677373 (=> res!443961 e!386112)))

(assert (=> b!677373 (= res!443961 e!386115)))

(declare-fun res!443974 () Bool)

(assert (=> b!677373 (=> (not res!443974) (not e!386115))))

(assert (=> b!677373 (= res!443974 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677374 () Bool)

(declare-fun res!443975 () Bool)

(assert (=> b!677374 (=> (not res!443975) (not e!386113))))

(assert (=> b!677374 (= res!443975 (not (contains!3497 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677375 () Bool)

(declare-fun res!443972 () Bool)

(assert (=> b!677375 (=> (not res!443972) (not e!386113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677375 (= res!443972 (validKeyInArray!0 k!2843))))

(declare-fun b!677376 () Bool)

(declare-fun res!443971 () Bool)

(assert (=> b!677376 (=> (not res!443971) (not e!386113))))

(assert (=> b!677376 (= res!443971 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12951))))

(declare-fun b!677377 () Bool)

(assert (=> b!677377 (= e!386113 (not true))))

(assert (=> b!677377 (arrayNoDuplicates!0 (array!39344 (store (arr!18860 a!3626) i!1382 k!2843) (size!19224 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23756 0))(
  ( (Unit!23757) )
))
(declare-fun lt!312771 () Unit!23756)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39343 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12954) Unit!23756)

(assert (=> b!677377 (= lt!312771 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677378 () Bool)

(declare-fun res!443979 () Bool)

(assert (=> b!677378 (=> (not res!443979) (not e!386113))))

(assert (=> b!677378 (= res!443979 (not (validKeyInArray!0 (select (arr!18860 a!3626) from!3004))))))

(declare-fun b!677379 () Bool)

(assert (=> b!677379 (= e!386114 (not (contains!3497 acc!681 k!2843)))))

(declare-fun b!677380 () Bool)

(declare-fun res!443978 () Bool)

(assert (=> b!677380 (=> (not res!443978) (not e!386113))))

(assert (=> b!677380 (= res!443978 (not (contains!3497 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677381 () Bool)

(declare-fun res!443973 () Bool)

(assert (=> b!677381 (=> (not res!443973) (not e!386113))))

(assert (=> b!677381 (= res!443973 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19224 a!3626))))))

(assert (= (and start!60340 res!443965) b!677365))

(assert (= (and b!677365 res!443977) b!677374))

(assert (= (and b!677374 res!443975) b!677380))

(assert (= (and b!677380 res!443978) b!677372))

(assert (= (and b!677372 res!443962) b!677361))

(assert (= (and b!677372 (not res!443966)) b!677366))

(assert (= (and b!677366 res!443964) b!677364))

(assert (= (and b!677372 res!443976) b!677376))

(assert (= (and b!677376 res!443971) b!677363))

(assert (= (and b!677363 res!443968) b!677381))

(assert (= (and b!677381 res!443973) b!677375))

(assert (= (and b!677375 res!443972) b!677369))

(assert (= (and b!677369 res!443967) b!677370))

(assert (= (and b!677370 res!443970) b!677378))

(assert (= (and b!677378 res!443979) b!677368))

(assert (= (and b!677368 res!443980) b!677373))

(assert (= (and b!677373 res!443974) b!677371))

(assert (= (and b!677373 (not res!443961)) b!677362))

(assert (= (and b!677362 res!443981) b!677379))

(assert (= (and b!677373 res!443963) b!677367))

(assert (= (and b!677367 res!443969) b!677377))

(declare-fun m!643641 () Bool)

(assert (=> b!677365 m!643641))

(declare-fun m!643643 () Bool)

(assert (=> b!677367 m!643643))

(declare-fun m!643645 () Bool)

(assert (=> b!677380 m!643645))

(declare-fun m!643647 () Bool)

(assert (=> b!677371 m!643647))

(declare-fun m!643649 () Bool)

(assert (=> b!677378 m!643649))

(assert (=> b!677378 m!643649))

(declare-fun m!643651 () Bool)

(assert (=> b!677378 m!643651))

(assert (=> b!677379 m!643647))

(assert (=> b!677364 m!643647))

(declare-fun m!643653 () Bool)

(assert (=> b!677374 m!643653))

(declare-fun m!643655 () Bool)

(assert (=> b!677376 m!643655))

(declare-fun m!643657 () Bool)

(assert (=> b!677369 m!643657))

(declare-fun m!643659 () Bool)

(assert (=> start!60340 m!643659))

(declare-fun m!643661 () Bool)

(assert (=> b!677377 m!643661))

(declare-fun m!643663 () Bool)

(assert (=> b!677377 m!643663))

(declare-fun m!643665 () Bool)

(assert (=> b!677377 m!643665))

(declare-fun m!643667 () Bool)

(assert (=> b!677363 m!643667))

(declare-fun m!643669 () Bool)

(assert (=> b!677375 m!643669))

(assert (=> b!677361 m!643647))

(push 1)

(assert (not start!60340))

(assert (not b!677365))

(assert (not b!677374))

(assert (not b!677380))

(assert (not b!677376))

(assert (not b!677369))

(assert (not b!677378))

(assert (not b!677379))

(assert (not b!677377))

(assert (not b!677361))

(assert (not b!677364))

(assert (not b!677367))

(assert (not b!677363))

(assert (not b!677375))

(assert (not b!677371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

