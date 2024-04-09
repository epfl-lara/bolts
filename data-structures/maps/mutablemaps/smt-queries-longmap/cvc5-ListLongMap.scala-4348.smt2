; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60132 () Bool)

(assert start!60132)

(declare-fun b!670569 () Bool)

(declare-fun res!437445 () Bool)

(declare-fun e!383367 () Bool)

(assert (=> b!670569 (=> (not res!437445) (not e!383367))))

(declare-datatypes ((List!12850 0))(
  ( (Nil!12847) (Cons!12846 (h!13891 (_ BitVec 64)) (t!19086 List!12850)) )
))
(declare-fun acc!681 () List!12850)

(declare-fun contains!3393 (List!12850 (_ BitVec 64)) Bool)

(assert (=> b!670569 (= res!437445 (not (contains!3393 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670570 () Bool)

(declare-fun e!383368 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!670570 (= e!383368 (contains!3393 acc!681 k!2843))))

(declare-fun b!670571 () Bool)

(declare-fun res!437443 () Bool)

(assert (=> b!670571 (=> (not res!437443) (not e!383367))))

(declare-datatypes ((array!39135 0))(
  ( (array!39136 (arr!18756 (Array (_ BitVec 32) (_ BitVec 64))) (size!19120 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39135)

(declare-fun arrayNoDuplicates!0 (array!39135 (_ BitVec 32) List!12850) Bool)

(assert (=> b!670571 (= res!437443 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12847))))

(declare-fun b!670573 () Bool)

(declare-fun e!383370 () Bool)

(assert (=> b!670573 (= e!383370 (not (contains!3393 acc!681 k!2843)))))

(declare-fun b!670574 () Bool)

(assert (=> b!670574 (= e!383367 false)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!312090 () Bool)

(assert (=> b!670574 (= lt!312090 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670575 () Bool)

(declare-fun res!437439 () Bool)

(assert (=> b!670575 (=> (not res!437439) (not e!383367))))

(declare-fun e!383369 () Bool)

(assert (=> b!670575 (= res!437439 e!383369)))

(declare-fun res!437446 () Bool)

(assert (=> b!670575 (=> res!437446 e!383369)))

(assert (=> b!670575 (= res!437446 e!383368)))

(declare-fun res!437444 () Bool)

(assert (=> b!670575 (=> (not res!437444) (not e!383368))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670575 (= res!437444 (bvsgt from!3004 i!1382))))

(declare-fun b!670576 () Bool)

(declare-fun res!437442 () Bool)

(assert (=> b!670576 (=> (not res!437442) (not e!383367))))

(declare-fun noDuplicate!640 (List!12850) Bool)

(assert (=> b!670576 (= res!437442 (noDuplicate!640 acc!681))))

(declare-fun b!670577 () Bool)

(assert (=> b!670577 (= e!383369 e!383370)))

(declare-fun res!437441 () Bool)

(assert (=> b!670577 (=> (not res!437441) (not e!383370))))

(assert (=> b!670577 (= res!437441 (bvsle from!3004 i!1382))))

(declare-fun b!670572 () Bool)

(declare-fun res!437447 () Bool)

(assert (=> b!670572 (=> (not res!437447) (not e!383367))))

(assert (=> b!670572 (= res!437447 (not (contains!3393 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!437440 () Bool)

(assert (=> start!60132 (=> (not res!437440) (not e!383367))))

(assert (=> start!60132 (= res!437440 (and (bvslt (size!19120 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19120 a!3626))))))

(assert (=> start!60132 e!383367))

(assert (=> start!60132 true))

(declare-fun array_inv!14530 (array!39135) Bool)

(assert (=> start!60132 (array_inv!14530 a!3626)))

(assert (= (and start!60132 res!437440) b!670576))

(assert (= (and b!670576 res!437442) b!670572))

(assert (= (and b!670572 res!437447) b!670569))

(assert (= (and b!670569 res!437445) b!670575))

(assert (= (and b!670575 res!437444) b!670570))

(assert (= (and b!670575 (not res!437446)) b!670577))

(assert (= (and b!670577 res!437441) b!670573))

(assert (= (and b!670575 res!437439) b!670571))

(assert (= (and b!670571 res!437443) b!670574))

(declare-fun m!640455 () Bool)

(assert (=> b!670570 m!640455))

(declare-fun m!640457 () Bool)

(assert (=> b!670574 m!640457))

(declare-fun m!640459 () Bool)

(assert (=> b!670572 m!640459))

(declare-fun m!640461 () Bool)

(assert (=> b!670571 m!640461))

(declare-fun m!640463 () Bool)

(assert (=> b!670576 m!640463))

(declare-fun m!640465 () Bool)

(assert (=> b!670569 m!640465))

(assert (=> b!670573 m!640455))

(declare-fun m!640467 () Bool)

(assert (=> start!60132 m!640467))

(push 1)

(assert (not b!670571))

(assert (not b!670573))

(assert (not b!670572))

(assert (not start!60132))

(assert (not b!670569))

(assert (not b!670574))

(assert (not b!670576))

(assert (not b!670570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

