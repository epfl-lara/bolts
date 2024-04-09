; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62646 () Bool)

(assert start!62646)

(declare-fun b!706730 () Bool)

(declare-fun res!470716 () Bool)

(declare-fun e!397917 () Bool)

(assert (=> b!706730 (=> (not res!470716) (not e!397917))))

(declare-datatypes ((List!13387 0))(
  ( (Nil!13384) (Cons!13383 (h!14428 (_ BitVec 64)) (t!19677 List!13387)) )
))
(declare-fun acc!652 () List!13387)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3930 (List!13387 (_ BitVec 64)) Bool)

(assert (=> b!706730 (= res!470716 (not (contains!3930 acc!652 k!2824)))))

(declare-fun b!706731 () Bool)

(declare-fun res!470726 () Bool)

(assert (=> b!706731 (=> (not res!470726) (not e!397917))))

(assert (=> b!706731 (= res!470726 (not (contains!3930 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706732 () Bool)

(declare-fun res!470720 () Bool)

(assert (=> b!706732 (=> (not res!470720) (not e!397917))))

(declare-datatypes ((array!40281 0))(
  ( (array!40282 (arr!19293 (Array (_ BitVec 32) (_ BitVec 64))) (size!19676 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40281)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706732 (= res!470720 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706733 () Bool)

(declare-fun res!470715 () Bool)

(assert (=> b!706733 (=> (not res!470715) (not e!397917))))

(declare-fun newAcc!49 () List!13387)

(declare-fun noDuplicate!1177 (List!13387) Bool)

(assert (=> b!706733 (= res!470715 (noDuplicate!1177 newAcc!49))))

(declare-fun b!706734 () Bool)

(declare-fun res!470714 () Bool)

(assert (=> b!706734 (=> (not res!470714) (not e!397917))))

(assert (=> b!706734 (= res!470714 (noDuplicate!1177 acc!652))))

(declare-fun res!470725 () Bool)

(assert (=> start!62646 (=> (not res!470725) (not e!397917))))

(assert (=> start!62646 (= res!470725 (and (bvslt (size!19676 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19676 a!3591))))))

(assert (=> start!62646 e!397917))

(assert (=> start!62646 true))

(declare-fun array_inv!15067 (array!40281) Bool)

(assert (=> start!62646 (array_inv!15067 a!3591)))

(declare-fun b!706735 () Bool)

(declare-fun res!470718 () Bool)

(assert (=> b!706735 (=> (not res!470718) (not e!397917))))

(assert (=> b!706735 (= res!470718 (not (contains!3930 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706736 () Bool)

(assert (=> b!706736 (= e!397917 false)))

(declare-fun lt!317922 () Bool)

(assert (=> b!706736 (= lt!317922 (contains!3930 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706737 () Bool)

(declare-fun res!470719 () Bool)

(assert (=> b!706737 (=> (not res!470719) (not e!397917))))

(declare-fun -!339 (List!13387 (_ BitVec 64)) List!13387)

(assert (=> b!706737 (= res!470719 (= (-!339 newAcc!49 k!2824) acc!652))))

(declare-fun b!706738 () Bool)

(declare-fun res!470724 () Bool)

(assert (=> b!706738 (=> (not res!470724) (not e!397917))))

(declare-fun arrayNoDuplicates!0 (array!40281 (_ BitVec 32) List!13387) Bool)

(assert (=> b!706738 (= res!470724 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706739 () Bool)

(declare-fun res!470721 () Bool)

(assert (=> b!706739 (=> (not res!470721) (not e!397917))))

(declare-fun subseq!374 (List!13387 List!13387) Bool)

(assert (=> b!706739 (= res!470721 (subseq!374 acc!652 newAcc!49))))

(declare-fun b!706740 () Bool)

(declare-fun res!470717 () Bool)

(assert (=> b!706740 (=> (not res!470717) (not e!397917))))

(assert (=> b!706740 (= res!470717 (contains!3930 newAcc!49 k!2824))))

(declare-fun b!706741 () Bool)

(declare-fun res!470723 () Bool)

(assert (=> b!706741 (=> (not res!470723) (not e!397917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706741 (= res!470723 (validKeyInArray!0 k!2824))))

(declare-fun b!706742 () Bool)

(declare-fun res!470722 () Bool)

(assert (=> b!706742 (=> (not res!470722) (not e!397917))))

(assert (=> b!706742 (= res!470722 (not (contains!3930 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62646 res!470725) b!706734))

(assert (= (and b!706734 res!470714) b!706733))

(assert (= (and b!706733 res!470715) b!706735))

(assert (= (and b!706735 res!470718) b!706731))

(assert (= (and b!706731 res!470726) b!706732))

(assert (= (and b!706732 res!470720) b!706730))

(assert (= (and b!706730 res!470716) b!706741))

(assert (= (and b!706741 res!470723) b!706738))

(assert (= (and b!706738 res!470724) b!706739))

(assert (= (and b!706739 res!470721) b!706740))

(assert (= (and b!706740 res!470717) b!706737))

(assert (= (and b!706737 res!470719) b!706742))

(assert (= (and b!706742 res!470722) b!706736))

(declare-fun m!664539 () Bool)

(assert (=> b!706737 m!664539))

(declare-fun m!664541 () Bool)

(assert (=> b!706730 m!664541))

(declare-fun m!664543 () Bool)

(assert (=> b!706738 m!664543))

(declare-fun m!664545 () Bool)

(assert (=> b!706739 m!664545))

(declare-fun m!664547 () Bool)

(assert (=> b!706736 m!664547))

(declare-fun m!664549 () Bool)

(assert (=> start!62646 m!664549))

(declare-fun m!664551 () Bool)

(assert (=> b!706733 m!664551))

(declare-fun m!664553 () Bool)

(assert (=> b!706731 m!664553))

(declare-fun m!664555 () Bool)

(assert (=> b!706732 m!664555))

(declare-fun m!664557 () Bool)

(assert (=> b!706742 m!664557))

(declare-fun m!664559 () Bool)

(assert (=> b!706740 m!664559))

(declare-fun m!664561 () Bool)

(assert (=> b!706734 m!664561))

(declare-fun m!664563 () Bool)

(assert (=> b!706741 m!664563))

(declare-fun m!664565 () Bool)

(assert (=> b!706735 m!664565))

(push 1)

(assert (not b!706741))

(assert (not b!706736))

(assert (not b!706733))

(assert (not b!706730))

(assert (not b!706737))

(assert (not b!706740))

(assert (not b!706731))

(assert (not b!706734))

(assert (not b!706742))

(assert (not b!706732))

(assert (not b!706735))

(assert (not start!62646))

(assert (not b!706739))

(assert (not b!706738))

(check-sat)

