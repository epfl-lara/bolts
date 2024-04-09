; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59794 () Bool)

(assert start!59794)

(declare-fun b!660112 () Bool)

(declare-fun e!379342 () Bool)

(declare-datatypes ((List!12681 0))(
  ( (Nil!12678) (Cons!12677 (h!13722 (_ BitVec 64)) (t!18917 List!12681)) )
))
(declare-fun acc!681 () List!12681)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3224 (List!12681 (_ BitVec 64)) Bool)

(assert (=> b!660112 (= e!379342 (contains!3224 acc!681 k!2843))))

(declare-fun b!660113 () Bool)

(declare-fun e!379340 () Bool)

(declare-fun e!379341 () Bool)

(assert (=> b!660113 (= e!379340 e!379341)))

(declare-fun res!428355 () Bool)

(assert (=> b!660113 (=> (not res!428355) (not e!379341))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660113 (= res!428355 (bvsle from!3004 i!1382))))

(declare-fun b!660114 () Bool)

(assert (=> b!660114 (= e!379341 (not (contains!3224 acc!681 k!2843)))))

(declare-fun b!660115 () Bool)

(declare-fun res!428353 () Bool)

(declare-fun e!379339 () Bool)

(assert (=> b!660115 (=> (not res!428353) (not e!379339))))

(declare-fun noDuplicate!471 (List!12681) Bool)

(assert (=> b!660115 (= res!428353 (noDuplicate!471 acc!681))))

(declare-fun res!428354 () Bool)

(assert (=> start!59794 (=> (not res!428354) (not e!379339))))

(declare-datatypes ((array!38797 0))(
  ( (array!38798 (arr!18587 (Array (_ BitVec 32) (_ BitVec 64))) (size!18951 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38797)

(assert (=> start!59794 (= res!428354 (and (bvslt (size!18951 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18951 a!3626))))))

(assert (=> start!59794 e!379339))

(assert (=> start!59794 true))

(declare-fun array_inv!14361 (array!38797) Bool)

(assert (=> start!59794 (array_inv!14361 a!3626)))

(declare-fun b!660116 () Bool)

(assert (=> b!660116 (= e!379339 false)))

(declare-fun lt!308712 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38797 (_ BitVec 32) List!12681) Bool)

(assert (=> b!660116 (= lt!308712 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12678))))

(declare-fun b!660117 () Bool)

(declare-fun res!428357 () Bool)

(assert (=> b!660117 (=> (not res!428357) (not e!379339))))

(assert (=> b!660117 (= res!428357 (not (contains!3224 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660118 () Bool)

(declare-fun res!428356 () Bool)

(assert (=> b!660118 (=> (not res!428356) (not e!379339))))

(assert (=> b!660118 (= res!428356 (not (contains!3224 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660119 () Bool)

(declare-fun res!428350 () Bool)

(assert (=> b!660119 (=> (not res!428350) (not e!379339))))

(assert (=> b!660119 (= res!428350 e!379340)))

(declare-fun res!428352 () Bool)

(assert (=> b!660119 (=> res!428352 e!379340)))

(assert (=> b!660119 (= res!428352 e!379342)))

(declare-fun res!428351 () Bool)

(assert (=> b!660119 (=> (not res!428351) (not e!379342))))

(assert (=> b!660119 (= res!428351 (bvsgt from!3004 i!1382))))

(assert (= (and start!59794 res!428354) b!660115))

(assert (= (and b!660115 res!428353) b!660118))

(assert (= (and b!660118 res!428356) b!660117))

(assert (= (and b!660117 res!428357) b!660119))

(assert (= (and b!660119 res!428351) b!660112))

(assert (= (and b!660119 (not res!428352)) b!660113))

(assert (= (and b!660113 res!428355) b!660114))

(assert (= (and b!660119 res!428350) b!660116))

(declare-fun m!632919 () Bool)

(assert (=> start!59794 m!632919))

(declare-fun m!632921 () Bool)

(assert (=> b!660116 m!632921))

(declare-fun m!632923 () Bool)

(assert (=> b!660112 m!632923))

(declare-fun m!632925 () Bool)

(assert (=> b!660115 m!632925))

(assert (=> b!660114 m!632923))

(declare-fun m!632927 () Bool)

(assert (=> b!660117 m!632927))

(declare-fun m!632929 () Bool)

(assert (=> b!660118 m!632929))

(push 1)

(assert (not b!660114))

(assert (not b!660118))

(assert (not b!660116))

(assert (not start!59794))

(assert (not b!660117))

(assert (not b!660115))

(assert (not b!660112))

(check-sat)

