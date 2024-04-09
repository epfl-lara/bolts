; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62522 () Bool)

(assert start!62522)

(declare-fun b!703653 () Bool)

(declare-fun res!467650 () Bool)

(declare-fun e!397545 () Bool)

(assert (=> b!703653 (=> (not res!467650) (not e!397545))))

(declare-datatypes ((List!13325 0))(
  ( (Nil!13322) (Cons!13321 (h!14366 (_ BitVec 64)) (t!19615 List!13325)) )
))
(declare-fun acc!652 () List!13325)

(declare-fun noDuplicate!1115 (List!13325) Bool)

(assert (=> b!703653 (= res!467650 (noDuplicate!1115 acc!652))))

(declare-fun res!467651 () Bool)

(assert (=> start!62522 (=> (not res!467651) (not e!397545))))

(declare-datatypes ((array!40157 0))(
  ( (array!40158 (arr!19231 (Array (_ BitVec 32) (_ BitVec 64))) (size!19614 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40157)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62522 (= res!467651 (and (bvslt (size!19614 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19614 a!3591))))))

(assert (=> start!62522 e!397545))

(assert (=> start!62522 true))

(declare-fun array_inv!15005 (array!40157) Bool)

(assert (=> start!62522 (array_inv!15005 a!3591)))

(declare-fun b!703654 () Bool)

(assert (=> b!703654 (= e!397545 false)))

(declare-fun lt!317754 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40157 (_ BitVec 32) List!13325) Bool)

(assert (=> b!703654 (= lt!317754 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703655 () Bool)

(declare-fun res!467654 () Bool)

(assert (=> b!703655 (=> (not res!467654) (not e!397545))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703655 (= res!467654 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703656 () Bool)

(declare-fun res!467641 () Bool)

(assert (=> b!703656 (=> (not res!467641) (not e!397545))))

(declare-fun newAcc!49 () List!13325)

(declare-fun subseq!312 (List!13325 List!13325) Bool)

(assert (=> b!703656 (= res!467641 (subseq!312 acc!652 newAcc!49))))

(declare-fun b!703657 () Bool)

(declare-fun res!467642 () Bool)

(assert (=> b!703657 (=> (not res!467642) (not e!397545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703657 (= res!467642 (not (validKeyInArray!0 (select (arr!19231 a!3591) from!2969))))))

(declare-fun b!703658 () Bool)

(declare-fun res!467643 () Bool)

(assert (=> b!703658 (=> (not res!467643) (not e!397545))))

(declare-fun contains!3868 (List!13325 (_ BitVec 64)) Bool)

(assert (=> b!703658 (= res!467643 (not (contains!3868 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703659 () Bool)

(declare-fun res!467649 () Bool)

(assert (=> b!703659 (=> (not res!467649) (not e!397545))))

(assert (=> b!703659 (= res!467649 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703660 () Bool)

(declare-fun res!467652 () Bool)

(assert (=> b!703660 (=> (not res!467652) (not e!397545))))

(assert (=> b!703660 (= res!467652 (not (contains!3868 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703661 () Bool)

(declare-fun res!467647 () Bool)

(assert (=> b!703661 (=> (not res!467647) (not e!397545))))

(assert (=> b!703661 (= res!467647 (not (contains!3868 acc!652 k0!2824)))))

(declare-fun b!703662 () Bool)

(declare-fun res!467640 () Bool)

(assert (=> b!703662 (=> (not res!467640) (not e!397545))))

(declare-fun -!277 (List!13325 (_ BitVec 64)) List!13325)

(assert (=> b!703662 (= res!467640 (= (-!277 newAcc!49 k0!2824) acc!652))))

(declare-fun b!703663 () Bool)

(declare-fun res!467653 () Bool)

(assert (=> b!703663 (=> (not res!467653) (not e!397545))))

(assert (=> b!703663 (= res!467653 (noDuplicate!1115 newAcc!49))))

(declare-fun b!703664 () Bool)

(declare-fun res!467637 () Bool)

(assert (=> b!703664 (=> (not res!467637) (not e!397545))))

(assert (=> b!703664 (= res!467637 (contains!3868 newAcc!49 k0!2824))))

(declare-fun b!703665 () Bool)

(declare-fun res!467645 () Bool)

(assert (=> b!703665 (=> (not res!467645) (not e!397545))))

(assert (=> b!703665 (= res!467645 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!703666 () Bool)

(declare-fun res!467646 () Bool)

(assert (=> b!703666 (=> (not res!467646) (not e!397545))))

(assert (=> b!703666 (= res!467646 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703667 () Bool)

(declare-fun res!467644 () Bool)

(assert (=> b!703667 (=> (not res!467644) (not e!397545))))

(assert (=> b!703667 (= res!467644 (not (contains!3868 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703668 () Bool)

(declare-fun res!467639 () Bool)

(assert (=> b!703668 (=> (not res!467639) (not e!397545))))

(assert (=> b!703668 (= res!467639 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19614 a!3591)))))

(declare-fun b!703669 () Bool)

(declare-fun res!467648 () Bool)

(assert (=> b!703669 (=> (not res!467648) (not e!397545))))

(assert (=> b!703669 (= res!467648 (validKeyInArray!0 k0!2824))))

(declare-fun b!703670 () Bool)

(declare-fun res!467638 () Bool)

(assert (=> b!703670 (=> (not res!467638) (not e!397545))))

(assert (=> b!703670 (= res!467638 (not (contains!3868 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62522 res!467651) b!703653))

(assert (= (and b!703653 res!467650) b!703663))

(assert (= (and b!703663 res!467653) b!703667))

(assert (= (and b!703667 res!467644) b!703660))

(assert (= (and b!703660 res!467652) b!703665))

(assert (= (and b!703665 res!467645) b!703661))

(assert (= (and b!703661 res!467647) b!703669))

(assert (= (and b!703669 res!467648) b!703666))

(assert (= (and b!703666 res!467646) b!703656))

(assert (= (and b!703656 res!467641) b!703664))

(assert (= (and b!703664 res!467637) b!703662))

(assert (= (and b!703662 res!467640) b!703658))

(assert (= (and b!703658 res!467643) b!703670))

(assert (= (and b!703670 res!467638) b!703668))

(assert (= (and b!703668 res!467639) b!703657))

(assert (= (and b!703657 res!467642) b!703659))

(assert (= (and b!703659 res!467649) b!703655))

(assert (= (and b!703655 res!467654) b!703654))

(declare-fun m!662427 () Bool)

(assert (=> b!703658 m!662427))

(declare-fun m!662429 () Bool)

(assert (=> b!703666 m!662429))

(declare-fun m!662431 () Bool)

(assert (=> b!703669 m!662431))

(declare-fun m!662433 () Bool)

(assert (=> b!703654 m!662433))

(declare-fun m!662435 () Bool)

(assert (=> b!703656 m!662435))

(declare-fun m!662437 () Bool)

(assert (=> b!703660 m!662437))

(declare-fun m!662439 () Bool)

(assert (=> b!703662 m!662439))

(declare-fun m!662441 () Bool)

(assert (=> b!703670 m!662441))

(declare-fun m!662443 () Bool)

(assert (=> b!703661 m!662443))

(declare-fun m!662445 () Bool)

(assert (=> b!703667 m!662445))

(declare-fun m!662447 () Bool)

(assert (=> b!703653 m!662447))

(declare-fun m!662449 () Bool)

(assert (=> start!62522 m!662449))

(declare-fun m!662451 () Bool)

(assert (=> b!703655 m!662451))

(declare-fun m!662453 () Bool)

(assert (=> b!703664 m!662453))

(declare-fun m!662455 () Bool)

(assert (=> b!703665 m!662455))

(declare-fun m!662457 () Bool)

(assert (=> b!703657 m!662457))

(assert (=> b!703657 m!662457))

(declare-fun m!662459 () Bool)

(assert (=> b!703657 m!662459))

(declare-fun m!662461 () Bool)

(assert (=> b!703663 m!662461))

(check-sat (not b!703663) (not b!703662) (not b!703664) (not b!703670) (not b!703658) (not b!703660) (not b!703657) (not b!703661) (not b!703667) (not b!703654) (not b!703669) (not b!703665) (not b!703655) (not b!703666) (not start!62522) (not b!703656) (not b!703653))
(check-sat)
