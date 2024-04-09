; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62640 () Bool)

(assert start!62640)

(declare-fun b!706613 () Bool)

(declare-fun res!470601 () Bool)

(declare-fun e!397900 () Bool)

(assert (=> b!706613 (=> (not res!470601) (not e!397900))))

(declare-datatypes ((array!40275 0))(
  ( (array!40276 (arr!19290 (Array (_ BitVec 32) (_ BitVec 64))) (size!19673 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40275)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706613 (= res!470601 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706614 () Bool)

(declare-fun res!470602 () Bool)

(assert (=> b!706614 (=> (not res!470602) (not e!397900))))

(declare-datatypes ((List!13384 0))(
  ( (Nil!13381) (Cons!13380 (h!14425 (_ BitVec 64)) (t!19674 List!13384)) )
))
(declare-fun acc!652 () List!13384)

(declare-fun arrayNoDuplicates!0 (array!40275 (_ BitVec 32) List!13384) Bool)

(assert (=> b!706614 (= res!470602 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706616 () Bool)

(declare-fun res!470599 () Bool)

(assert (=> b!706616 (=> (not res!470599) (not e!397900))))

(declare-fun newAcc!49 () List!13384)

(declare-fun contains!3927 (List!13384 (_ BitVec 64)) Bool)

(assert (=> b!706616 (= res!470599 (not (contains!3927 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706617 () Bool)

(declare-fun res!470609 () Bool)

(assert (=> b!706617 (=> (not res!470609) (not e!397900))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706617 (= res!470609 (validKeyInArray!0 k!2824))))

(declare-fun b!706618 () Bool)

(declare-fun res!470603 () Bool)

(assert (=> b!706618 (=> (not res!470603) (not e!397900))))

(assert (=> b!706618 (= res!470603 (not (contains!3927 acc!652 k!2824)))))

(declare-fun b!706619 () Bool)

(declare-fun res!470604 () Bool)

(assert (=> b!706619 (=> (not res!470604) (not e!397900))))

(assert (=> b!706619 (= res!470604 (not (contains!3927 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706620 () Bool)

(declare-fun res!470606 () Bool)

(assert (=> b!706620 (=> (not res!470606) (not e!397900))))

(declare-fun noDuplicate!1174 (List!13384) Bool)

(assert (=> b!706620 (= res!470606 (noDuplicate!1174 acc!652))))

(declare-fun b!706621 () Bool)

(declare-fun res!470598 () Bool)

(assert (=> b!706621 (=> (not res!470598) (not e!397900))))

(assert (=> b!706621 (= res!470598 (not (contains!3927 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706622 () Bool)

(declare-fun res!470605 () Bool)

(assert (=> b!706622 (=> (not res!470605) (not e!397900))))

(assert (=> b!706622 (= res!470605 (noDuplicate!1174 newAcc!49))))

(declare-fun b!706623 () Bool)

(assert (=> b!706623 (= e!397900 false)))

(declare-fun lt!317913 () Bool)

(assert (=> b!706623 (= lt!317913 (contains!3927 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706624 () Bool)

(declare-fun res!470607 () Bool)

(assert (=> b!706624 (=> (not res!470607) (not e!397900))))

(assert (=> b!706624 (= res!470607 (contains!3927 newAcc!49 k!2824))))

(declare-fun b!706625 () Bool)

(declare-fun res!470597 () Bool)

(assert (=> b!706625 (=> (not res!470597) (not e!397900))))

(declare-fun -!336 (List!13384 (_ BitVec 64)) List!13384)

(assert (=> b!706625 (= res!470597 (= (-!336 newAcc!49 k!2824) acc!652))))

(declare-fun b!706615 () Bool)

(declare-fun res!470600 () Bool)

(assert (=> b!706615 (=> (not res!470600) (not e!397900))))

(declare-fun subseq!371 (List!13384 List!13384) Bool)

(assert (=> b!706615 (= res!470600 (subseq!371 acc!652 newAcc!49))))

(declare-fun res!470608 () Bool)

(assert (=> start!62640 (=> (not res!470608) (not e!397900))))

(assert (=> start!62640 (= res!470608 (and (bvslt (size!19673 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19673 a!3591))))))

(assert (=> start!62640 e!397900))

(assert (=> start!62640 true))

(declare-fun array_inv!15064 (array!40275) Bool)

(assert (=> start!62640 (array_inv!15064 a!3591)))

(assert (= (and start!62640 res!470608) b!706620))

(assert (= (and b!706620 res!470606) b!706622))

(assert (= (and b!706622 res!470605) b!706621))

(assert (= (and b!706621 res!470598) b!706619))

(assert (= (and b!706619 res!470604) b!706613))

(assert (= (and b!706613 res!470601) b!706618))

(assert (= (and b!706618 res!470603) b!706617))

(assert (= (and b!706617 res!470609) b!706614))

(assert (= (and b!706614 res!470602) b!706615))

(assert (= (and b!706615 res!470600) b!706624))

(assert (= (and b!706624 res!470607) b!706625))

(assert (= (and b!706625 res!470597) b!706616))

(assert (= (and b!706616 res!470599) b!706623))

(declare-fun m!664455 () Bool)

(assert (=> b!706614 m!664455))

(declare-fun m!664457 () Bool)

(assert (=> b!706625 m!664457))

(declare-fun m!664459 () Bool)

(assert (=> start!62640 m!664459))

(declare-fun m!664461 () Bool)

(assert (=> b!706616 m!664461))

(declare-fun m!664463 () Bool)

(assert (=> b!706622 m!664463))

(declare-fun m!664465 () Bool)

(assert (=> b!706617 m!664465))

(declare-fun m!664467 () Bool)

(assert (=> b!706619 m!664467))

(declare-fun m!664469 () Bool)

(assert (=> b!706623 m!664469))

(declare-fun m!664471 () Bool)

(assert (=> b!706624 m!664471))

(declare-fun m!664473 () Bool)

(assert (=> b!706618 m!664473))

(declare-fun m!664475 () Bool)

(assert (=> b!706613 m!664475))

(declare-fun m!664477 () Bool)

(assert (=> b!706620 m!664477))

(declare-fun m!664479 () Bool)

(assert (=> b!706621 m!664479))

(declare-fun m!664481 () Bool)

(assert (=> b!706615 m!664481))

(push 1)

(assert (not b!706618))

(assert (not b!706625))

(assert (not b!706616))

(assert (not b!706620))

(assert (not b!706614))

(assert (not b!706624))

(assert (not b!706623))

(assert (not b!706613))

(assert (not b!706619))

(assert (not b!706615))

(assert (not b!706617))

(assert (not b!706622))

(assert (not start!62640))

(assert (not b!706621))

(check-sat)

