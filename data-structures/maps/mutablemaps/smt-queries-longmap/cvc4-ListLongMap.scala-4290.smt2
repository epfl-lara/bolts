; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59788 () Bool)

(assert start!59788)

(declare-fun b!660040 () Bool)

(declare-fun res!428280 () Bool)

(declare-fun e!379295 () Bool)

(assert (=> b!660040 (=> (not res!428280) (not e!379295))))

(declare-datatypes ((List!12678 0))(
  ( (Nil!12675) (Cons!12674 (h!13719 (_ BitVec 64)) (t!18914 List!12678)) )
))
(declare-fun acc!681 () List!12678)

(declare-fun noDuplicate!468 (List!12678) Bool)

(assert (=> b!660040 (= res!428280 (noDuplicate!468 acc!681))))

(declare-fun b!660041 () Bool)

(declare-fun e!379297 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3221 (List!12678 (_ BitVec 64)) Bool)

(assert (=> b!660041 (= e!379297 (not (contains!3221 acc!681 k!2843)))))

(declare-fun b!660042 () Bool)

(declare-fun e!379296 () Bool)

(assert (=> b!660042 (= e!379296 e!379297)))

(declare-fun res!428284 () Bool)

(assert (=> b!660042 (=> (not res!428284) (not e!379297))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660042 (= res!428284 (bvsle from!3004 i!1382))))

(declare-fun b!660043 () Bool)

(declare-fun e!379294 () Bool)

(assert (=> b!660043 (= e!379294 (contains!3221 acc!681 k!2843))))

(declare-fun res!428279 () Bool)

(assert (=> start!59788 (=> (not res!428279) (not e!379295))))

(declare-datatypes ((array!38791 0))(
  ( (array!38792 (arr!18584 (Array (_ BitVec 32) (_ BitVec 64))) (size!18948 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38791)

(assert (=> start!59788 (= res!428279 (and (bvslt (size!18948 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18948 a!3626))))))

(assert (=> start!59788 e!379295))

(assert (=> start!59788 true))

(declare-fun array_inv!14358 (array!38791) Bool)

(assert (=> start!59788 (array_inv!14358 a!3626)))

(declare-fun b!660044 () Bool)

(assert (=> b!660044 (= e!379295 false)))

(declare-fun lt!308703 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38791 (_ BitVec 32) List!12678) Bool)

(assert (=> b!660044 (= lt!308703 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12675))))

(declare-fun b!660045 () Bool)

(declare-fun res!428278 () Bool)

(assert (=> b!660045 (=> (not res!428278) (not e!379295))))

(assert (=> b!660045 (= res!428278 (not (contains!3221 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660046 () Bool)

(declare-fun res!428281 () Bool)

(assert (=> b!660046 (=> (not res!428281) (not e!379295))))

(assert (=> b!660046 (= res!428281 e!379296)))

(declare-fun res!428285 () Bool)

(assert (=> b!660046 (=> res!428285 e!379296)))

(assert (=> b!660046 (= res!428285 e!379294)))

(declare-fun res!428282 () Bool)

(assert (=> b!660046 (=> (not res!428282) (not e!379294))))

(assert (=> b!660046 (= res!428282 (bvsgt from!3004 i!1382))))

(declare-fun b!660047 () Bool)

(declare-fun res!428283 () Bool)

(assert (=> b!660047 (=> (not res!428283) (not e!379295))))

(assert (=> b!660047 (= res!428283 (not (contains!3221 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!59788 res!428279) b!660040))

(assert (= (and b!660040 res!428280) b!660047))

(assert (= (and b!660047 res!428283) b!660045))

(assert (= (and b!660045 res!428278) b!660046))

(assert (= (and b!660046 res!428282) b!660043))

(assert (= (and b!660046 (not res!428285)) b!660042))

(assert (= (and b!660042 res!428284) b!660041))

(assert (= (and b!660046 res!428281) b!660044))

(declare-fun m!632883 () Bool)

(assert (=> b!660043 m!632883))

(assert (=> b!660041 m!632883))

(declare-fun m!632885 () Bool)

(assert (=> start!59788 m!632885))

(declare-fun m!632887 () Bool)

(assert (=> b!660047 m!632887))

(declare-fun m!632889 () Bool)

(assert (=> b!660045 m!632889))

(declare-fun m!632891 () Bool)

(assert (=> b!660040 m!632891))

(declare-fun m!632893 () Bool)

(assert (=> b!660044 m!632893))

(push 1)

(assert (not b!660043))

(assert (not start!59788))

(assert (not b!660044))

(assert (not b!660045))

(assert (not b!660041))

(assert (not b!660040))

(assert (not b!660047))

(check-sat)

