; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60368 () Bool)

(assert start!60368)

(declare-fun b!677895 () Bool)

(declare-fun e!386354 () Bool)

(declare-datatypes ((List!12968 0))(
  ( (Nil!12965) (Cons!12964 (h!14009 (_ BitVec 64)) (t!19204 List!12968)) )
))
(declare-fun acc!681 () List!12968)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3511 (List!12968 (_ BitVec 64)) Bool)

(assert (=> b!677895 (= e!386354 (contains!3511 acc!681 k0!2843))))

(declare-fun b!677896 () Bool)

(declare-fun res!444502 () Bool)

(declare-fun e!386355 () Bool)

(assert (=> b!677896 (=> (not res!444502) (not e!386355))))

(assert (=> b!677896 (= res!444502 (not (contains!3511 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677897 () Bool)

(declare-fun res!444498 () Bool)

(assert (=> b!677897 (=> (not res!444498) (not e!386355))))

(declare-datatypes ((array!39371 0))(
  ( (array!39372 (arr!18874 (Array (_ BitVec 32) (_ BitVec 64))) (size!19238 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39371)

(declare-fun arrayNoDuplicates!0 (array!39371 (_ BitVec 32) List!12968) Bool)

(assert (=> b!677897 (= res!444498 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12965))))

(declare-fun b!677898 () Bool)

(declare-fun e!386353 () Bool)

(declare-fun e!386352 () Bool)

(assert (=> b!677898 (= e!386353 e!386352)))

(declare-fun res!444495 () Bool)

(assert (=> b!677898 (=> (not res!444495) (not e!386352))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677898 (= res!444495 (bvsle from!3004 i!1382))))

(declare-fun b!677899 () Bool)

(assert (=> b!677899 (= e!386355 false)))

(declare-fun lt!312804 () Bool)

(assert (=> b!677899 (= lt!312804 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!677900 () Bool)

(declare-fun res!444496 () Bool)

(assert (=> b!677900 (=> (not res!444496) (not e!386355))))

(assert (=> b!677900 (= res!444496 (not (contains!3511 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677901 () Bool)

(assert (=> b!677901 (= e!386352 (not (contains!3511 acc!681 k0!2843)))))

(declare-fun b!677902 () Bool)

(declare-fun res!444503 () Bool)

(assert (=> b!677902 (=> (not res!444503) (not e!386355))))

(declare-fun noDuplicate!758 (List!12968) Bool)

(assert (=> b!677902 (= res!444503 (noDuplicate!758 acc!681))))

(declare-fun b!677903 () Bool)

(declare-fun res!444499 () Bool)

(assert (=> b!677903 (=> (not res!444499) (not e!386355))))

(assert (=> b!677903 (= res!444499 e!386353)))

(declare-fun res!444500 () Bool)

(assert (=> b!677903 (=> res!444500 e!386353)))

(assert (=> b!677903 (= res!444500 e!386354)))

(declare-fun res!444501 () Bool)

(assert (=> b!677903 (=> (not res!444501) (not e!386354))))

(assert (=> b!677903 (= res!444501 (bvsgt from!3004 i!1382))))

(declare-fun res!444497 () Bool)

(assert (=> start!60368 (=> (not res!444497) (not e!386355))))

(assert (=> start!60368 (= res!444497 (and (bvslt (size!19238 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19238 a!3626))))))

(assert (=> start!60368 e!386355))

(assert (=> start!60368 true))

(declare-fun array_inv!14648 (array!39371) Bool)

(assert (=> start!60368 (array_inv!14648 a!3626)))

(assert (= (and start!60368 res!444497) b!677902))

(assert (= (and b!677902 res!444503) b!677900))

(assert (= (and b!677900 res!444496) b!677896))

(assert (= (and b!677896 res!444502) b!677903))

(assert (= (and b!677903 res!444501) b!677895))

(assert (= (and b!677903 (not res!444500)) b!677898))

(assert (= (and b!677898 res!444495) b!677901))

(assert (= (and b!677903 res!444499) b!677897))

(assert (= (and b!677897 res!444498) b!677899))

(declare-fun m!643913 () Bool)

(assert (=> b!677895 m!643913))

(declare-fun m!643915 () Bool)

(assert (=> b!677899 m!643915))

(declare-fun m!643917 () Bool)

(assert (=> start!60368 m!643917))

(declare-fun m!643919 () Bool)

(assert (=> b!677897 m!643919))

(declare-fun m!643921 () Bool)

(assert (=> b!677900 m!643921))

(declare-fun m!643923 () Bool)

(assert (=> b!677896 m!643923))

(assert (=> b!677901 m!643913))

(declare-fun m!643925 () Bool)

(assert (=> b!677902 m!643925))

(check-sat (not b!677897) (not b!677902) (not b!677895) (not b!677896) (not b!677899) (not b!677901) (not start!60368) (not b!677900))
(check-sat)
