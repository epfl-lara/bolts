; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60126 () Bool)

(assert start!60126)

(declare-fun b!670488 () Bool)

(declare-fun res!437364 () Bool)

(declare-fun e!383322 () Bool)

(assert (=> b!670488 (=> (not res!437364) (not e!383322))))

(declare-datatypes ((List!12847 0))(
  ( (Nil!12844) (Cons!12843 (h!13888 (_ BitVec 64)) (t!19083 List!12847)) )
))
(declare-fun acc!681 () List!12847)

(declare-fun noDuplicate!637 (List!12847) Bool)

(assert (=> b!670488 (= res!437364 (noDuplicate!637 acc!681))))

(declare-fun b!670489 () Bool)

(declare-fun e!383325 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3390 (List!12847 (_ BitVec 64)) Bool)

(assert (=> b!670489 (= e!383325 (contains!3390 acc!681 k!2843))))

(declare-fun b!670490 () Bool)

(declare-fun res!437359 () Bool)

(assert (=> b!670490 (=> (not res!437359) (not e!383322))))

(assert (=> b!670490 (= res!437359 (not (contains!3390 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670491 () Bool)

(assert (=> b!670491 (= e!383322 false)))

(declare-fun lt!312081 () Bool)

(declare-datatypes ((array!39129 0))(
  ( (array!39130 (arr!18753 (Array (_ BitVec 32) (_ BitVec 64))) (size!19117 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39129)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39129 (_ BitVec 32) List!12847) Bool)

(assert (=> b!670491 (= lt!312081 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670492 () Bool)

(declare-fun res!437362 () Bool)

(assert (=> b!670492 (=> (not res!437362) (not e!383322))))

(assert (=> b!670492 (= res!437362 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12844))))

(declare-fun b!670493 () Bool)

(declare-fun res!437360 () Bool)

(assert (=> b!670493 (=> (not res!437360) (not e!383322))))

(assert (=> b!670493 (= res!437360 (not (contains!3390 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!437363 () Bool)

(assert (=> start!60126 (=> (not res!437363) (not e!383322))))

(assert (=> start!60126 (= res!437363 (and (bvslt (size!19117 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19117 a!3626))))))

(assert (=> start!60126 e!383322))

(assert (=> start!60126 true))

(declare-fun array_inv!14527 (array!39129) Bool)

(assert (=> start!60126 (array_inv!14527 a!3626)))

(declare-fun b!670494 () Bool)

(declare-fun res!437361 () Bool)

(assert (=> b!670494 (=> (not res!437361) (not e!383322))))

(declare-fun e!383324 () Bool)

(assert (=> b!670494 (= res!437361 e!383324)))

(declare-fun res!437358 () Bool)

(assert (=> b!670494 (=> res!437358 e!383324)))

(assert (=> b!670494 (= res!437358 e!383325)))

(declare-fun res!437365 () Bool)

(assert (=> b!670494 (=> (not res!437365) (not e!383325))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670494 (= res!437365 (bvsgt from!3004 i!1382))))

(declare-fun b!670495 () Bool)

(declare-fun e!383326 () Bool)

(assert (=> b!670495 (= e!383326 (not (contains!3390 acc!681 k!2843)))))

(declare-fun b!670496 () Bool)

(assert (=> b!670496 (= e!383324 e!383326)))

(declare-fun res!437366 () Bool)

(assert (=> b!670496 (=> (not res!437366) (not e!383326))))

(assert (=> b!670496 (= res!437366 (bvsle from!3004 i!1382))))

(assert (= (and start!60126 res!437363) b!670488))

(assert (= (and b!670488 res!437364) b!670493))

(assert (= (and b!670493 res!437360) b!670490))

(assert (= (and b!670490 res!437359) b!670494))

(assert (= (and b!670494 res!437365) b!670489))

(assert (= (and b!670494 (not res!437358)) b!670496))

(assert (= (and b!670496 res!437366) b!670495))

(assert (= (and b!670494 res!437361) b!670492))

(assert (= (and b!670492 res!437362) b!670491))

(declare-fun m!640413 () Bool)

(assert (=> b!670491 m!640413))

(declare-fun m!640415 () Bool)

(assert (=> b!670493 m!640415))

(declare-fun m!640417 () Bool)

(assert (=> start!60126 m!640417))

(declare-fun m!640419 () Bool)

(assert (=> b!670489 m!640419))

(declare-fun m!640421 () Bool)

(assert (=> b!670492 m!640421))

(declare-fun m!640423 () Bool)

(assert (=> b!670488 m!640423))

(declare-fun m!640425 () Bool)

(assert (=> b!670490 m!640425))

(assert (=> b!670495 m!640419))

(push 1)

(assert (not b!670491))

(assert (not b!670490))

(assert (not b!670495))

(assert (not b!670489))

(assert (not b!670492))

(assert (not start!60126))

(assert (not b!670488))

(assert (not b!670493))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

