; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62650 () Bool)

(assert start!62650)

(declare-fun b!706808 () Bool)

(declare-fun res!470800 () Bool)

(declare-fun e!397930 () Bool)

(assert (=> b!706808 (=> (not res!470800) (not e!397930))))

(declare-datatypes ((List!13389 0))(
  ( (Nil!13386) (Cons!13385 (h!14430 (_ BitVec 64)) (t!19679 List!13389)) )
))
(declare-fun newAcc!49 () List!13389)

(declare-fun contains!3932 (List!13389 (_ BitVec 64)) Bool)

(assert (=> b!706808 (= res!470800 (not (contains!3932 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706809 () Bool)

(declare-fun res!470803 () Bool)

(assert (=> b!706809 (=> (not res!470803) (not e!397930))))

(declare-fun acc!652 () List!13389)

(declare-fun subseq!376 (List!13389 List!13389) Bool)

(assert (=> b!706809 (= res!470803 (subseq!376 acc!652 newAcc!49))))

(declare-fun b!706810 () Bool)

(declare-fun res!470795 () Bool)

(assert (=> b!706810 (=> (not res!470795) (not e!397930))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!341 (List!13389 (_ BitVec 64)) List!13389)

(assert (=> b!706810 (= res!470795 (= (-!341 newAcc!49 k!2824) acc!652))))

(declare-fun b!706811 () Bool)

(declare-fun res!470792 () Bool)

(assert (=> b!706811 (=> (not res!470792) (not e!397930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706811 (= res!470792 (validKeyInArray!0 k!2824))))

(declare-fun b!706812 () Bool)

(declare-fun res!470802 () Bool)

(assert (=> b!706812 (=> (not res!470802) (not e!397930))))

(assert (=> b!706812 (= res!470802 (contains!3932 newAcc!49 k!2824))))

(declare-fun b!706813 () Bool)

(declare-fun res!470798 () Bool)

(assert (=> b!706813 (=> (not res!470798) (not e!397930))))

(assert (=> b!706813 (= res!470798 (not (contains!3932 acc!652 k!2824)))))

(declare-fun b!706814 () Bool)

(declare-fun res!470793 () Bool)

(assert (=> b!706814 (=> (not res!470793) (not e!397930))))

(declare-datatypes ((array!40285 0))(
  ( (array!40286 (arr!19295 (Array (_ BitVec 32) (_ BitVec 64))) (size!19678 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40285)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40285 (_ BitVec 32) List!13389) Bool)

(assert (=> b!706814 (= res!470793 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706815 () Bool)

(declare-fun res!470797 () Bool)

(assert (=> b!706815 (=> (not res!470797) (not e!397930))))

(assert (=> b!706815 (= res!470797 (not (contains!3932 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706816 () Bool)

(declare-fun res!470796 () Bool)

(assert (=> b!706816 (=> (not res!470796) (not e!397930))))

(declare-fun arrayContainsKey!0 (array!40285 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706816 (= res!470796 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun res!470804 () Bool)

(assert (=> start!62650 (=> (not res!470804) (not e!397930))))

(assert (=> start!62650 (= res!470804 (and (bvslt (size!19678 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19678 a!3591))))))

(assert (=> start!62650 e!397930))

(assert (=> start!62650 true))

(declare-fun array_inv!15069 (array!40285) Bool)

(assert (=> start!62650 (array_inv!15069 a!3591)))

(declare-fun b!706817 () Bool)

(declare-fun res!470799 () Bool)

(assert (=> b!706817 (=> (not res!470799) (not e!397930))))

(assert (=> b!706817 (= res!470799 (not (contains!3932 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706818 () Bool)

(assert (=> b!706818 (= e!397930 false)))

(declare-fun lt!317928 () Bool)

(assert (=> b!706818 (= lt!317928 (contains!3932 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706819 () Bool)

(declare-fun res!470794 () Bool)

(assert (=> b!706819 (=> (not res!470794) (not e!397930))))

(declare-fun noDuplicate!1179 (List!13389) Bool)

(assert (=> b!706819 (= res!470794 (noDuplicate!1179 acc!652))))

(declare-fun b!706820 () Bool)

(declare-fun res!470801 () Bool)

(assert (=> b!706820 (=> (not res!470801) (not e!397930))))

(assert (=> b!706820 (= res!470801 (noDuplicate!1179 newAcc!49))))

(assert (= (and start!62650 res!470804) b!706819))

(assert (= (and b!706819 res!470794) b!706820))

(assert (= (and b!706820 res!470801) b!706815))

(assert (= (and b!706815 res!470797) b!706817))

(assert (= (and b!706817 res!470799) b!706816))

(assert (= (and b!706816 res!470796) b!706813))

(assert (= (and b!706813 res!470798) b!706811))

(assert (= (and b!706811 res!470792) b!706814))

(assert (= (and b!706814 res!470793) b!706809))

(assert (= (and b!706809 res!470803) b!706812))

(assert (= (and b!706812 res!470802) b!706810))

(assert (= (and b!706810 res!470795) b!706808))

(assert (= (and b!706808 res!470800) b!706818))

(declare-fun m!664595 () Bool)

(assert (=> b!706812 m!664595))

(declare-fun m!664597 () Bool)

(assert (=> b!706819 m!664597))

(declare-fun m!664599 () Bool)

(assert (=> start!62650 m!664599))

(declare-fun m!664601 () Bool)

(assert (=> b!706808 m!664601))

(declare-fun m!664603 () Bool)

(assert (=> b!706814 m!664603))

(declare-fun m!664605 () Bool)

(assert (=> b!706809 m!664605))

(declare-fun m!664607 () Bool)

(assert (=> b!706816 m!664607))

(declare-fun m!664609 () Bool)

(assert (=> b!706811 m!664609))

(declare-fun m!664611 () Bool)

(assert (=> b!706818 m!664611))

(declare-fun m!664613 () Bool)

(assert (=> b!706813 m!664613))

(declare-fun m!664615 () Bool)

(assert (=> b!706810 m!664615))

(declare-fun m!664617 () Bool)

(assert (=> b!706817 m!664617))

(declare-fun m!664619 () Bool)

(assert (=> b!706820 m!664619))

(declare-fun m!664621 () Bool)

(assert (=> b!706815 m!664621))

(push 1)

(assert (not b!706820))

(assert (not b!706814))

(assert (not b!706818))

(assert (not b!706808))

(assert (not b!706809))

(assert (not b!706813))

(assert (not b!706817))

(assert (not b!706810))

(assert (not b!706816))

(assert (not b!706815))

(assert (not b!706811))

(assert (not start!62650))

(assert (not b!706819))

(assert (not b!706812))

(check-sat)

