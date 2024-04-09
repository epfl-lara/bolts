; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59774 () Bool)

(assert start!59774)

(declare-fun b!659868 () Bool)

(declare-fun res!428106 () Bool)

(declare-fun e!379188 () Bool)

(assert (=> b!659868 (=> (not res!428106) (not e!379188))))

(declare-datatypes ((List!12671 0))(
  ( (Nil!12668) (Cons!12667 (h!13712 (_ BitVec 64)) (t!18907 List!12671)) )
))
(declare-fun acc!681 () List!12671)

(declare-fun noDuplicate!461 (List!12671) Bool)

(assert (=> b!659868 (= res!428106 (noDuplicate!461 acc!681))))

(declare-fun b!659869 () Bool)

(declare-fun res!428110 () Bool)

(assert (=> b!659869 (=> (not res!428110) (not e!379188))))

(declare-datatypes ((array!38777 0))(
  ( (array!38778 (arr!18577 (Array (_ BitVec 32) (_ BitVec 64))) (size!18941 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38777)

(declare-fun arrayNoDuplicates!0 (array!38777 (_ BitVec 32) List!12671) Bool)

(assert (=> b!659869 (= res!428110 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12668))))

(declare-fun b!659870 () Bool)

(declare-fun res!428112 () Bool)

(assert (=> b!659870 (=> (not res!428112) (not e!379188))))

(declare-fun contains!3214 (List!12671 (_ BitVec 64)) Bool)

(assert (=> b!659870 (= res!428112 (not (contains!3214 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!428107 () Bool)

(assert (=> start!59774 (=> (not res!428107) (not e!379188))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59774 (= res!428107 (and (bvslt (size!18941 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18941 a!3626))))))

(assert (=> start!59774 e!379188))

(assert (=> start!59774 true))

(declare-fun array_inv!14351 (array!38777) Bool)

(assert (=> start!59774 (array_inv!14351 a!3626)))

(declare-fun b!659871 () Bool)

(declare-fun res!428108 () Bool)

(assert (=> b!659871 (=> (not res!428108) (not e!379188))))

(assert (=> b!659871 (= res!428108 (not (contains!3214 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659872 () Bool)

(declare-fun e!379191 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!659872 (= e!379191 (not (contains!3214 acc!681 k0!2843)))))

(declare-fun b!659873 () Bool)

(declare-fun e!379190 () Bool)

(assert (=> b!659873 (= e!379190 (contains!3214 acc!681 k0!2843))))

(declare-fun b!659874 () Bool)

(declare-fun e!379189 () Bool)

(assert (=> b!659874 (= e!379189 e!379191)))

(declare-fun res!428111 () Bool)

(assert (=> b!659874 (=> (not res!428111) (not e!379191))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659874 (= res!428111 (bvsle from!3004 i!1382))))

(declare-fun b!659875 () Bool)

(assert (=> b!659875 (= e!379188 (bvsgt from!3004 (size!18941 a!3626)))))

(declare-fun b!659876 () Bool)

(declare-fun res!428109 () Bool)

(assert (=> b!659876 (=> (not res!428109) (not e!379188))))

(assert (=> b!659876 (= res!428109 e!379189)))

(declare-fun res!428114 () Bool)

(assert (=> b!659876 (=> res!428114 e!379189)))

(assert (=> b!659876 (= res!428114 e!379190)))

(declare-fun res!428113 () Bool)

(assert (=> b!659876 (=> (not res!428113) (not e!379190))))

(assert (=> b!659876 (= res!428113 (bvsgt from!3004 i!1382))))

(assert (= (and start!59774 res!428107) b!659868))

(assert (= (and b!659868 res!428106) b!659871))

(assert (= (and b!659871 res!428108) b!659870))

(assert (= (and b!659870 res!428112) b!659876))

(assert (= (and b!659876 res!428113) b!659873))

(assert (= (and b!659876 (not res!428114)) b!659874))

(assert (= (and b!659874 res!428111) b!659872))

(assert (= (and b!659876 res!428109) b!659869))

(assert (= (and b!659869 res!428110) b!659875))

(declare-fun m!632799 () Bool)

(assert (=> b!659869 m!632799))

(declare-fun m!632801 () Bool)

(assert (=> b!659873 m!632801))

(declare-fun m!632803 () Bool)

(assert (=> start!59774 m!632803))

(assert (=> b!659872 m!632801))

(declare-fun m!632805 () Bool)

(assert (=> b!659871 m!632805))

(declare-fun m!632807 () Bool)

(assert (=> b!659870 m!632807))

(declare-fun m!632809 () Bool)

(assert (=> b!659868 m!632809))

(check-sat (not b!659868) (not start!59774) (not b!659871) (not b!659872) (not b!659869) (not b!659873) (not b!659870))
(check-sat)
