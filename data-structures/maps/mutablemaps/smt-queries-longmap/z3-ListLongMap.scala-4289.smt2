; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59780 () Bool)

(assert start!59780)

(declare-fun b!659944 () Bool)

(declare-fun e!379233 () Bool)

(declare-datatypes ((List!12674 0))(
  ( (Nil!12671) (Cons!12670 (h!13715 (_ BitVec 64)) (t!18910 List!12674)) )
))
(declare-fun acc!681 () List!12674)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3217 (List!12674 (_ BitVec 64)) Bool)

(assert (=> b!659944 (= e!379233 (not (contains!3217 acc!681 k0!2843)))))

(declare-fun b!659945 () Bool)

(declare-fun res!428189 () Bool)

(declare-fun e!379235 () Bool)

(assert (=> b!659945 (=> (not res!428189) (not e!379235))))

(declare-fun noDuplicate!464 (List!12674) Bool)

(assert (=> b!659945 (= res!428189 (noDuplicate!464 acc!681))))

(declare-fun b!659946 () Bool)

(declare-fun res!428183 () Bool)

(assert (=> b!659946 (=> (not res!428183) (not e!379235))))

(declare-fun e!379234 () Bool)

(assert (=> b!659946 (= res!428183 e!379234)))

(declare-fun res!428187 () Bool)

(assert (=> b!659946 (=> res!428187 e!379234)))

(declare-fun e!379236 () Bool)

(assert (=> b!659946 (= res!428187 e!379236)))

(declare-fun res!428185 () Bool)

(assert (=> b!659946 (=> (not res!428185) (not e!379236))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659946 (= res!428185 (bvsgt from!3004 i!1382))))

(declare-fun b!659947 () Bool)

(declare-fun res!428186 () Bool)

(assert (=> b!659947 (=> (not res!428186) (not e!379235))))

(assert (=> b!659947 (= res!428186 (not (contains!3217 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659948 () Bool)

(assert (=> b!659948 (= e!379234 e!379233)))

(declare-fun res!428188 () Bool)

(assert (=> b!659948 (=> (not res!428188) (not e!379233))))

(assert (=> b!659948 (= res!428188 (bvsle from!3004 i!1382))))

(declare-fun res!428182 () Bool)

(assert (=> start!59780 (=> (not res!428182) (not e!379235))))

(declare-datatypes ((array!38783 0))(
  ( (array!38784 (arr!18580 (Array (_ BitVec 32) (_ BitVec 64))) (size!18944 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38783)

(assert (=> start!59780 (= res!428182 (and (bvslt (size!18944 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18944 a!3626))))))

(assert (=> start!59780 e!379235))

(assert (=> start!59780 true))

(declare-fun array_inv!14354 (array!38783) Bool)

(assert (=> start!59780 (array_inv!14354 a!3626)))

(declare-fun b!659949 () Bool)

(assert (=> b!659949 (= e!379236 (contains!3217 acc!681 k0!2843))))

(declare-fun b!659950 () Bool)

(declare-fun res!428184 () Bool)

(assert (=> b!659950 (=> (not res!428184) (not e!379235))))

(assert (=> b!659950 (= res!428184 (not (contains!3217 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659951 () Bool)

(assert (=> b!659951 (= e!379235 false)))

(declare-fun lt!308691 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38783 (_ BitVec 32) List!12674) Bool)

(assert (=> b!659951 (= lt!308691 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12671))))

(assert (= (and start!59780 res!428182) b!659945))

(assert (= (and b!659945 res!428189) b!659947))

(assert (= (and b!659947 res!428186) b!659950))

(assert (= (and b!659950 res!428184) b!659946))

(assert (= (and b!659946 res!428185) b!659949))

(assert (= (and b!659946 (not res!428187)) b!659948))

(assert (= (and b!659948 res!428188) b!659944))

(assert (= (and b!659946 res!428183) b!659951))

(declare-fun m!632835 () Bool)

(assert (=> b!659951 m!632835))

(declare-fun m!632837 () Bool)

(assert (=> start!59780 m!632837))

(declare-fun m!632839 () Bool)

(assert (=> b!659944 m!632839))

(declare-fun m!632841 () Bool)

(assert (=> b!659950 m!632841))

(declare-fun m!632843 () Bool)

(assert (=> b!659947 m!632843))

(assert (=> b!659949 m!632839))

(declare-fun m!632845 () Bool)

(assert (=> b!659945 m!632845))

(check-sat (not b!659945) (not b!659947) (not b!659944) (not b!659949) (not b!659951) (not start!59780) (not b!659950))
