; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62644 () Bool)

(assert start!62644)

(declare-fun b!706691 () Bool)

(declare-fun res!470682 () Bool)

(declare-fun e!397911 () Bool)

(assert (=> b!706691 (=> (not res!470682) (not e!397911))))

(declare-datatypes ((array!40279 0))(
  ( (array!40280 (arr!19292 (Array (_ BitVec 32) (_ BitVec 64))) (size!19675 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40279)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706691 (= res!470682 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706692 () Bool)

(declare-fun res!470684 () Bool)

(assert (=> b!706692 (=> (not res!470684) (not e!397911))))

(declare-datatypes ((List!13386 0))(
  ( (Nil!13383) (Cons!13382 (h!14427 (_ BitVec 64)) (t!19676 List!13386)) )
))
(declare-fun newAcc!49 () List!13386)

(declare-fun noDuplicate!1176 (List!13386) Bool)

(assert (=> b!706692 (= res!470684 (noDuplicate!1176 newAcc!49))))

(declare-fun b!706693 () Bool)

(declare-fun res!470681 () Bool)

(assert (=> b!706693 (=> (not res!470681) (not e!397911))))

(declare-fun acc!652 () List!13386)

(declare-fun arrayNoDuplicates!0 (array!40279 (_ BitVec 32) List!13386) Bool)

(assert (=> b!706693 (= res!470681 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706694 () Bool)

(declare-fun res!470680 () Bool)

(assert (=> b!706694 (=> (not res!470680) (not e!397911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706694 (= res!470680 (validKeyInArray!0 k!2824))))

(declare-fun b!706695 () Bool)

(assert (=> b!706695 (= e!397911 false)))

(declare-fun lt!317919 () Bool)

(declare-fun contains!3929 (List!13386 (_ BitVec 64)) Bool)

(assert (=> b!706695 (= lt!317919 (contains!3929 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706696 () Bool)

(declare-fun res!470687 () Bool)

(assert (=> b!706696 (=> (not res!470687) (not e!397911))))

(assert (=> b!706696 (= res!470687 (noDuplicate!1176 acc!652))))

(declare-fun b!706697 () Bool)

(declare-fun res!470685 () Bool)

(assert (=> b!706697 (=> (not res!470685) (not e!397911))))

(declare-fun subseq!373 (List!13386 List!13386) Bool)

(assert (=> b!706697 (= res!470685 (subseq!373 acc!652 newAcc!49))))

(declare-fun b!706698 () Bool)

(declare-fun res!470678 () Bool)

(assert (=> b!706698 (=> (not res!470678) (not e!397911))))

(assert (=> b!706698 (= res!470678 (contains!3929 newAcc!49 k!2824))))

(declare-fun b!706700 () Bool)

(declare-fun res!470679 () Bool)

(assert (=> b!706700 (=> (not res!470679) (not e!397911))))

(assert (=> b!706700 (= res!470679 (not (contains!3929 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706701 () Bool)

(declare-fun res!470676 () Bool)

(assert (=> b!706701 (=> (not res!470676) (not e!397911))))

(declare-fun -!338 (List!13386 (_ BitVec 64)) List!13386)

(assert (=> b!706701 (= res!470676 (= (-!338 newAcc!49 k!2824) acc!652))))

(declare-fun b!706702 () Bool)

(declare-fun res!470675 () Bool)

(assert (=> b!706702 (=> (not res!470675) (not e!397911))))

(assert (=> b!706702 (= res!470675 (not (contains!3929 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706703 () Bool)

(declare-fun res!470686 () Bool)

(assert (=> b!706703 (=> (not res!470686) (not e!397911))))

(assert (=> b!706703 (= res!470686 (not (contains!3929 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!470683 () Bool)

(assert (=> start!62644 (=> (not res!470683) (not e!397911))))

(assert (=> start!62644 (= res!470683 (and (bvslt (size!19675 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19675 a!3591))))))

(assert (=> start!62644 e!397911))

(assert (=> start!62644 true))

(declare-fun array_inv!15066 (array!40279) Bool)

(assert (=> start!62644 (array_inv!15066 a!3591)))

(declare-fun b!706699 () Bool)

(declare-fun res!470677 () Bool)

(assert (=> b!706699 (=> (not res!470677) (not e!397911))))

(assert (=> b!706699 (= res!470677 (not (contains!3929 acc!652 k!2824)))))

(assert (= (and start!62644 res!470683) b!706696))

(assert (= (and b!706696 res!470687) b!706692))

(assert (= (and b!706692 res!470684) b!706700))

(assert (= (and b!706700 res!470679) b!706703))

(assert (= (and b!706703 res!470686) b!706691))

(assert (= (and b!706691 res!470682) b!706699))

(assert (= (and b!706699 res!470677) b!706694))

(assert (= (and b!706694 res!470680) b!706693))

(assert (= (and b!706693 res!470681) b!706697))

(assert (= (and b!706697 res!470685) b!706698))

(assert (= (and b!706698 res!470678) b!706701))

(assert (= (and b!706701 res!470676) b!706702))

(assert (= (and b!706702 res!470675) b!706695))

(declare-fun m!664511 () Bool)

(assert (=> b!706696 m!664511))

(declare-fun m!664513 () Bool)

(assert (=> b!706703 m!664513))

(declare-fun m!664515 () Bool)

(assert (=> b!706692 m!664515))

(declare-fun m!664517 () Bool)

(assert (=> b!706694 m!664517))

(declare-fun m!664519 () Bool)

(assert (=> b!706695 m!664519))

(declare-fun m!664521 () Bool)

(assert (=> b!706698 m!664521))

(declare-fun m!664523 () Bool)

(assert (=> b!706693 m!664523))

(declare-fun m!664525 () Bool)

(assert (=> start!62644 m!664525))

(declare-fun m!664527 () Bool)

(assert (=> b!706702 m!664527))

(declare-fun m!664529 () Bool)

(assert (=> b!706697 m!664529))

(declare-fun m!664531 () Bool)

(assert (=> b!706700 m!664531))

(declare-fun m!664533 () Bool)

(assert (=> b!706699 m!664533))

(declare-fun m!664535 () Bool)

(assert (=> b!706701 m!664535))

(declare-fun m!664537 () Bool)

(assert (=> b!706691 m!664537))

(push 1)

(assert (not b!706702))

(assert (not b!706697))

(assert (not start!62644))

(assert (not b!706699))

(assert (not b!706696))

(assert (not b!706701))

