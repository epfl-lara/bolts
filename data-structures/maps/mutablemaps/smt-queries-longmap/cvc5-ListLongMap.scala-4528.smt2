; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62652 () Bool)

(assert start!62652)

(declare-fun b!706847 () Bool)

(declare-fun e!397935 () Bool)

(assert (=> b!706847 (= e!397935 false)))

(declare-fun lt!317931 () Bool)

(declare-datatypes ((List!13390 0))(
  ( (Nil!13387) (Cons!13386 (h!14431 (_ BitVec 64)) (t!19680 List!13390)) )
))
(declare-fun newAcc!49 () List!13390)

(declare-fun contains!3933 (List!13390 (_ BitVec 64)) Bool)

(assert (=> b!706847 (= lt!317931 (contains!3933 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!706849 () Bool)

(declare-fun res!470841 () Bool)

(assert (=> b!706849 (=> (not res!470841) (not e!397935))))

(declare-fun acc!652 () List!13390)

(declare-fun subseq!377 (List!13390 List!13390) Bool)

(assert (=> b!706849 (= res!470841 (subseq!377 acc!652 newAcc!49))))

(declare-fun b!706850 () Bool)

(declare-fun res!470833 () Bool)

(assert (=> b!706850 (=> (not res!470833) (not e!397935))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun -!342 (List!13390 (_ BitVec 64)) List!13390)

(assert (=> b!706850 (= res!470833 (= (-!342 newAcc!49 k!2824) acc!652))))

(declare-fun b!706851 () Bool)

(declare-fun res!470842 () Bool)

(assert (=> b!706851 (=> (not res!470842) (not e!397935))))

(declare-fun noDuplicate!1180 (List!13390) Bool)

(assert (=> b!706851 (= res!470842 (noDuplicate!1180 newAcc!49))))

(declare-fun b!706852 () Bool)

(declare-fun res!470839 () Bool)

(assert (=> b!706852 (=> (not res!470839) (not e!397935))))

(assert (=> b!706852 (= res!470839 (not (contains!3933 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706853 () Bool)

(declare-fun res!470834 () Bool)

(assert (=> b!706853 (=> (not res!470834) (not e!397935))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40287 0))(
  ( (array!40288 (arr!19296 (Array (_ BitVec 32) (_ BitVec 64))) (size!19679 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40287)

(declare-fun arrayContainsKey!0 (array!40287 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!706853 (= res!470834 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!706854 () Bool)

(declare-fun res!470831 () Bool)

(assert (=> b!706854 (=> (not res!470831) (not e!397935))))

(assert (=> b!706854 (= res!470831 (not (contains!3933 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!706855 () Bool)

(declare-fun res!470837 () Bool)

(assert (=> b!706855 (=> (not res!470837) (not e!397935))))

(assert (=> b!706855 (= res!470837 (noDuplicate!1180 acc!652))))

(declare-fun b!706848 () Bool)

(declare-fun res!470840 () Bool)

(assert (=> b!706848 (=> (not res!470840) (not e!397935))))

(assert (=> b!706848 (= res!470840 (not (contains!3933 acc!652 k!2824)))))

(declare-fun res!470832 () Bool)

(assert (=> start!62652 (=> (not res!470832) (not e!397935))))

(assert (=> start!62652 (= res!470832 (and (bvslt (size!19679 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19679 a!3591))))))

(assert (=> start!62652 e!397935))

(assert (=> start!62652 true))

(declare-fun array_inv!15070 (array!40287) Bool)

(assert (=> start!62652 (array_inv!15070 a!3591)))

(declare-fun b!706856 () Bool)

(declare-fun res!470835 () Bool)

(assert (=> b!706856 (=> (not res!470835) (not e!397935))))

(assert (=> b!706856 (= res!470835 (contains!3933 newAcc!49 k!2824))))

(declare-fun b!706857 () Bool)

(declare-fun res!470843 () Bool)

(assert (=> b!706857 (=> (not res!470843) (not e!397935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!706857 (= res!470843 (validKeyInArray!0 k!2824))))

(declare-fun b!706858 () Bool)

(declare-fun res!470838 () Bool)

(assert (=> b!706858 (=> (not res!470838) (not e!397935))))

(declare-fun arrayNoDuplicates!0 (array!40287 (_ BitVec 32) List!13390) Bool)

(assert (=> b!706858 (= res!470838 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!706859 () Bool)

(declare-fun res!470836 () Bool)

(assert (=> b!706859 (=> (not res!470836) (not e!397935))))

(assert (=> b!706859 (= res!470836 (not (contains!3933 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62652 res!470832) b!706855))

(assert (= (and b!706855 res!470837) b!706851))

(assert (= (and b!706851 res!470842) b!706859))

(assert (= (and b!706859 res!470836) b!706852))

(assert (= (and b!706852 res!470839) b!706853))

(assert (= (and b!706853 res!470834) b!706848))

(assert (= (and b!706848 res!470840) b!706857))

(assert (= (and b!706857 res!470843) b!706858))

(assert (= (and b!706858 res!470838) b!706849))

(assert (= (and b!706849 res!470841) b!706856))

(assert (= (and b!706856 res!470835) b!706850))

(assert (= (and b!706850 res!470833) b!706854))

(assert (= (and b!706854 res!470831) b!706847))

(declare-fun m!664623 () Bool)

(assert (=> b!706859 m!664623))

(declare-fun m!664625 () Bool)

(assert (=> b!706858 m!664625))

(declare-fun m!664627 () Bool)

(assert (=> b!706853 m!664627))

(declare-fun m!664629 () Bool)

(assert (=> b!706849 m!664629))

(declare-fun m!664631 () Bool)

(assert (=> b!706857 m!664631))

(declare-fun m!664633 () Bool)

(assert (=> b!706854 m!664633))

(declare-fun m!664635 () Bool)

(assert (=> b!706855 m!664635))

(declare-fun m!664637 () Bool)

(assert (=> b!706851 m!664637))

(declare-fun m!664639 () Bool)

(assert (=> b!706852 m!664639))

(declare-fun m!664641 () Bool)

(assert (=> b!706856 m!664641))

(declare-fun m!664643 () Bool)

(assert (=> start!62652 m!664643))

(declare-fun m!664645 () Bool)

(assert (=> b!706850 m!664645))

(declare-fun m!664647 () Bool)

(assert (=> b!706848 m!664647))

(declare-fun m!664649 () Bool)

(assert (=> b!706847 m!664649))

(push 1)

(assert (not b!706854))

(assert (not b!706858))

(assert (not start!62652))

(assert (not b!706851))

(assert (not b!706847))

(assert (not b!706850))

(assert (not b!706849))

(assert (not b!706856))

(assert (not b!706855))

(assert (not b!706857))

(assert (not b!706859))

(assert (not b!706848))

(assert (not b!706852))

(assert (not b!706853))

(check-sat)

