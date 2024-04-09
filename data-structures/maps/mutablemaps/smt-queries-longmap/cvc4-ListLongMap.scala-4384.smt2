; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60352 () Bool)

(assert start!60352)

(declare-fun b!677675 () Bool)

(declare-fun res!444276 () Bool)

(declare-fun e!386235 () Bool)

(assert (=> b!677675 (=> (not res!444276) (not e!386235))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677675 (= res!444276 (validKeyInArray!0 k!2843))))

(declare-fun res!444285 () Bool)

(assert (=> start!60352 (=> (not res!444285) (not e!386235))))

(declare-datatypes ((array!39355 0))(
  ( (array!39356 (arr!18866 (Array (_ BitVec 32) (_ BitVec 64))) (size!19230 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39355)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60352 (= res!444285 (and (bvslt (size!19230 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19230 a!3626))))))

(assert (=> start!60352 e!386235))

(assert (=> start!60352 true))

(declare-fun array_inv!14640 (array!39355) Bool)

(assert (=> start!60352 (array_inv!14640 a!3626)))

(declare-fun b!677676 () Bool)

(declare-fun res!444281 () Bool)

(assert (=> b!677676 (=> (not res!444281) (not e!386235))))

(declare-datatypes ((List!12960 0))(
  ( (Nil!12957) (Cons!12956 (h!14001 (_ BitVec 64)) (t!19196 List!12960)) )
))
(declare-fun acc!681 () List!12960)

(declare-fun contains!3503 (List!12960 (_ BitVec 64)) Bool)

(assert (=> b!677676 (= res!444281 (not (contains!3503 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677677 () Bool)

(declare-fun res!444277 () Bool)

(assert (=> b!677677 (=> (not res!444277) (not e!386235))))

(declare-fun arrayNoDuplicates!0 (array!39355 (_ BitVec 32) List!12960) Bool)

(assert (=> b!677677 (= res!444277 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12957))))

(declare-fun b!677678 () Bool)

(declare-fun res!444283 () Bool)

(assert (=> b!677678 (=> (not res!444283) (not e!386235))))

(declare-fun e!386232 () Bool)

(assert (=> b!677678 (= res!444283 e!386232)))

(declare-fun res!444280 () Bool)

(assert (=> b!677678 (=> res!444280 e!386232)))

(declare-fun e!386236 () Bool)

(assert (=> b!677678 (= res!444280 e!386236)))

(declare-fun res!444279 () Bool)

(assert (=> b!677678 (=> (not res!444279) (not e!386236))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677678 (= res!444279 (bvsgt from!3004 i!1382))))

(declare-fun b!677679 () Bool)

(declare-fun res!444286 () Bool)

(assert (=> b!677679 (=> (not res!444286) (not e!386235))))

(declare-fun noDuplicate!750 (List!12960) Bool)

(assert (=> b!677679 (= res!444286 (noDuplicate!750 acc!681))))

(declare-fun b!677680 () Bool)

(assert (=> b!677680 (= e!386235 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3004) (size!19230 a!3626)) (bvsgt from!3004 (size!19230 a!3626))))))

(declare-fun b!677681 () Bool)

(assert (=> b!677681 (= e!386236 (contains!3503 acc!681 k!2843))))

(declare-fun b!677682 () Bool)

(declare-fun res!444278 () Bool)

(assert (=> b!677682 (=> (not res!444278) (not e!386235))))

(assert (=> b!677682 (= res!444278 (not (contains!3503 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677683 () Bool)

(declare-fun res!444275 () Bool)

(assert (=> b!677683 (=> (not res!444275) (not e!386235))))

(assert (=> b!677683 (= res!444275 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677684 () Bool)

(declare-fun res!444287 () Bool)

(assert (=> b!677684 (=> (not res!444287) (not e!386235))))

(assert (=> b!677684 (= res!444287 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19230 a!3626))))))

(declare-fun b!677685 () Bool)

(declare-fun e!386233 () Bool)

(assert (=> b!677685 (= e!386232 e!386233)))

(declare-fun res!444284 () Bool)

(assert (=> b!677685 (=> (not res!444284) (not e!386233))))

(assert (=> b!677685 (= res!444284 (bvsle from!3004 i!1382))))

(declare-fun b!677686 () Bool)

(declare-fun res!444282 () Bool)

(assert (=> b!677686 (=> (not res!444282) (not e!386235))))

(declare-fun arrayContainsKey!0 (array!39355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677686 (= res!444282 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677687 () Bool)

(assert (=> b!677687 (= e!386233 (not (contains!3503 acc!681 k!2843)))))

(assert (= (and start!60352 res!444285) b!677679))

(assert (= (and b!677679 res!444286) b!677682))

(assert (= (and b!677682 res!444278) b!677676))

(assert (= (and b!677676 res!444281) b!677678))

(assert (= (and b!677678 res!444279) b!677681))

(assert (= (and b!677678 (not res!444280)) b!677685))

(assert (= (and b!677685 res!444284) b!677687))

(assert (= (and b!677678 res!444283) b!677677))

(assert (= (and b!677677 res!444277) b!677683))

(assert (= (and b!677683 res!444275) b!677684))

(assert (= (and b!677684 res!444287) b!677675))

(assert (= (and b!677675 res!444276) b!677686))

(assert (= (and b!677686 res!444282) b!677680))

(declare-fun m!643797 () Bool)

(assert (=> start!60352 m!643797))

(declare-fun m!643799 () Bool)

(assert (=> b!677682 m!643799))

(declare-fun m!643801 () Bool)

(assert (=> b!677681 m!643801))

(declare-fun m!643803 () Bool)

(assert (=> b!677679 m!643803))

(declare-fun m!643805 () Bool)

(assert (=> b!677683 m!643805))

(declare-fun m!643807 () Bool)

(assert (=> b!677676 m!643807))

(declare-fun m!643809 () Bool)

(assert (=> b!677677 m!643809))

(assert (=> b!677687 m!643801))

(declare-fun m!643811 () Bool)

(assert (=> b!677675 m!643811))

(declare-fun m!643813 () Bool)

(assert (=> b!677686 m!643813))

(push 1)

(assert (not b!677683))

(assert (not b!677682))

(assert (not b!677675))

(assert (not b!677676))

(assert (not b!677687))

(assert (not b!677679))

(assert (not start!60352))

(assert (not b!677681))

(assert (not b!677677))

(assert (not b!677686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

