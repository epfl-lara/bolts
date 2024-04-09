; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59798 () Bool)

(assert start!59798)

(declare-fun b!660165 () Bool)

(declare-fun res!428406 () Bool)

(declare-fun e!379368 () Bool)

(assert (=> b!660165 (=> (not res!428406) (not e!379368))))

(declare-datatypes ((array!38801 0))(
  ( (array!38802 (arr!18589 (Array (_ BitVec 32) (_ BitVec 64))) (size!18953 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38801)

(declare-datatypes ((List!12683 0))(
  ( (Nil!12680) (Cons!12679 (h!13724 (_ BitVec 64)) (t!18919 List!12683)) )
))
(declare-fun arrayNoDuplicates!0 (array!38801 (_ BitVec 32) List!12683) Bool)

(assert (=> b!660165 (= res!428406 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12680))))

(declare-fun b!660166 () Bool)

(declare-fun res!428409 () Bool)

(assert (=> b!660166 (=> (not res!428409) (not e!379368))))

(declare-fun acc!681 () List!12683)

(declare-fun contains!3226 (List!12683 (_ BitVec 64)) Bool)

(assert (=> b!660166 (= res!428409 (not (contains!3226 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660167 () Bool)

(assert (=> b!660167 (= e!379368 false)))

(declare-fun lt!308718 () Bool)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!660167 (= lt!308718 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660168 () Bool)

(declare-fun res!428411 () Bool)

(assert (=> b!660168 (=> (not res!428411) (not e!379368))))

(assert (=> b!660168 (= res!428411 (not (contains!3226 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660169 () Bool)

(declare-fun e!379369 () Bool)

(declare-fun e!379372 () Bool)

(assert (=> b!660169 (= e!379369 e!379372)))

(declare-fun res!428404 () Bool)

(assert (=> b!660169 (=> (not res!428404) (not e!379372))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660169 (= res!428404 (bvsle from!3004 i!1382))))

(declare-fun b!660170 () Bool)

(declare-fun res!428410 () Bool)

(assert (=> b!660170 (=> (not res!428410) (not e!379368))))

(assert (=> b!660170 (= res!428410 e!379369)))

(declare-fun res!428405 () Bool)

(assert (=> b!660170 (=> res!428405 e!379369)))

(declare-fun e!379370 () Bool)

(assert (=> b!660170 (= res!428405 e!379370)))

(declare-fun res!428408 () Bool)

(assert (=> b!660170 (=> (not res!428408) (not e!379370))))

(assert (=> b!660170 (= res!428408 (bvsgt from!3004 i!1382))))

(declare-fun b!660171 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!660171 (= e!379372 (not (contains!3226 acc!681 k0!2843)))))

(declare-fun res!428407 () Bool)

(assert (=> start!59798 (=> (not res!428407) (not e!379368))))

(assert (=> start!59798 (= res!428407 (and (bvslt (size!18953 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18953 a!3626))))))

(assert (=> start!59798 e!379368))

(assert (=> start!59798 true))

(declare-fun array_inv!14363 (array!38801) Bool)

(assert (=> start!59798 (array_inv!14363 a!3626)))

(declare-fun b!660172 () Bool)

(declare-fun res!428403 () Bool)

(assert (=> b!660172 (=> (not res!428403) (not e!379368))))

(declare-fun noDuplicate!473 (List!12683) Bool)

(assert (=> b!660172 (= res!428403 (noDuplicate!473 acc!681))))

(declare-fun b!660173 () Bool)

(assert (=> b!660173 (= e!379370 (contains!3226 acc!681 k0!2843))))

(assert (= (and start!59798 res!428407) b!660172))

(assert (= (and b!660172 res!428403) b!660168))

(assert (= (and b!660168 res!428411) b!660166))

(assert (= (and b!660166 res!428409) b!660170))

(assert (= (and b!660170 res!428408) b!660173))

(assert (= (and b!660170 (not res!428405)) b!660169))

(assert (= (and b!660169 res!428404) b!660171))

(assert (= (and b!660170 res!428410) b!660165))

(assert (= (and b!660165 res!428406) b!660167))

(declare-fun m!632945 () Bool)

(assert (=> b!660172 m!632945))

(declare-fun m!632947 () Bool)

(assert (=> b!660165 m!632947))

(declare-fun m!632949 () Bool)

(assert (=> start!59798 m!632949))

(declare-fun m!632951 () Bool)

(assert (=> b!660168 m!632951))

(declare-fun m!632953 () Bool)

(assert (=> b!660171 m!632953))

(declare-fun m!632955 () Bool)

(assert (=> b!660167 m!632955))

(assert (=> b!660173 m!632953))

(declare-fun m!632957 () Bool)

(assert (=> b!660166 m!632957))

(check-sat (not b!660173) (not b!660168) (not b!660172) (not start!59798) (not b!660167) (not b!660166) (not b!660171) (not b!660165))
(check-sat)
