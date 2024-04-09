; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62158 () Bool)

(assert start!62158)

(declare-fun b!695577 () Bool)

(declare-fun res!459704 () Bool)

(declare-fun e!395607 () Bool)

(assert (=> b!695577 (=> (not res!459704) (not e!395607))))

(declare-datatypes ((List!13203 0))(
  ( (Nil!13200) (Cons!13199 (h!14244 (_ BitVec 64)) (t!19493 List!13203)) )
))
(declare-fun acc!681 () List!13203)

(declare-fun contains!3746 (List!13203 (_ BitVec 64)) Bool)

(assert (=> b!695577 (= res!459704 (not (contains!3746 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695578 () Bool)

(declare-fun res!459699 () Bool)

(assert (=> b!695578 (=> (not res!459699) (not e!395607))))

(declare-fun noDuplicate!993 (List!13203) Bool)

(assert (=> b!695578 (= res!459699 (noDuplicate!993 acc!681))))

(declare-fun b!695579 () Bool)

(assert (=> b!695579 (= e!395607 false)))

(declare-datatypes ((array!39904 0))(
  ( (array!39905 (arr!19109 (Array (_ BitVec 32) (_ BitVec 64))) (size!19492 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39904)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!317025 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39904 (_ BitVec 32) List!13203) Bool)

(assert (=> b!695579 (= lt!317025 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695580 () Bool)

(declare-fun e!395608 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!695580 (= e!395608 (not (contains!3746 acc!681 k!2843)))))

(declare-fun b!695581 () Bool)

(declare-fun res!459706 () Bool)

(assert (=> b!695581 (=> (not res!459706) (not e!395607))))

(declare-fun e!395609 () Bool)

(assert (=> b!695581 (= res!459706 e!395609)))

(declare-fun res!459707 () Bool)

(assert (=> b!695581 (=> res!459707 e!395609)))

(declare-fun e!395610 () Bool)

(assert (=> b!695581 (= res!459707 e!395610)))

(declare-fun res!459703 () Bool)

(assert (=> b!695581 (=> (not res!459703) (not e!395610))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695581 (= res!459703 (bvsgt from!3004 i!1382))))

(declare-fun res!459700 () Bool)

(assert (=> start!62158 (=> (not res!459700) (not e!395607))))

(assert (=> start!62158 (= res!459700 (and (bvslt (size!19492 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19492 a!3626))))))

(assert (=> start!62158 e!395607))

(assert (=> start!62158 true))

(declare-fun array_inv!14883 (array!39904) Bool)

(assert (=> start!62158 (array_inv!14883 a!3626)))

(declare-fun b!695582 () Bool)

(assert (=> b!695582 (= e!395609 e!395608)))

(declare-fun res!459701 () Bool)

(assert (=> b!695582 (=> (not res!459701) (not e!395608))))

(assert (=> b!695582 (= res!459701 (bvsle from!3004 i!1382))))

(declare-fun b!695583 () Bool)

(assert (=> b!695583 (= e!395610 (contains!3746 acc!681 k!2843))))

(declare-fun b!695584 () Bool)

(declare-fun res!459705 () Bool)

(assert (=> b!695584 (=> (not res!459705) (not e!395607))))

(assert (=> b!695584 (= res!459705 (not (contains!3746 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695585 () Bool)

(declare-fun res!459702 () Bool)

(assert (=> b!695585 (=> (not res!459702) (not e!395607))))

(assert (=> b!695585 (= res!459702 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13200))))

(assert (= (and start!62158 res!459700) b!695578))

(assert (= (and b!695578 res!459699) b!695584))

(assert (= (and b!695584 res!459705) b!695577))

(assert (= (and b!695577 res!459704) b!695581))

(assert (= (and b!695581 res!459703) b!695583))

(assert (= (and b!695581 (not res!459707)) b!695582))

(assert (= (and b!695582 res!459701) b!695580))

(assert (= (and b!695581 res!459706) b!695585))

(assert (= (and b!695585 res!459702) b!695579))

(declare-fun m!656983 () Bool)

(assert (=> start!62158 m!656983))

(declare-fun m!656985 () Bool)

(assert (=> b!695578 m!656985))

(declare-fun m!656987 () Bool)

(assert (=> b!695579 m!656987))

(declare-fun m!656989 () Bool)

(assert (=> b!695584 m!656989))

(declare-fun m!656991 () Bool)

(assert (=> b!695577 m!656991))

(declare-fun m!656993 () Bool)

(assert (=> b!695583 m!656993))

(assert (=> b!695580 m!656993))

(declare-fun m!656995 () Bool)

(assert (=> b!695585 m!656995))

(push 1)

(assert (not b!695583))

(assert (not start!62158))

(assert (not b!695584))

(assert (not b!695580))

(assert (not b!695585))

(assert (not b!695578))

(assert (not b!695577))

(assert (not b!695579))

(check-sat)

(pop 1)

