; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62654 () Bool)

(assert start!62654)

(declare-fun b!706886 () Bool)

(declare-fun res!470882 () Bool)

(declare-fun e!397941 () Bool)

(assert (=> b!706886 (=> (not res!470882) (not e!397941))))

(declare-datatypes ((List!13391 0))(
  ( (Nil!13388) (Cons!13387 (h!14432 (_ BitVec 64)) (t!19681 List!13391)) )
))
(declare-fun newAcc!49 () List!13391)

(declare-fun contains!3934 (List!13391 (_ BitVec 64)) Bool)

(assert (=> b!706886 (= res!470882 (not (contains!3934 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706887 () Bool)

(declare-fun res!470873 () Bool)

(assert (=> b!706887 (=> (not res!470873) (not e!397941))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13391)

(declare-fun -!343 (List!13391 (_ BitVec 64)) List!13391)

(assert (=> b!706887 (= res!470873 (= (-!343 newAcc!49 k0!2824) acc!652))))

(declare-fun b!706888 () Bool)

(declare-fun res!470875 () Bool)

(assert (=> b!706888 (=> (not res!470875) (not e!397941))))

(declare-fun noDuplicate!1181 (List!13391) Bool)

(assert (=> b!706888 (= res!470875 (noDuplicate!1181 acc!652))))

(declare-fun b!706889 () Bool)

(declare-fun res!470874 () Bool)

(assert (=> b!706889 (=> (not res!470874) (not e!397941))))

(declare-datatypes ((array!40289 0))(
  ( (array!40290 (arr!19297 (Array (_ BitVec 32) (_ BitVec 64))) (size!19680 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40289)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706889 (= res!470874 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!706890 () Bool)

(declare-fun res!470870 () Bool)

(assert (=> b!706890 (=> (not res!470870) (not e!397941))))

(assert (=> b!706890 (= res!470870 (not (contains!3934 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706891 () Bool)

(declare-fun res!470881 () Bool)

(assert (=> b!706891 (=> (not res!470881) (not e!397941))))

(assert (=> b!706891 (= res!470881 (noDuplicate!1181 newAcc!49))))

(declare-fun res!470879 () Bool)

(assert (=> start!62654 (=> (not res!470879) (not e!397941))))

(assert (=> start!62654 (= res!470879 (and (bvslt (size!19680 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19680 a!3591))))))

(assert (=> start!62654 e!397941))

(assert (=> start!62654 true))

(declare-fun array_inv!15071 (array!40289) Bool)

(assert (=> start!62654 (array_inv!15071 a!3591)))

(declare-fun b!706892 () Bool)

(declare-fun res!470878 () Bool)

(assert (=> b!706892 (=> (not res!470878) (not e!397941))))

(assert (=> b!706892 (= res!470878 (contains!3934 newAcc!49 k0!2824))))

(declare-fun b!706893 () Bool)

(assert (=> b!706893 (= e!397941 false)))

(declare-fun lt!317934 () Bool)

(assert (=> b!706893 (= lt!317934 (contains!3934 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706894 () Bool)

(declare-fun res!470877 () Bool)

(assert (=> b!706894 (=> (not res!470877) (not e!397941))))

(assert (=> b!706894 (= res!470877 (not (contains!3934 acc!652 k0!2824)))))

(declare-fun b!706895 () Bool)

(declare-fun res!470880 () Bool)

(assert (=> b!706895 (=> (not res!470880) (not e!397941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706895 (= res!470880 (validKeyInArray!0 k0!2824))))

(declare-fun b!706896 () Bool)

(declare-fun res!470872 () Bool)

(assert (=> b!706896 (=> (not res!470872) (not e!397941))))

(declare-fun arrayNoDuplicates!0 (array!40289 (_ BitVec 32) List!13391) Bool)

(assert (=> b!706896 (= res!470872 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706897 () Bool)

(declare-fun res!470876 () Bool)

(assert (=> b!706897 (=> (not res!470876) (not e!397941))))

(assert (=> b!706897 (= res!470876 (not (contains!3934 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706898 () Bool)

(declare-fun res!470871 () Bool)

(assert (=> b!706898 (=> (not res!470871) (not e!397941))))

(declare-fun subseq!378 (List!13391 List!13391) Bool)

(assert (=> b!706898 (= res!470871 (subseq!378 acc!652 newAcc!49))))

(assert (= (and start!62654 res!470879) b!706888))

(assert (= (and b!706888 res!470875) b!706891))

(assert (= (and b!706891 res!470881) b!706897))

(assert (= (and b!706897 res!470876) b!706890))

(assert (= (and b!706890 res!470870) b!706889))

(assert (= (and b!706889 res!470874) b!706894))

(assert (= (and b!706894 res!470877) b!706895))

(assert (= (and b!706895 res!470880) b!706896))

(assert (= (and b!706896 res!470872) b!706898))

(assert (= (and b!706898 res!470871) b!706892))

(assert (= (and b!706892 res!470878) b!706887))

(assert (= (and b!706887 res!470873) b!706886))

(assert (= (and b!706886 res!470882) b!706893))

(declare-fun m!664651 () Bool)

(assert (=> b!706898 m!664651))

(declare-fun m!664653 () Bool)

(assert (=> b!706888 m!664653))

(declare-fun m!664655 () Bool)

(assert (=> b!706886 m!664655))

(declare-fun m!664657 () Bool)

(assert (=> start!62654 m!664657))

(declare-fun m!664659 () Bool)

(assert (=> b!706894 m!664659))

(declare-fun m!664661 () Bool)

(assert (=> b!706895 m!664661))

(declare-fun m!664663 () Bool)

(assert (=> b!706890 m!664663))

(declare-fun m!664665 () Bool)

(assert (=> b!706896 m!664665))

(declare-fun m!664667 () Bool)

(assert (=> b!706891 m!664667))

(declare-fun m!664669 () Bool)

(assert (=> b!706897 m!664669))

(declare-fun m!664671 () Bool)

(assert (=> b!706892 m!664671))

(declare-fun m!664673 () Bool)

(assert (=> b!706889 m!664673))

(declare-fun m!664675 () Bool)

(assert (=> b!706887 m!664675))

(declare-fun m!664677 () Bool)

(assert (=> b!706893 m!664677))

(check-sat (not b!706890) (not b!706891) (not b!706887) (not b!706895) (not b!706888) (not b!706894) (not b!706892) (not b!706889) (not b!706893) (not b!706886) (not b!706896) (not start!62654) (not b!706898) (not b!706897))
(check-sat)
