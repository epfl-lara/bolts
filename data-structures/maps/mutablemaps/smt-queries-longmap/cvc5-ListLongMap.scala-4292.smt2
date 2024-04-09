; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59796 () Bool)

(assert start!59796)

(declare-fun b!660138 () Bool)

(declare-fun res!428382 () Bool)

(declare-fun e!379357 () Bool)

(assert (=> b!660138 (=> (not res!428382) (not e!379357))))

(declare-datatypes ((List!12682 0))(
  ( (Nil!12679) (Cons!12678 (h!13723 (_ BitVec 64)) (t!18918 List!12682)) )
))
(declare-fun acc!681 () List!12682)

(declare-fun noDuplicate!472 (List!12682) Bool)

(assert (=> b!660138 (= res!428382 (noDuplicate!472 acc!681))))

(declare-fun b!660139 () Bool)

(declare-fun e!379355 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3225 (List!12682 (_ BitVec 64)) Bool)

(assert (=> b!660139 (= e!379355 (contains!3225 acc!681 k!2843))))

(declare-fun b!660140 () Bool)

(declare-fun res!428380 () Bool)

(assert (=> b!660140 (=> (not res!428380) (not e!379357))))

(assert (=> b!660140 (= res!428380 (not (contains!3225 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660141 () Bool)

(assert (=> b!660141 (= e!379357 false)))

(declare-fun lt!308715 () Bool)

(declare-datatypes ((array!38799 0))(
  ( (array!38800 (arr!18588 (Array (_ BitVec 32) (_ BitVec 64))) (size!18952 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38799)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!38799 (_ BitVec 32) List!12682) Bool)

(assert (=> b!660141 (= lt!308715 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!428381 () Bool)

(assert (=> start!59796 (=> (not res!428381) (not e!379357))))

(assert (=> start!59796 (= res!428381 (and (bvslt (size!18952 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18952 a!3626))))))

(assert (=> start!59796 e!379357))

(assert (=> start!59796 true))

(declare-fun array_inv!14362 (array!38799) Bool)

(assert (=> start!59796 (array_inv!14362 a!3626)))

(declare-fun b!660142 () Bool)

(declare-fun e!379353 () Bool)

(declare-fun e!379354 () Bool)

(assert (=> b!660142 (= e!379353 e!379354)))

(declare-fun res!428384 () Bool)

(assert (=> b!660142 (=> (not res!428384) (not e!379354))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660142 (= res!428384 (bvsle from!3004 i!1382))))

(declare-fun b!660143 () Bool)

(assert (=> b!660143 (= e!379354 (not (contains!3225 acc!681 k!2843)))))

(declare-fun b!660144 () Bool)

(declare-fun res!428383 () Bool)

(assert (=> b!660144 (=> (not res!428383) (not e!379357))))

(assert (=> b!660144 (= res!428383 e!379353)))

(declare-fun res!428377 () Bool)

(assert (=> b!660144 (=> res!428377 e!379353)))

(assert (=> b!660144 (= res!428377 e!379355)))

(declare-fun res!428378 () Bool)

(assert (=> b!660144 (=> (not res!428378) (not e!379355))))

(assert (=> b!660144 (= res!428378 (bvsgt from!3004 i!1382))))

(declare-fun b!660145 () Bool)

(declare-fun res!428379 () Bool)

(assert (=> b!660145 (=> (not res!428379) (not e!379357))))

(assert (=> b!660145 (= res!428379 (not (contains!3225 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660146 () Bool)

(declare-fun res!428376 () Bool)

(assert (=> b!660146 (=> (not res!428376) (not e!379357))))

(assert (=> b!660146 (= res!428376 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12679))))

(assert (= (and start!59796 res!428381) b!660138))

(assert (= (and b!660138 res!428382) b!660140))

(assert (= (and b!660140 res!428380) b!660145))

(assert (= (and b!660145 res!428379) b!660144))

(assert (= (and b!660144 res!428378) b!660139))

(assert (= (and b!660144 (not res!428377)) b!660142))

(assert (= (and b!660142 res!428384) b!660143))

(assert (= (and b!660144 res!428383) b!660146))

(assert (= (and b!660146 res!428376) b!660141))

(declare-fun m!632931 () Bool)

(assert (=> b!660143 m!632931))

(declare-fun m!632933 () Bool)

(assert (=> b!660145 m!632933))

(assert (=> b!660139 m!632931))

(declare-fun m!632935 () Bool)

(assert (=> start!59796 m!632935))

(declare-fun m!632937 () Bool)

(assert (=> b!660140 m!632937))

(declare-fun m!632939 () Bool)

(assert (=> b!660138 m!632939))

(declare-fun m!632941 () Bool)

(assert (=> b!660146 m!632941))

(declare-fun m!632943 () Bool)

(assert (=> b!660141 m!632943))

(push 1)

(assert (not b!660138))

(assert (not start!59796))

(assert (not b!660146))

(assert (not b!660139))

(assert (not b!660141))

(assert (not b!660143))

(assert (not b!660145))

(assert (not b!660140))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

