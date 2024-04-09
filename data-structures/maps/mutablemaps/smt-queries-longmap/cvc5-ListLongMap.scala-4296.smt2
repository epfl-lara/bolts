; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59820 () Bool)

(assert start!59820)

(declare-fun b!660489 () Bool)

(declare-fun res!428730 () Bool)

(declare-fun e!379535 () Bool)

(assert (=> b!660489 (=> (not res!428730) (not e!379535))))

(declare-datatypes ((List!12694 0))(
  ( (Nil!12691) (Cons!12690 (h!13735 (_ BitVec 64)) (t!18930 List!12694)) )
))
(declare-fun acc!681 () List!12694)

(declare-fun contains!3237 (List!12694 (_ BitVec 64)) Bool)

(assert (=> b!660489 (= res!428730 (not (contains!3237 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660490 () Bool)

(assert (=> b!660490 (= e!379535 false)))

(declare-datatypes ((array!38823 0))(
  ( (array!38824 (arr!18600 (Array (_ BitVec 32) (_ BitVec 64))) (size!18964 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38823)

(declare-fun lt!308742 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!38823 (_ BitVec 32) List!12694) Bool)

(assert (=> b!660490 (= lt!308742 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660491 () Bool)

(declare-fun res!428731 () Bool)

(assert (=> b!660491 (=> (not res!428731) (not e!379535))))

(declare-fun noDuplicate!484 (List!12694) Bool)

(assert (=> b!660491 (= res!428731 (noDuplicate!484 acc!681))))

(declare-fun res!428727 () Bool)

(assert (=> start!59820 (=> (not res!428727) (not e!379535))))

(assert (=> start!59820 (= res!428727 (and (bvslt (size!18964 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18964 a!3626))))))

(assert (=> start!59820 e!379535))

(assert (=> start!59820 true))

(declare-fun array_inv!14374 (array!38823) Bool)

(assert (=> start!59820 (array_inv!14374 a!3626)))

(declare-fun b!660492 () Bool)

(declare-fun res!428733 () Bool)

(assert (=> b!660492 (=> (not res!428733) (not e!379535))))

(declare-fun e!379537 () Bool)

(assert (=> b!660492 (= res!428733 e!379537)))

(declare-fun res!428734 () Bool)

(assert (=> b!660492 (=> res!428734 e!379537)))

(declare-fun e!379536 () Bool)

(assert (=> b!660492 (= res!428734 e!379536)))

(declare-fun res!428732 () Bool)

(assert (=> b!660492 (=> (not res!428732) (not e!379536))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660492 (= res!428732 (bvsgt from!3004 i!1382))))

(declare-fun b!660493 () Bool)

(declare-fun e!379533 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!660493 (= e!379533 (not (contains!3237 acc!681 k!2843)))))

(declare-fun b!660494 () Bool)

(declare-fun res!428735 () Bool)

(assert (=> b!660494 (=> (not res!428735) (not e!379535))))

(assert (=> b!660494 (= res!428735 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12691))))

(declare-fun b!660495 () Bool)

(assert (=> b!660495 (= e!379537 e!379533)))

(declare-fun res!428729 () Bool)

(assert (=> b!660495 (=> (not res!428729) (not e!379533))))

(assert (=> b!660495 (= res!428729 (bvsle from!3004 i!1382))))

(declare-fun b!660496 () Bool)

(assert (=> b!660496 (= e!379536 (contains!3237 acc!681 k!2843))))

(declare-fun b!660497 () Bool)

(declare-fun res!428728 () Bool)

(assert (=> b!660497 (=> (not res!428728) (not e!379535))))

(assert (=> b!660497 (= res!428728 (not (contains!3237 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59820 res!428727) b!660491))

(assert (= (and b!660491 res!428731) b!660497))

(assert (= (and b!660497 res!428728) b!660489))

(assert (= (and b!660489 res!428730) b!660492))

(assert (= (and b!660492 res!428732) b!660496))

(assert (= (and b!660492 (not res!428734)) b!660495))

(assert (= (and b!660495 res!428729) b!660493))

(assert (= (and b!660492 res!428733) b!660494))

(assert (= (and b!660494 res!428735) b!660490))

(declare-fun m!633105 () Bool)

(assert (=> b!660497 m!633105))

(declare-fun m!633107 () Bool)

(assert (=> b!660491 m!633107))

(declare-fun m!633109 () Bool)

(assert (=> b!660489 m!633109))

(declare-fun m!633111 () Bool)

(assert (=> b!660493 m!633111))

(declare-fun m!633113 () Bool)

(assert (=> b!660490 m!633113))

(assert (=> b!660496 m!633111))

(declare-fun m!633115 () Bool)

(assert (=> start!59820 m!633115))

(declare-fun m!633117 () Bool)

(assert (=> b!660494 m!633117))

(push 1)

(assert (not b!660493))

(assert (not start!59820))

(assert (not b!660497))

(assert (not b!660491))

(assert (not b!660496))

(assert (not b!660489))

(assert (not b!660490))

(assert (not b!660494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

