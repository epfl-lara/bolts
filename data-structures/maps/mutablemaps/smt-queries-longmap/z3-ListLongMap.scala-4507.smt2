; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62528 () Bool)

(assert start!62528)

(declare-fun b!703815 () Bool)

(declare-fun res!467799 () Bool)

(declare-fun e!397563 () Bool)

(assert (=> b!703815 (=> (not res!467799) (not e!397563))))

(declare-datatypes ((List!13328 0))(
  ( (Nil!13325) (Cons!13324 (h!14369 (_ BitVec 64)) (t!19618 List!13328)) )
))
(declare-fun newAcc!49 () List!13328)

(declare-fun contains!3871 (List!13328 (_ BitVec 64)) Bool)

(assert (=> b!703815 (= res!467799 (not (contains!3871 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703816 () Bool)

(declare-fun res!467803 () Bool)

(assert (=> b!703816 (=> (not res!467803) (not e!397563))))

(declare-fun acc!652 () List!13328)

(declare-fun subseq!315 (List!13328 List!13328) Bool)

(assert (=> b!703816 (= res!467803 (subseq!315 acc!652 newAcc!49))))

(declare-fun b!703817 () Bool)

(declare-fun res!467800 () Bool)

(assert (=> b!703817 (=> (not res!467800) (not e!397563))))

(declare-fun noDuplicate!1118 (List!13328) Bool)

(assert (=> b!703817 (= res!467800 (noDuplicate!1118 newAcc!49))))

(declare-fun b!703818 () Bool)

(declare-fun res!467802 () Bool)

(assert (=> b!703818 (=> (not res!467802) (not e!397563))))

(assert (=> b!703818 (= res!467802 (not (contains!3871 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703819 () Bool)

(declare-fun res!467808 () Bool)

(assert (=> b!703819 (=> (not res!467808) (not e!397563))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703819 (= res!467808 (validKeyInArray!0 k0!2824))))

(declare-fun b!703820 () Bool)

(declare-fun res!467805 () Bool)

(assert (=> b!703820 (=> (not res!467805) (not e!397563))))

(declare-fun -!280 (List!13328 (_ BitVec 64)) List!13328)

(assert (=> b!703820 (= res!467805 (= (-!280 newAcc!49 k0!2824) acc!652))))

(declare-fun b!703821 () Bool)

(declare-fun res!467807 () Bool)

(assert (=> b!703821 (=> (not res!467807) (not e!397563))))

(declare-datatypes ((array!40163 0))(
  ( (array!40164 (arr!19234 (Array (_ BitVec 32) (_ BitVec 64))) (size!19617 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40163)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> b!703821 (= res!467807 (not (validKeyInArray!0 (select (arr!19234 a!3591) from!2969))))))

(declare-fun b!703822 () Bool)

(declare-fun res!467814 () Bool)

(assert (=> b!703822 (=> (not res!467814) (not e!397563))))

(declare-fun arrayNoDuplicates!0 (array!40163 (_ BitVec 32) List!13328) Bool)

(assert (=> b!703822 (= res!467814 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703823 () Bool)

(declare-fun res!467816 () Bool)

(assert (=> b!703823 (=> (not res!467816) (not e!397563))))

(assert (=> b!703823 (= res!467816 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19617 a!3591)))))

(declare-fun b!703824 () Bool)

(declare-fun res!467810 () Bool)

(assert (=> b!703824 (=> (not res!467810) (not e!397563))))

(assert (=> b!703824 (= res!467810 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703825 () Bool)

(declare-fun res!467813 () Bool)

(assert (=> b!703825 (=> (not res!467813) (not e!397563))))

(assert (=> b!703825 (= res!467813 (noDuplicate!1118 acc!652))))

(declare-fun b!703826 () Bool)

(declare-fun res!467815 () Bool)

(assert (=> b!703826 (=> (not res!467815) (not e!397563))))

(declare-fun arrayContainsKey!0 (array!40163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703826 (= res!467815 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703827 () Bool)

(declare-fun res!467811 () Bool)

(assert (=> b!703827 (=> (not res!467811) (not e!397563))))

(assert (=> b!703827 (= res!467811 (not (contains!3871 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703828 () Bool)

(declare-fun res!467812 () Bool)

(assert (=> b!703828 (=> (not res!467812) (not e!397563))))

(assert (=> b!703828 (= res!467812 (not (contains!3871 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703829 () Bool)

(declare-fun res!467809 () Bool)

(assert (=> b!703829 (=> (not res!467809) (not e!397563))))

(assert (=> b!703829 (= res!467809 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!703830 () Bool)

(declare-fun res!467801 () Bool)

(assert (=> b!703830 (=> (not res!467801) (not e!397563))))

(assert (=> b!703830 (= res!467801 (contains!3871 newAcc!49 k0!2824))))

(declare-fun res!467806 () Bool)

(assert (=> start!62528 (=> (not res!467806) (not e!397563))))

(assert (=> start!62528 (= res!467806 (and (bvslt (size!19617 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19617 a!3591))))))

(assert (=> start!62528 e!397563))

(assert (=> start!62528 true))

(declare-fun array_inv!15008 (array!40163) Bool)

(assert (=> start!62528 (array_inv!15008 a!3591)))

(declare-fun b!703831 () Bool)

(assert (=> b!703831 (= e!397563 false)))

(declare-fun lt!317763 () Bool)

(assert (=> b!703831 (= lt!317763 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703832 () Bool)

(declare-fun res!467804 () Bool)

(assert (=> b!703832 (=> (not res!467804) (not e!397563))))

(assert (=> b!703832 (= res!467804 (not (contains!3871 acc!652 k0!2824)))))

(assert (= (and start!62528 res!467806) b!703825))

(assert (= (and b!703825 res!467813) b!703817))

(assert (= (and b!703817 res!467800) b!703828))

(assert (= (and b!703828 res!467812) b!703818))

(assert (= (and b!703818 res!467802) b!703829))

(assert (= (and b!703829 res!467809) b!703832))

(assert (= (and b!703832 res!467804) b!703819))

(assert (= (and b!703819 res!467808) b!703822))

(assert (= (and b!703822 res!467814) b!703816))

(assert (= (and b!703816 res!467803) b!703830))

(assert (= (and b!703830 res!467801) b!703820))

(assert (= (and b!703820 res!467805) b!703827))

(assert (= (and b!703827 res!467811) b!703815))

(assert (= (and b!703815 res!467799) b!703823))

(assert (= (and b!703823 res!467816) b!703821))

(assert (= (and b!703821 res!467807) b!703824))

(assert (= (and b!703824 res!467810) b!703826))

(assert (= (and b!703826 res!467815) b!703831))

(declare-fun m!662535 () Bool)

(assert (=> start!62528 m!662535))

(declare-fun m!662537 () Bool)

(assert (=> b!703829 m!662537))

(declare-fun m!662539 () Bool)

(assert (=> b!703817 m!662539))

(declare-fun m!662541 () Bool)

(assert (=> b!703815 m!662541))

(declare-fun m!662543 () Bool)

(assert (=> b!703827 m!662543))

(declare-fun m!662545 () Bool)

(assert (=> b!703816 m!662545))

(declare-fun m!662547 () Bool)

(assert (=> b!703825 m!662547))

(declare-fun m!662549 () Bool)

(assert (=> b!703826 m!662549))

(declare-fun m!662551 () Bool)

(assert (=> b!703831 m!662551))

(declare-fun m!662553 () Bool)

(assert (=> b!703828 m!662553))

(declare-fun m!662555 () Bool)

(assert (=> b!703818 m!662555))

(declare-fun m!662557 () Bool)

(assert (=> b!703832 m!662557))

(declare-fun m!662559 () Bool)

(assert (=> b!703822 m!662559))

(declare-fun m!662561 () Bool)

(assert (=> b!703830 m!662561))

(declare-fun m!662563 () Bool)

(assert (=> b!703819 m!662563))

(declare-fun m!662565 () Bool)

(assert (=> b!703821 m!662565))

(assert (=> b!703821 m!662565))

(declare-fun m!662567 () Bool)

(assert (=> b!703821 m!662567))

(declare-fun m!662569 () Bool)

(assert (=> b!703820 m!662569))

(check-sat (not b!703818) (not b!703829) (not b!703822) (not b!703821) (not b!703820) (not b!703832) (not b!703827) (not b!703826) (not b!703831) (not start!62528) (not b!703817) (not b!703828) (not b!703816) (not b!703830) (not b!703815) (not b!703825) (not b!703819))
(check-sat)
