; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62642 () Bool)

(assert start!62642)

(declare-fun b!706652 () Bool)

(declare-fun res!470639 () Bool)

(declare-fun e!397906 () Bool)

(assert (=> b!706652 (=> (not res!470639) (not e!397906))))

(declare-datatypes ((List!13385 0))(
  ( (Nil!13382) (Cons!13381 (h!14426 (_ BitVec 64)) (t!19675 List!13385)) )
))
(declare-fun acc!652 () List!13385)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun contains!3928 (List!13385 (_ BitVec 64)) Bool)

(assert (=> b!706652 (= res!470639 (not (contains!3928 acc!652 k0!2824)))))

(declare-fun b!706653 () Bool)

(declare-fun res!470641 () Bool)

(assert (=> b!706653 (=> (not res!470641) (not e!397906))))

(declare-fun newAcc!49 () List!13385)

(assert (=> b!706653 (= res!470641 (contains!3928 newAcc!49 k0!2824))))

(declare-fun b!706654 () Bool)

(declare-fun res!470638 () Bool)

(assert (=> b!706654 (=> (not res!470638) (not e!397906))))

(declare-fun noDuplicate!1175 (List!13385) Bool)

(assert (=> b!706654 (= res!470638 (noDuplicate!1175 newAcc!49))))

(declare-fun b!706655 () Bool)

(declare-fun res!470647 () Bool)

(assert (=> b!706655 (=> (not res!470647) (not e!397906))))

(declare-fun -!337 (List!13385 (_ BitVec 64)) List!13385)

(assert (=> b!706655 (= res!470647 (= (-!337 newAcc!49 k0!2824) acc!652))))

(declare-fun res!470640 () Bool)

(assert (=> start!62642 (=> (not res!470640) (not e!397906))))

(declare-datatypes ((array!40277 0))(
  ( (array!40278 (arr!19291 (Array (_ BitVec 32) (_ BitVec 64))) (size!19674 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40277)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62642 (= res!470640 (and (bvslt (size!19674 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19674 a!3591))))))

(assert (=> start!62642 e!397906))

(assert (=> start!62642 true))

(declare-fun array_inv!15065 (array!40277) Bool)

(assert (=> start!62642 (array_inv!15065 a!3591)))

(declare-fun b!706656 () Bool)

(declare-fun res!470648 () Bool)

(assert (=> b!706656 (=> (not res!470648) (not e!397906))))

(assert (=> b!706656 (= res!470648 (not (contains!3928 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706657 () Bool)

(declare-fun res!470646 () Bool)

(assert (=> b!706657 (=> (not res!470646) (not e!397906))))

(assert (=> b!706657 (= res!470646 (not (contains!3928 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706658 () Bool)

(assert (=> b!706658 (= e!397906 false)))

(declare-fun lt!317916 () Bool)

(assert (=> b!706658 (= lt!317916 (contains!3928 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706659 () Bool)

(declare-fun res!470645 () Bool)

(assert (=> b!706659 (=> (not res!470645) (not e!397906))))

(declare-fun arrayContainsKey!0 (array!40277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706659 (= res!470645 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!706660 () Bool)

(declare-fun res!470637 () Bool)

(assert (=> b!706660 (=> (not res!470637) (not e!397906))))

(declare-fun subseq!372 (List!13385 List!13385) Bool)

(assert (=> b!706660 (= res!470637 (subseq!372 acc!652 newAcc!49))))

(declare-fun b!706661 () Bool)

(declare-fun res!470644 () Bool)

(assert (=> b!706661 (=> (not res!470644) (not e!397906))))

(assert (=> b!706661 (= res!470644 (noDuplicate!1175 acc!652))))

(declare-fun b!706662 () Bool)

(declare-fun res!470636 () Bool)

(assert (=> b!706662 (=> (not res!470636) (not e!397906))))

(assert (=> b!706662 (= res!470636 (not (contains!3928 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706663 () Bool)

(declare-fun res!470642 () Bool)

(assert (=> b!706663 (=> (not res!470642) (not e!397906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706663 (= res!470642 (validKeyInArray!0 k0!2824))))

(declare-fun b!706664 () Bool)

(declare-fun res!470643 () Bool)

(assert (=> b!706664 (=> (not res!470643) (not e!397906))))

(declare-fun arrayNoDuplicates!0 (array!40277 (_ BitVec 32) List!13385) Bool)

(assert (=> b!706664 (= res!470643 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(assert (= (and start!62642 res!470640) b!706661))

(assert (= (and b!706661 res!470644) b!706654))

(assert (= (and b!706654 res!470638) b!706656))

(assert (= (and b!706656 res!470648) b!706662))

(assert (= (and b!706662 res!470636) b!706659))

(assert (= (and b!706659 res!470645) b!706652))

(assert (= (and b!706652 res!470639) b!706663))

(assert (= (and b!706663 res!470642) b!706664))

(assert (= (and b!706664 res!470643) b!706660))

(assert (= (and b!706660 res!470637) b!706653))

(assert (= (and b!706653 res!470641) b!706655))

(assert (= (and b!706655 res!470647) b!706657))

(assert (= (and b!706657 res!470646) b!706658))

(declare-fun m!664483 () Bool)

(assert (=> b!706655 m!664483))

(declare-fun m!664485 () Bool)

(assert (=> b!706664 m!664485))

(declare-fun m!664487 () Bool)

(assert (=> b!706662 m!664487))

(declare-fun m!664489 () Bool)

(assert (=> b!706656 m!664489))

(declare-fun m!664491 () Bool)

(assert (=> b!706659 m!664491))

(declare-fun m!664493 () Bool)

(assert (=> b!706652 m!664493))

(declare-fun m!664495 () Bool)

(assert (=> b!706658 m!664495))

(declare-fun m!664497 () Bool)

(assert (=> b!706653 m!664497))

(declare-fun m!664499 () Bool)

(assert (=> b!706663 m!664499))

(declare-fun m!664501 () Bool)

(assert (=> b!706660 m!664501))

(declare-fun m!664503 () Bool)

(assert (=> start!62642 m!664503))

(declare-fun m!664505 () Bool)

(assert (=> b!706661 m!664505))

(declare-fun m!664507 () Bool)

(assert (=> b!706657 m!664507))

(declare-fun m!664509 () Bool)

(assert (=> b!706654 m!664509))

(check-sat (not b!706656) (not b!706654) (not b!706661) (not start!62642) (not b!706663) (not b!706664) (not b!706655) (not b!706653) (not b!706660) (not b!706659) (not b!706657) (not b!706652) (not b!706662) (not b!706658))
(check-sat)
