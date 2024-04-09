; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63288 () Bool)

(assert start!63288)

(declare-fun b!712339 () Bool)

(declare-fun e!400785 () Bool)

(declare-fun e!400783 () Bool)

(assert (=> b!712339 (= e!400785 e!400783)))

(declare-fun res!475700 () Bool)

(assert (=> b!712339 (=> (not res!475700) (not e!400783))))

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!712339 (= res!475700 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13433 0))(
  ( (Nil!13430) (Cons!13429 (h!14474 (_ BitVec 64)) (t!19753 List!13433)) )
))
(declare-fun newAcc!49 () List!13433)

(declare-datatypes ((array!40403 0))(
  ( (array!40404 (arr!19339 (Array (_ BitVec 32) (_ BitVec 64))) (size!19748 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40403)

(declare-fun lt!318535 () List!13433)

(declare-fun $colon$colon!530 (List!13433 (_ BitVec 64)) List!13433)

(assert (=> b!712339 (= lt!318535 ($colon$colon!530 newAcc!49 (select (arr!19339 a!3591) from!2969)))))

(declare-fun lt!318536 () List!13433)

(declare-fun acc!652 () List!13433)

(assert (=> b!712339 (= lt!318536 ($colon$colon!530 acc!652 (select (arr!19339 a!3591) from!2969)))))

(declare-fun b!712340 () Bool)

(declare-fun res!475701 () Bool)

(assert (=> b!712340 (=> (not res!475701) (not e!400785))))

(declare-fun subseq!420 (List!13433 List!13433) Bool)

(assert (=> b!712340 (= res!475701 (subseq!420 acc!652 newAcc!49))))

(declare-fun res!475696 () Bool)

(assert (=> start!63288 (=> (not res!475696) (not e!400785))))

(assert (=> start!63288 (= res!475696 (and (bvslt (size!19748 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19748 a!3591))))))

(assert (=> start!63288 e!400785))

(assert (=> start!63288 true))

(declare-fun array_inv!15113 (array!40403) Bool)

(assert (=> start!63288 (array_inv!15113 a!3591)))

(declare-fun b!712341 () Bool)

(declare-fun res!475698 () Bool)

(assert (=> b!712341 (=> (not res!475698) (not e!400783))))

(declare-fun contains!3976 (List!13433 (_ BitVec 64)) Bool)

(assert (=> b!712341 (= res!475698 (not (contains!3976 lt!318535 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712342 () Bool)

(declare-fun res!475682 () Bool)

(assert (=> b!712342 (=> (not res!475682) (not e!400783))))

(declare-fun noDuplicate!1223 (List!13433) Bool)

(assert (=> b!712342 (= res!475682 (noDuplicate!1223 lt!318535))))

(declare-fun b!712343 () Bool)

(declare-fun res!475678 () Bool)

(assert (=> b!712343 (=> (not res!475678) (not e!400785))))

(assert (=> b!712343 (= res!475678 (not (contains!3976 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712344 () Bool)

(assert (=> b!712344 (= e!400783 (bvsge (bvsub (size!19748 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) (bvsub (size!19748 a!3591) from!2969)))))

(declare-fun b!712345 () Bool)

(declare-fun res!475699 () Bool)

(assert (=> b!712345 (=> (not res!475699) (not e!400785))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!712345 (= res!475699 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!712346 () Bool)

(declare-fun res!475686 () Bool)

(assert (=> b!712346 (=> (not res!475686) (not e!400783))))

(assert (=> b!712346 (= res!475686 (not (contains!3976 lt!318536 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712347 () Bool)

(declare-fun res!475683 () Bool)

(assert (=> b!712347 (=> (not res!475683) (not e!400783))))

(assert (=> b!712347 (= res!475683 (not (contains!3976 lt!318536 k0!2824)))))

(declare-fun b!712348 () Bool)

(declare-fun res!475677 () Bool)

(assert (=> b!712348 (=> (not res!475677) (not e!400785))))

(assert (=> b!712348 (= res!475677 (noDuplicate!1223 newAcc!49))))

(declare-fun b!712349 () Bool)

(declare-fun res!475684 () Bool)

(assert (=> b!712349 (=> (not res!475684) (not e!400783))))

(assert (=> b!712349 (= res!475684 (not (contains!3976 lt!318536 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712350 () Bool)

(declare-fun res!475687 () Bool)

(assert (=> b!712350 (=> (not res!475687) (not e!400783))))

(assert (=> b!712350 (= res!475687 (contains!3976 lt!318535 k0!2824))))

(declare-fun b!712351 () Bool)

(declare-fun res!475680 () Bool)

(assert (=> b!712351 (=> (not res!475680) (not e!400785))))

(assert (=> b!712351 (= res!475680 (contains!3976 newAcc!49 k0!2824))))

(declare-fun b!712352 () Bool)

(declare-fun res!475690 () Bool)

(assert (=> b!712352 (=> (not res!475690) (not e!400785))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!712352 (= res!475690 (validKeyInArray!0 (select (arr!19339 a!3591) from!2969)))))

(declare-fun b!712353 () Bool)

(declare-fun res!475679 () Bool)

(assert (=> b!712353 (=> (not res!475679) (not e!400785))))

(assert (=> b!712353 (= res!475679 (not (contains!3976 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712354 () Bool)

(declare-fun res!475694 () Bool)

(assert (=> b!712354 (=> (not res!475694) (not e!400783))))

(declare-fun arrayNoDuplicates!0 (array!40403 (_ BitVec 32) List!13433) Bool)

(assert (=> b!712354 (= res!475694 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318536))))

(declare-fun b!712355 () Bool)

(declare-fun res!475692 () Bool)

(assert (=> b!712355 (=> (not res!475692) (not e!400785))))

(assert (=> b!712355 (= res!475692 (noDuplicate!1223 acc!652))))

(declare-fun b!712356 () Bool)

(declare-fun res!475674 () Bool)

(assert (=> b!712356 (=> (not res!475674) (not e!400785))))

(assert (=> b!712356 (= res!475674 (validKeyInArray!0 k0!2824))))

(declare-fun b!712357 () Bool)

(declare-fun res!475695 () Bool)

(assert (=> b!712357 (=> (not res!475695) (not e!400783))))

(declare-fun -!385 (List!13433 (_ BitVec 64)) List!13433)

(assert (=> b!712357 (= res!475695 (= (-!385 lt!318535 k0!2824) lt!318536))))

(declare-fun b!712358 () Bool)

(declare-fun res!475697 () Bool)

(assert (=> b!712358 (=> (not res!475697) (not e!400785))))

(assert (=> b!712358 (= res!475697 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19748 a!3591)))))

(declare-fun b!712359 () Bool)

(declare-fun res!475693 () Bool)

(assert (=> b!712359 (=> (not res!475693) (not e!400785))))

(assert (=> b!712359 (= res!475693 (not (contains!3976 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712360 () Bool)

(declare-fun res!475676 () Bool)

(assert (=> b!712360 (=> (not res!475676) (not e!400783))))

(assert (=> b!712360 (= res!475676 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712361 () Bool)

(declare-fun res!475689 () Bool)

(assert (=> b!712361 (=> (not res!475689) (not e!400785))))

(assert (=> b!712361 (= res!475689 (not (contains!3976 acc!652 k0!2824)))))

(declare-fun b!712362 () Bool)

(declare-fun res!475681 () Bool)

(assert (=> b!712362 (=> (not res!475681) (not e!400785))))

(assert (=> b!712362 (= res!475681 (not (contains!3976 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712363 () Bool)

(declare-fun res!475673 () Bool)

(assert (=> b!712363 (=> (not res!475673) (not e!400785))))

(assert (=> b!712363 (= res!475673 (= (-!385 newAcc!49 k0!2824) acc!652))))

(declare-fun b!712364 () Bool)

(declare-fun res!475691 () Bool)

(assert (=> b!712364 (=> (not res!475691) (not e!400783))))

(assert (=> b!712364 (= res!475691 (noDuplicate!1223 lt!318536))))

(declare-fun b!712365 () Bool)

(declare-fun res!475685 () Bool)

(assert (=> b!712365 (=> (not res!475685) (not e!400785))))

(assert (=> b!712365 (= res!475685 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!712366 () Bool)

(declare-fun res!475688 () Bool)

(assert (=> b!712366 (=> (not res!475688) (not e!400783))))

(assert (=> b!712366 (= res!475688 (subseq!420 lt!318536 lt!318535))))

(declare-fun b!712367 () Bool)

(declare-fun res!475675 () Bool)

(assert (=> b!712367 (=> (not res!475675) (not e!400783))))

(assert (=> b!712367 (= res!475675 (not (contains!3976 lt!318535 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63288 res!475696) b!712355))

(assert (= (and b!712355 res!475692) b!712348))

(assert (= (and b!712348 res!475677) b!712353))

(assert (= (and b!712353 res!475679) b!712362))

(assert (= (and b!712362 res!475681) b!712345))

(assert (= (and b!712345 res!475699) b!712361))

(assert (= (and b!712361 res!475689) b!712356))

(assert (= (and b!712356 res!475674) b!712365))

(assert (= (and b!712365 res!475685) b!712340))

(assert (= (and b!712340 res!475701) b!712351))

(assert (= (and b!712351 res!475680) b!712363))

(assert (= (and b!712363 res!475673) b!712359))

(assert (= (and b!712359 res!475693) b!712343))

(assert (= (and b!712343 res!475678) b!712358))

(assert (= (and b!712358 res!475697) b!712352))

(assert (= (and b!712352 res!475690) b!712339))

(assert (= (and b!712339 res!475700) b!712364))

(assert (= (and b!712364 res!475691) b!712342))

(assert (= (and b!712342 res!475682) b!712346))

(assert (= (and b!712346 res!475686) b!712349))

(assert (= (and b!712349 res!475684) b!712360))

(assert (= (and b!712360 res!475676) b!712347))

(assert (= (and b!712347 res!475683) b!712354))

(assert (= (and b!712354 res!475694) b!712366))

(assert (= (and b!712366 res!475688) b!712350))

(assert (= (and b!712350 res!475687) b!712357))

(assert (= (and b!712357 res!475695) b!712341))

(assert (= (and b!712341 res!475698) b!712367))

(assert (= (and b!712367 res!475675) b!712344))

(declare-fun m!669339 () Bool)

(assert (=> b!712345 m!669339))

(declare-fun m!669341 () Bool)

(assert (=> b!712359 m!669341))

(declare-fun m!669343 () Bool)

(assert (=> b!712356 m!669343))

(declare-fun m!669345 () Bool)

(assert (=> b!712347 m!669345))

(declare-fun m!669347 () Bool)

(assert (=> b!712341 m!669347))

(declare-fun m!669349 () Bool)

(assert (=> b!712363 m!669349))

(declare-fun m!669351 () Bool)

(assert (=> b!712365 m!669351))

(declare-fun m!669353 () Bool)

(assert (=> b!712348 m!669353))

(declare-fun m!669355 () Bool)

(assert (=> b!712357 m!669355))

(declare-fun m!669357 () Bool)

(assert (=> b!712353 m!669357))

(declare-fun m!669359 () Bool)

(assert (=> b!712355 m!669359))

(declare-fun m!669361 () Bool)

(assert (=> b!712342 m!669361))

(declare-fun m!669363 () Bool)

(assert (=> b!712350 m!669363))

(declare-fun m!669365 () Bool)

(assert (=> b!712346 m!669365))

(declare-fun m!669367 () Bool)

(assert (=> b!712343 m!669367))

(declare-fun m!669369 () Bool)

(assert (=> start!63288 m!669369))

(declare-fun m!669371 () Bool)

(assert (=> b!712366 m!669371))

(declare-fun m!669373 () Bool)

(assert (=> b!712364 m!669373))

(declare-fun m!669375 () Bool)

(assert (=> b!712349 m!669375))

(declare-fun m!669377 () Bool)

(assert (=> b!712361 m!669377))

(declare-fun m!669379 () Bool)

(assert (=> b!712339 m!669379))

(assert (=> b!712339 m!669379))

(declare-fun m!669381 () Bool)

(assert (=> b!712339 m!669381))

(assert (=> b!712339 m!669379))

(declare-fun m!669383 () Bool)

(assert (=> b!712339 m!669383))

(declare-fun m!669385 () Bool)

(assert (=> b!712340 m!669385))

(assert (=> b!712352 m!669379))

(assert (=> b!712352 m!669379))

(declare-fun m!669387 () Bool)

(assert (=> b!712352 m!669387))

(declare-fun m!669389 () Bool)

(assert (=> b!712354 m!669389))

(declare-fun m!669391 () Bool)

(assert (=> b!712367 m!669391))

(declare-fun m!669393 () Bool)

(assert (=> b!712351 m!669393))

(declare-fun m!669395 () Bool)

(assert (=> b!712360 m!669395))

(declare-fun m!669397 () Bool)

(assert (=> b!712362 m!669397))

(check-sat (not b!712360) (not b!712348) (not b!712352) (not b!712346) (not b!712345) (not b!712351) (not b!712354) (not b!712365) (not b!712353) (not b!712349) (not b!712357) (not b!712367) (not start!63288) (not b!712363) (not b!712364) (not b!712359) (not b!712343) (not b!712347) (not b!712339) (not b!712342) (not b!712356) (not b!712341) (not b!712366) (not b!712361) (not b!712340) (not b!712350) (not b!712362) (not b!712355))
(check-sat)
