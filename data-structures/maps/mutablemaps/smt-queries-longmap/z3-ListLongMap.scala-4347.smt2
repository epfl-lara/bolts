; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60128 () Bool)

(assert start!60128)

(declare-fun b!670515 () Bool)

(declare-fun res!437388 () Bool)

(declare-fun e!383341 () Bool)

(assert (=> b!670515 (=> (not res!437388) (not e!383341))))

(declare-datatypes ((List!12848 0))(
  ( (Nil!12845) (Cons!12844 (h!13889 (_ BitVec 64)) (t!19084 List!12848)) )
))
(declare-fun acc!681 () List!12848)

(declare-fun contains!3391 (List!12848 (_ BitVec 64)) Bool)

(assert (=> b!670515 (= res!437388 (not (contains!3391 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670517 () Bool)

(declare-fun e!383339 () Bool)

(declare-fun e!383338 () Bool)

(assert (=> b!670517 (= e!383339 e!383338)))

(declare-fun res!437387 () Bool)

(assert (=> b!670517 (=> (not res!437387) (not e!383338))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670517 (= res!437387 (bvsle from!3004 i!1382))))

(declare-fun b!670518 () Bool)

(declare-fun res!437390 () Bool)

(assert (=> b!670518 (=> (not res!437390) (not e!383341))))

(assert (=> b!670518 (= res!437390 (not (contains!3391 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670519 () Bool)

(declare-fun res!437389 () Bool)

(assert (=> b!670519 (=> (not res!437389) (not e!383341))))

(declare-datatypes ((array!39131 0))(
  ( (array!39132 (arr!18754 (Array (_ BitVec 32) (_ BitVec 64))) (size!19118 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39131)

(declare-fun arrayNoDuplicates!0 (array!39131 (_ BitVec 32) List!12848) Bool)

(assert (=> b!670519 (= res!437389 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12845))))

(declare-fun b!670520 () Bool)

(assert (=> b!670520 (= e!383341 false)))

(declare-fun lt!312084 () Bool)

(assert (=> b!670520 (= lt!312084 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670521 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!670521 (= e!383338 (not (contains!3391 acc!681 k0!2843)))))

(declare-fun b!670522 () Bool)

(declare-fun e!383340 () Bool)

(assert (=> b!670522 (= e!383340 (contains!3391 acc!681 k0!2843))))

(declare-fun b!670523 () Bool)

(declare-fun res!437385 () Bool)

(assert (=> b!670523 (=> (not res!437385) (not e!383341))))

(assert (=> b!670523 (= res!437385 e!383339)))

(declare-fun res!437386 () Bool)

(assert (=> b!670523 (=> res!437386 e!383339)))

(assert (=> b!670523 (= res!437386 e!383340)))

(declare-fun res!437392 () Bool)

(assert (=> b!670523 (=> (not res!437392) (not e!383340))))

(assert (=> b!670523 (= res!437392 (bvsgt from!3004 i!1382))))

(declare-fun res!437391 () Bool)

(assert (=> start!60128 (=> (not res!437391) (not e!383341))))

(assert (=> start!60128 (= res!437391 (and (bvslt (size!19118 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19118 a!3626))))))

(assert (=> start!60128 e!383341))

(assert (=> start!60128 true))

(declare-fun array_inv!14528 (array!39131) Bool)

(assert (=> start!60128 (array_inv!14528 a!3626)))

(declare-fun b!670516 () Bool)

(declare-fun res!437393 () Bool)

(assert (=> b!670516 (=> (not res!437393) (not e!383341))))

(declare-fun noDuplicate!638 (List!12848) Bool)

(assert (=> b!670516 (= res!437393 (noDuplicate!638 acc!681))))

(assert (= (and start!60128 res!437391) b!670516))

(assert (= (and b!670516 res!437393) b!670515))

(assert (= (and b!670515 res!437388) b!670518))

(assert (= (and b!670518 res!437390) b!670523))

(assert (= (and b!670523 res!437392) b!670522))

(assert (= (and b!670523 (not res!437386)) b!670517))

(assert (= (and b!670517 res!437387) b!670521))

(assert (= (and b!670523 res!437385) b!670519))

(assert (= (and b!670519 res!437389) b!670520))

(declare-fun m!640427 () Bool)

(assert (=> start!60128 m!640427))

(declare-fun m!640429 () Bool)

(assert (=> b!670516 m!640429))

(declare-fun m!640431 () Bool)

(assert (=> b!670515 m!640431))

(declare-fun m!640433 () Bool)

(assert (=> b!670522 m!640433))

(declare-fun m!640435 () Bool)

(assert (=> b!670518 m!640435))

(assert (=> b!670521 m!640433))

(declare-fun m!640437 () Bool)

(assert (=> b!670520 m!640437))

(declare-fun m!640439 () Bool)

(assert (=> b!670519 m!640439))

(check-sat (not b!670522) (not b!670521) (not b!670518) (not start!60128) (not b!670520) (not b!670519) (not b!670516) (not b!670515))
(check-sat)
