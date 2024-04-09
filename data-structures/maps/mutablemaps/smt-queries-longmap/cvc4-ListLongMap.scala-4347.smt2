; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60130 () Bool)

(assert start!60130)

(declare-fun res!437419 () Bool)

(declare-fun e!383353 () Bool)

(assert (=> start!60130 (=> (not res!437419) (not e!383353))))

(declare-datatypes ((array!39133 0))(
  ( (array!39134 (arr!18755 (Array (_ BitVec 32) (_ BitVec 64))) (size!19119 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39133)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60130 (= res!437419 (and (bvslt (size!19119 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19119 a!3626))))))

(assert (=> start!60130 e!383353))

(assert (=> start!60130 true))

(declare-fun array_inv!14529 (array!39133) Bool)

(assert (=> start!60130 (array_inv!14529 a!3626)))

(declare-fun b!670542 () Bool)

(declare-fun e!383352 () Bool)

(declare-datatypes ((List!12849 0))(
  ( (Nil!12846) (Cons!12845 (h!13890 (_ BitVec 64)) (t!19085 List!12849)) )
))
(declare-fun acc!681 () List!12849)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3392 (List!12849 (_ BitVec 64)) Bool)

(assert (=> b!670542 (= e!383352 (contains!3392 acc!681 k!2843))))

(declare-fun b!670543 () Bool)

(declare-fun res!437416 () Bool)

(assert (=> b!670543 (=> (not res!437416) (not e!383353))))

(declare-fun arrayNoDuplicates!0 (array!39133 (_ BitVec 32) List!12849) Bool)

(assert (=> b!670543 (= res!437416 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12846))))

(declare-fun b!670544 () Bool)

(declare-fun res!437414 () Bool)

(assert (=> b!670544 (=> (not res!437414) (not e!383353))))

(assert (=> b!670544 (= res!437414 (not (contains!3392 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670545 () Bool)

(declare-fun res!437420 () Bool)

(assert (=> b!670545 (=> (not res!437420) (not e!383353))))

(declare-fun noDuplicate!639 (List!12849) Bool)

(assert (=> b!670545 (= res!437420 (noDuplicate!639 acc!681))))

(declare-fun b!670546 () Bool)

(declare-fun res!437418 () Bool)

(assert (=> b!670546 (=> (not res!437418) (not e!383353))))

(declare-fun e!383356 () Bool)

(assert (=> b!670546 (= res!437418 e!383356)))

(declare-fun res!437415 () Bool)

(assert (=> b!670546 (=> res!437415 e!383356)))

(assert (=> b!670546 (= res!437415 e!383352)))

(declare-fun res!437412 () Bool)

(assert (=> b!670546 (=> (not res!437412) (not e!383352))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670546 (= res!437412 (bvsgt from!3004 i!1382))))

(declare-fun b!670547 () Bool)

(declare-fun e!383354 () Bool)

(assert (=> b!670547 (= e!383356 e!383354)))

(declare-fun res!437417 () Bool)

(assert (=> b!670547 (=> (not res!437417) (not e!383354))))

(assert (=> b!670547 (= res!437417 (bvsle from!3004 i!1382))))

(declare-fun b!670548 () Bool)

(assert (=> b!670548 (= e!383353 false)))

(declare-fun lt!312087 () Bool)

(assert (=> b!670548 (= lt!312087 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670549 () Bool)

(assert (=> b!670549 (= e!383354 (not (contains!3392 acc!681 k!2843)))))

(declare-fun b!670550 () Bool)

(declare-fun res!437413 () Bool)

(assert (=> b!670550 (=> (not res!437413) (not e!383353))))

(assert (=> b!670550 (= res!437413 (not (contains!3392 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60130 res!437419) b!670545))

(assert (= (and b!670545 res!437420) b!670550))

(assert (= (and b!670550 res!437413) b!670544))

(assert (= (and b!670544 res!437414) b!670546))

(assert (= (and b!670546 res!437412) b!670542))

(assert (= (and b!670546 (not res!437415)) b!670547))

(assert (= (and b!670547 res!437417) b!670549))

(assert (= (and b!670546 res!437418) b!670543))

(assert (= (and b!670543 res!437416) b!670548))

(declare-fun m!640441 () Bool)

(assert (=> b!670548 m!640441))

(declare-fun m!640443 () Bool)

(assert (=> b!670543 m!640443))

(declare-fun m!640445 () Bool)

(assert (=> b!670544 m!640445))

(declare-fun m!640447 () Bool)

(assert (=> b!670549 m!640447))

(declare-fun m!640449 () Bool)

(assert (=> b!670550 m!640449))

(assert (=> b!670542 m!640447))

(declare-fun m!640451 () Bool)

(assert (=> start!60130 m!640451))

(declare-fun m!640453 () Bool)

(assert (=> b!670545 m!640453))

(push 1)

(assert (not b!670550))

(assert (not start!60130))

(assert (not b!670544))

(assert (not b!670549))

(assert (not b!670542))

(assert (not b!670545))

(assert (not b!670548))

(assert (not b!670543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

