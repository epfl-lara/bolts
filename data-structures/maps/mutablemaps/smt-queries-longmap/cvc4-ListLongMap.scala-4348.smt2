; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60136 () Bool)

(assert start!60136)

(declare-fun b!670623 () Bool)

(declare-fun res!437498 () Bool)

(declare-fun e!383400 () Bool)

(assert (=> b!670623 (=> (not res!437498) (not e!383400))))

(declare-datatypes ((array!39139 0))(
  ( (array!39140 (arr!18758 (Array (_ BitVec 32) (_ BitVec 64))) (size!19122 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39139)

(declare-datatypes ((List!12852 0))(
  ( (Nil!12849) (Cons!12848 (h!13893 (_ BitVec 64)) (t!19088 List!12852)) )
))
(declare-fun arrayNoDuplicates!0 (array!39139 (_ BitVec 32) List!12852) Bool)

(assert (=> b!670623 (= res!437498 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12849))))

(declare-fun b!670624 () Bool)

(declare-fun e!383397 () Bool)

(declare-fun acc!681 () List!12852)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3395 (List!12852 (_ BitVec 64)) Bool)

(assert (=> b!670624 (= e!383397 (not (contains!3395 acc!681 k!2843)))))

(declare-fun b!670625 () Bool)

(declare-fun res!437496 () Bool)

(assert (=> b!670625 (=> (not res!437496) (not e!383400))))

(declare-fun noDuplicate!642 (List!12852) Bool)

(assert (=> b!670625 (= res!437496 (noDuplicate!642 acc!681))))

(declare-fun b!670626 () Bool)

(assert (=> b!670626 (= e!383400 false)))

(declare-fun lt!312096 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!670626 (= lt!312096 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670627 () Bool)

(declare-fun e!383399 () Bool)

(assert (=> b!670627 (= e!383399 (contains!3395 acc!681 k!2843))))

(declare-fun res!437501 () Bool)

(assert (=> start!60136 (=> (not res!437501) (not e!383400))))

(assert (=> start!60136 (= res!437501 (and (bvslt (size!19122 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19122 a!3626))))))

(assert (=> start!60136 e!383400))

(assert (=> start!60136 true))

(declare-fun array_inv!14532 (array!39139) Bool)

(assert (=> start!60136 (array_inv!14532 a!3626)))

(declare-fun b!670628 () Bool)

(declare-fun res!437494 () Bool)

(assert (=> b!670628 (=> (not res!437494) (not e!383400))))

(assert (=> b!670628 (= res!437494 (not (contains!3395 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670629 () Bool)

(declare-fun e!383401 () Bool)

(assert (=> b!670629 (= e!383401 e!383397)))

(declare-fun res!437495 () Bool)

(assert (=> b!670629 (=> (not res!437495) (not e!383397))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670629 (= res!437495 (bvsle from!3004 i!1382))))

(declare-fun b!670630 () Bool)

(declare-fun res!437497 () Bool)

(assert (=> b!670630 (=> (not res!437497) (not e!383400))))

(assert (=> b!670630 (= res!437497 e!383401)))

(declare-fun res!437500 () Bool)

(assert (=> b!670630 (=> res!437500 e!383401)))

(assert (=> b!670630 (= res!437500 e!383399)))

(declare-fun res!437493 () Bool)

(assert (=> b!670630 (=> (not res!437493) (not e!383399))))

(assert (=> b!670630 (= res!437493 (bvsgt from!3004 i!1382))))

(declare-fun b!670631 () Bool)

(declare-fun res!437499 () Bool)

(assert (=> b!670631 (=> (not res!437499) (not e!383400))))

(assert (=> b!670631 (= res!437499 (not (contains!3395 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60136 res!437501) b!670625))

(assert (= (and b!670625 res!437496) b!670631))

(assert (= (and b!670631 res!437499) b!670628))

(assert (= (and b!670628 res!437494) b!670630))

(assert (= (and b!670630 res!437493) b!670627))

(assert (= (and b!670630 (not res!437500)) b!670629))

(assert (= (and b!670629 res!437495) b!670624))

(assert (= (and b!670630 res!437497) b!670623))

(assert (= (and b!670623 res!437498) b!670626))

(declare-fun m!640483 () Bool)

(assert (=> b!670628 m!640483))

(declare-fun m!640485 () Bool)

(assert (=> b!670626 m!640485))

(declare-fun m!640487 () Bool)

(assert (=> start!60136 m!640487))

(declare-fun m!640489 () Bool)

(assert (=> b!670624 m!640489))

(declare-fun m!640491 () Bool)

(assert (=> b!670631 m!640491))

(declare-fun m!640493 () Bool)

(assert (=> b!670623 m!640493))

(assert (=> b!670627 m!640489))

(declare-fun m!640495 () Bool)

(assert (=> b!670625 m!640495))

(push 1)

(assert (not b!670626))

(assert (not b!670624))

(assert (not start!60136))

(assert (not b!670625))

(assert (not b!670631))

(assert (not b!670628))

(assert (not b!670627))

(assert (not b!670623))

(check-sat)

(pop 1)

