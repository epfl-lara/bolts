; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62632 () Bool)

(assert start!62632)

(declare-fun b!706456 () Bool)

(declare-fun res!470446 () Bool)

(declare-fun e!397876 () Bool)

(assert (=> b!706456 (=> (not res!470446) (not e!397876))))

(declare-datatypes ((List!13380 0))(
  ( (Nil!13377) (Cons!13376 (h!14421 (_ BitVec 64)) (t!19670 List!13380)) )
))
(declare-fun acc!652 () List!13380)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3923 (List!13380 (_ BitVec 64)) Bool)

(assert (=> b!706456 (= res!470446 (not (contains!3923 acc!652 k!2824)))))

(declare-fun b!706457 () Bool)

(declare-fun res!470442 () Bool)

(assert (=> b!706457 (=> (not res!470442) (not e!397876))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706457 (= res!470442 (validKeyInArray!0 k!2824))))

(declare-fun b!706458 () Bool)

(declare-fun res!470449 () Bool)

(assert (=> b!706458 (=> (not res!470449) (not e!397876))))

(declare-datatypes ((array!40267 0))(
  ( (array!40268 (arr!19286 (Array (_ BitVec 32) (_ BitVec 64))) (size!19669 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40267)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706458 (= res!470449 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706459 () Bool)

(declare-fun res!470453 () Bool)

(assert (=> b!706459 (=> (not res!470453) (not e!397876))))

(assert (=> b!706459 (= res!470453 (not (contains!3923 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706460 () Bool)

(assert (=> b!706460 (= e!397876 (bvslt (bvsub (size!19669 a!3591) from!2969) #b00000000000000000000000000000000))))

(declare-fun b!706461 () Bool)

(declare-fun res!470445 () Bool)

(assert (=> b!706461 (=> (not res!470445) (not e!397876))))

(declare-fun noDuplicate!1170 (List!13380) Bool)

(assert (=> b!706461 (= res!470445 (noDuplicate!1170 acc!652))))

(declare-fun b!706462 () Bool)

(declare-fun res!470441 () Bool)

(assert (=> b!706462 (=> (not res!470441) (not e!397876))))

(declare-fun newAcc!49 () List!13380)

(declare-fun -!332 (List!13380 (_ BitVec 64)) List!13380)

(assert (=> b!706462 (= res!470441 (= (-!332 newAcc!49 k!2824) acc!652))))

(declare-fun b!706464 () Bool)

(declare-fun res!470448 () Bool)

(assert (=> b!706464 (=> (not res!470448) (not e!397876))))

(declare-fun arrayNoDuplicates!0 (array!40267 (_ BitVec 32) List!13380) Bool)

(assert (=> b!706464 (= res!470448 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706465 () Bool)

(declare-fun res!470440 () Bool)

(assert (=> b!706465 (=> (not res!470440) (not e!397876))))

(assert (=> b!706465 (= res!470440 (not (contains!3923 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706466 () Bool)

(declare-fun res!470451 () Bool)

(assert (=> b!706466 (=> (not res!470451) (not e!397876))))

(assert (=> b!706466 (= res!470451 (contains!3923 newAcc!49 k!2824))))

(declare-fun b!706467 () Bool)

(declare-fun res!470444 () Bool)

(assert (=> b!706467 (=> (not res!470444) (not e!397876))))

(assert (=> b!706467 (= res!470444 (not (contains!3923 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706468 () Bool)

(declare-fun res!470450 () Bool)

(assert (=> b!706468 (=> (not res!470450) (not e!397876))))

(assert (=> b!706468 (= res!470450 (noDuplicate!1170 newAcc!49))))

(declare-fun b!706469 () Bool)

(declare-fun res!470443 () Bool)

(assert (=> b!706469 (=> (not res!470443) (not e!397876))))

(assert (=> b!706469 (= res!470443 (not (contains!3923 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706463 () Bool)

(declare-fun res!470452 () Bool)

(assert (=> b!706463 (=> (not res!470452) (not e!397876))))

(declare-fun subseq!367 (List!13380 List!13380) Bool)

(assert (=> b!706463 (= res!470452 (subseq!367 acc!652 newAcc!49))))

(declare-fun res!470447 () Bool)

(assert (=> start!62632 (=> (not res!470447) (not e!397876))))

(assert (=> start!62632 (= res!470447 (and (bvslt (size!19669 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19669 a!3591))))))

(assert (=> start!62632 e!397876))

(assert (=> start!62632 true))

(declare-fun array_inv!15060 (array!40267) Bool)

(assert (=> start!62632 (array_inv!15060 a!3591)))

(assert (= (and start!62632 res!470447) b!706461))

(assert (= (and b!706461 res!470445) b!706468))

(assert (= (and b!706468 res!470450) b!706467))

(assert (= (and b!706467 res!470444) b!706459))

(assert (= (and b!706459 res!470453) b!706458))

(assert (= (and b!706458 res!470449) b!706456))

(assert (= (and b!706456 res!470446) b!706457))

(assert (= (and b!706457 res!470442) b!706464))

(assert (= (and b!706464 res!470448) b!706463))

(assert (= (and b!706463 res!470452) b!706466))

(assert (= (and b!706466 res!470451) b!706462))

(assert (= (and b!706462 res!470441) b!706465))

(assert (= (and b!706465 res!470440) b!706469))

(assert (= (and b!706469 res!470443) b!706460))

(declare-fun m!664343 () Bool)

(assert (=> b!706463 m!664343))

(declare-fun m!664345 () Bool)

(assert (=> b!706468 m!664345))

(declare-fun m!664347 () Bool)

(assert (=> b!706456 m!664347))

(declare-fun m!664349 () Bool)

(assert (=> b!706466 m!664349))

(declare-fun m!664351 () Bool)

(assert (=> b!706461 m!664351))

(declare-fun m!664353 () Bool)

(assert (=> b!706457 m!664353))

(declare-fun m!664355 () Bool)

(assert (=> b!706469 m!664355))

(declare-fun m!664357 () Bool)

(assert (=> b!706467 m!664357))

(declare-fun m!664359 () Bool)

(assert (=> b!706464 m!664359))

(declare-fun m!664361 () Bool)

(assert (=> b!706465 m!664361))

(declare-fun m!664363 () Bool)

(assert (=> start!62632 m!664363))

(declare-fun m!664365 () Bool)

(assert (=> b!706459 m!664365))

(declare-fun m!664367 () Bool)

(assert (=> b!706458 m!664367))

(declare-fun m!664369 () Bool)

(assert (=> b!706462 m!664369))

(push 1)

(assert (not b!706459))

(assert (not b!706458))

(assert (not b!706457))

(assert (not b!706464))

(assert (not b!706461))

(assert (not b!706467))

(assert (not b!706462))

(assert (not b!706468))

(assert (not b!706463))

(assert (not b!706466))

(assert (not b!706469))

(assert (not start!62632))

(assert (not b!706465))

(assert (not b!706456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

