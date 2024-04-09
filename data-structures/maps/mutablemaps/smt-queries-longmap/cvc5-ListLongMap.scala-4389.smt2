; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60378 () Bool)

(assert start!60378)

(declare-fun b!678110 () Bool)

(declare-fun e!386436 () Bool)

(declare-datatypes ((List!12973 0))(
  ( (Nil!12970) (Cons!12969 (h!14014 (_ BitVec 64)) (t!19209 List!12973)) )
))
(declare-fun acc!681 () List!12973)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3516 (List!12973 (_ BitVec 64)) Bool)

(assert (=> b!678110 (= e!386436 (not (contains!3516 acc!681 k!2843)))))

(declare-fun b!678111 () Bool)

(declare-fun res!444701 () Bool)

(declare-fun e!386438 () Bool)

(assert (=> b!678111 (=> (not res!444701) (not e!386438))))

(assert (=> b!678111 (= res!444701 (not (contains!3516 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!678112 () Bool)

(declare-fun res!444692 () Bool)

(assert (=> b!678112 (=> (not res!444692) (not e!386438))))

(declare-datatypes ((array!39381 0))(
  ( (array!39382 (arr!18879 (Array (_ BitVec 32) (_ BitVec 64))) (size!19243 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39381)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39381 (_ BitVec 32) List!12973) Bool)

(assert (=> b!678112 (= res!444692 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!678113 () Bool)

(declare-fun res!444697 () Bool)

(assert (=> b!678113 (=> (not res!444697) (not e!386438))))

(declare-fun arrayContainsKey!0 (array!39381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!678113 (= res!444697 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!678114 () Bool)

(declare-fun res!444699 () Bool)

(assert (=> b!678114 (=> (not res!444699) (not e!386438))))

(assert (=> b!678114 (= res!444699 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12970))))

(declare-fun b!678115 () Bool)

(declare-fun res!444696 () Bool)

(assert (=> b!678115 (=> (not res!444696) (not e!386438))))

(declare-fun e!386437 () Bool)

(assert (=> b!678115 (= res!444696 e!386437)))

(declare-fun res!444698 () Bool)

(assert (=> b!678115 (=> res!444698 e!386437)))

(declare-fun e!386439 () Bool)

(assert (=> b!678115 (= res!444698 e!386439)))

(declare-fun res!444700 () Bool)

(assert (=> b!678115 (=> (not res!444700) (not e!386439))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!678115 (= res!444700 (bvsgt from!3004 i!1382))))

(declare-fun b!678116 () Bool)

(assert (=> b!678116 (= e!386439 (contains!3516 acc!681 k!2843))))

(declare-fun b!678117 () Bool)

(assert (=> b!678117 (= e!386437 e!386436)))

(declare-fun res!444703 () Bool)

(assert (=> b!678117 (=> (not res!444703) (not e!386436))))

(assert (=> b!678117 (= res!444703 (bvsle from!3004 i!1382))))

(declare-fun res!444693 () Bool)

(assert (=> start!60378 (=> (not res!444693) (not e!386438))))

(assert (=> start!60378 (= res!444693 (and (bvslt (size!19243 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19243 a!3626))))))

(assert (=> start!60378 e!386438))

(assert (=> start!60378 true))

(declare-fun array_inv!14653 (array!39381) Bool)

(assert (=> start!60378 (array_inv!14653 a!3626)))

(declare-fun b!678118 () Bool)

(declare-fun res!444704 () Bool)

(assert (=> b!678118 (=> (not res!444704) (not e!386438))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!678118 (= res!444704 (validKeyInArray!0 k!2843))))

(declare-fun b!678119 () Bool)

(assert (=> b!678119 (= e!386438 (bvslt (bvsub (size!19243 a!3626) from!3004) #b00000000000000000000000000000000))))

(declare-fun b!678120 () Bool)

(declare-fun res!444694 () Bool)

(assert (=> b!678120 (=> (not res!444694) (not e!386438))))

(assert (=> b!678120 (= res!444694 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19243 a!3626))))))

(declare-fun b!678121 () Bool)

(declare-fun res!444702 () Bool)

(assert (=> b!678121 (=> (not res!444702) (not e!386438))))

(declare-fun noDuplicate!763 (List!12973) Bool)

(assert (=> b!678121 (= res!444702 (noDuplicate!763 acc!681))))

(declare-fun b!678122 () Bool)

(declare-fun res!444695 () Bool)

(assert (=> b!678122 (=> (not res!444695) (not e!386438))))

(assert (=> b!678122 (= res!444695 (not (contains!3516 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60378 res!444693) b!678121))

(assert (= (and b!678121 res!444702) b!678111))

(assert (= (and b!678111 res!444701) b!678122))

(assert (= (and b!678122 res!444695) b!678115))

(assert (= (and b!678115 res!444700) b!678116))

(assert (= (and b!678115 (not res!444698)) b!678117))

(assert (= (and b!678117 res!444703) b!678110))

(assert (= (and b!678115 res!444696) b!678114))

(assert (= (and b!678114 res!444699) b!678112))

(assert (= (and b!678112 res!444692) b!678120))

(assert (= (and b!678120 res!444694) b!678118))

(assert (= (and b!678118 res!444704) b!678113))

(assert (= (and b!678113 res!444697) b!678119))

(declare-fun m!644019 () Bool)

(assert (=> b!678113 m!644019))

(declare-fun m!644021 () Bool)

(assert (=> b!678111 m!644021))

(declare-fun m!644023 () Bool)

(assert (=> b!678121 m!644023))

(declare-fun m!644025 () Bool)

(assert (=> b!678112 m!644025))

(declare-fun m!644027 () Bool)

(assert (=> b!678114 m!644027))

(declare-fun m!644029 () Bool)

(assert (=> start!60378 m!644029))

(declare-fun m!644031 () Bool)

(assert (=> b!678116 m!644031))

(declare-fun m!644033 () Bool)

(assert (=> b!678122 m!644033))

(declare-fun m!644035 () Bool)

(assert (=> b!678118 m!644035))

(assert (=> b!678110 m!644031))

(push 1)

(assert (not b!678110))

(assert (not b!678113))

(assert (not b!678111))

(assert (not b!678114))

(assert (not b!678122))

(assert (not b!678116))

(assert (not b!678118))

(assert (not start!60378))

(assert (not b!678112))

(assert (not b!678121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

