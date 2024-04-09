; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62636 () Bool)

(assert start!62636)

(declare-fun b!706535 () Bool)

(declare-fun res!470524 () Bool)

(declare-fun e!397888 () Bool)

(assert (=> b!706535 (=> (not res!470524) (not e!397888))))

(declare-datatypes ((List!13382 0))(
  ( (Nil!13379) (Cons!13378 (h!14423 (_ BitVec 64)) (t!19672 List!13382)) )
))
(declare-fun acc!652 () List!13382)

(declare-fun contains!3925 (List!13382 (_ BitVec 64)) Bool)

(assert (=> b!706535 (= res!470524 (not (contains!3925 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706536 () Bool)

(declare-fun res!470525 () Bool)

(assert (=> b!706536 (=> (not res!470525) (not e!397888))))

(declare-datatypes ((array!40271 0))(
  ( (array!40272 (arr!19288 (Array (_ BitVec 32) (_ BitVec 64))) (size!19671 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40271)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40271 (_ BitVec 32) List!13382) Bool)

(assert (=> b!706536 (= res!470525 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706537 () Bool)

(declare-fun res!470523 () Bool)

(assert (=> b!706537 (=> (not res!470523) (not e!397888))))

(declare-fun newAcc!49 () List!13382)

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!706537 (= res!470523 (contains!3925 newAcc!49 k0!2824))))

(declare-fun b!706538 () Bool)

(declare-fun res!470527 () Bool)

(assert (=> b!706538 (=> (not res!470527) (not e!397888))))

(declare-fun subseq!369 (List!13382 List!13382) Bool)

(assert (=> b!706538 (= res!470527 (subseq!369 acc!652 newAcc!49))))

(declare-fun b!706540 () Bool)

(declare-fun res!470521 () Bool)

(assert (=> b!706540 (=> (not res!470521) (not e!397888))))

(assert (=> b!706540 (= res!470521 (not (contains!3925 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706541 () Bool)

(declare-fun res!470522 () Bool)

(assert (=> b!706541 (=> (not res!470522) (not e!397888))))

(declare-fun arrayContainsKey!0 (array!40271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706541 (= res!470522 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!706542 () Bool)

(declare-fun res!470531 () Bool)

(assert (=> b!706542 (=> (not res!470531) (not e!397888))))

(assert (=> b!706542 (= res!470531 (not (contains!3925 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706543 () Bool)

(declare-fun res!470530 () Bool)

(assert (=> b!706543 (=> (not res!470530) (not e!397888))))

(assert (=> b!706543 (= res!470530 (not (contains!3925 acc!652 k0!2824)))))

(declare-fun b!706544 () Bool)

(declare-fun res!470520 () Bool)

(assert (=> b!706544 (=> (not res!470520) (not e!397888))))

(declare-fun noDuplicate!1172 (List!13382) Bool)

(assert (=> b!706544 (= res!470520 (noDuplicate!1172 newAcc!49))))

(declare-fun b!706545 () Bool)

(declare-fun res!470529 () Bool)

(assert (=> b!706545 (=> (not res!470529) (not e!397888))))

(declare-fun -!334 (List!13382 (_ BitVec 64)) List!13382)

(assert (=> b!706545 (= res!470529 (= (-!334 newAcc!49 k0!2824) acc!652))))

(declare-fun res!470526 () Bool)

(assert (=> start!62636 (=> (not res!470526) (not e!397888))))

(assert (=> start!62636 (= res!470526 (and (bvslt (size!19671 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19671 a!3591))))))

(assert (=> start!62636 e!397888))

(assert (=> start!62636 true))

(declare-fun array_inv!15062 (array!40271) Bool)

(assert (=> start!62636 (array_inv!15062 a!3591)))

(declare-fun b!706539 () Bool)

(declare-fun res!470519 () Bool)

(assert (=> b!706539 (=> (not res!470519) (not e!397888))))

(assert (=> b!706539 (= res!470519 (noDuplicate!1172 acc!652))))

(declare-fun b!706546 () Bool)

(assert (=> b!706546 (= e!397888 false)))

(declare-fun lt!317907 () Bool)

(assert (=> b!706546 (= lt!317907 (contains!3925 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706547 () Bool)

(declare-fun res!470528 () Bool)

(assert (=> b!706547 (=> (not res!470528) (not e!397888))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706547 (= res!470528 (validKeyInArray!0 k0!2824))))

(assert (= (and start!62636 res!470526) b!706539))

(assert (= (and b!706539 res!470519) b!706544))

(assert (= (and b!706544 res!470520) b!706535))

(assert (= (and b!706535 res!470524) b!706542))

(assert (= (and b!706542 res!470531) b!706541))

(assert (= (and b!706541 res!470522) b!706543))

(assert (= (and b!706543 res!470530) b!706547))

(assert (= (and b!706547 res!470528) b!706536))

(assert (= (and b!706536 res!470525) b!706538))

(assert (= (and b!706538 res!470527) b!706537))

(assert (= (and b!706537 res!470523) b!706545))

(assert (= (and b!706545 res!470529) b!706540))

(assert (= (and b!706540 res!470521) b!706546))

(declare-fun m!664399 () Bool)

(assert (=> b!706535 m!664399))

(declare-fun m!664401 () Bool)

(assert (=> b!706538 m!664401))

(declare-fun m!664403 () Bool)

(assert (=> b!706547 m!664403))

(declare-fun m!664405 () Bool)

(assert (=> b!706546 m!664405))

(declare-fun m!664407 () Bool)

(assert (=> b!706542 m!664407))

(declare-fun m!664409 () Bool)

(assert (=> b!706537 m!664409))

(declare-fun m!664411 () Bool)

(assert (=> b!706540 m!664411))

(declare-fun m!664413 () Bool)

(assert (=> b!706541 m!664413))

(declare-fun m!664415 () Bool)

(assert (=> b!706543 m!664415))

(declare-fun m!664417 () Bool)

(assert (=> start!62636 m!664417))

(declare-fun m!664419 () Bool)

(assert (=> b!706544 m!664419))

(declare-fun m!664421 () Bool)

(assert (=> b!706536 m!664421))

(declare-fun m!664423 () Bool)

(assert (=> b!706545 m!664423))

(declare-fun m!664425 () Bool)

(assert (=> b!706539 m!664425))

(check-sat (not b!706539) (not b!706544) (not b!706546) (not b!706536) (not b!706535) (not b!706538) (not b!706545) (not b!706547) (not b!706541) (not start!62636) (not b!706540) (not b!706542) (not b!706537) (not b!706543))
(check-sat)
