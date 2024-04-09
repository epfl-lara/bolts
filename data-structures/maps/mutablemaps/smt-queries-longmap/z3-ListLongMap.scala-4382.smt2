; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60338 () Bool)

(assert start!60338)

(declare-fun b!677298 () Bool)

(declare-fun e!386091 () Bool)

(declare-fun e!386092 () Bool)

(assert (=> b!677298 (= e!386091 e!386092)))

(declare-fun res!443914 () Bool)

(assert (=> b!677298 (=> (not res!443914) (not e!386092))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!677298 (= res!443914 (bvsle from!3004 i!1382))))

(declare-fun b!677299 () Bool)

(declare-fun e!386088 () Bool)

(declare-datatypes ((List!12953 0))(
  ( (Nil!12950) (Cons!12949 (h!13994 (_ BitVec 64)) (t!19189 List!12953)) )
))
(declare-fun acc!681 () List!12953)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3496 (List!12953 (_ BitVec 64)) Bool)

(assert (=> b!677299 (= e!386088 (not (contains!3496 acc!681 k0!2843)))))

(declare-fun res!443902 () Bool)

(declare-fun e!386095 () Bool)

(assert (=> start!60338 (=> (not res!443902) (not e!386095))))

(declare-datatypes ((array!39341 0))(
  ( (array!39342 (arr!18859 (Array (_ BitVec 32) (_ BitVec 64))) (size!19223 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39341)

(assert (=> start!60338 (= res!443902 (and (bvslt (size!19223 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19223 a!3626))))))

(assert (=> start!60338 e!386095))

(assert (=> start!60338 true))

(declare-fun array_inv!14633 (array!39341) Bool)

(assert (=> start!60338 (array_inv!14633 a!3626)))

(declare-fun b!677300 () Bool)

(declare-fun res!443907 () Bool)

(assert (=> b!677300 (=> (not res!443907) (not e!386095))))

(declare-fun e!386089 () Bool)

(assert (=> b!677300 (= res!443907 e!386089)))

(declare-fun res!443910 () Bool)

(assert (=> b!677300 (=> res!443910 e!386089)))

(declare-fun e!386094 () Bool)

(assert (=> b!677300 (= res!443910 e!386094)))

(declare-fun res!443900 () Bool)

(assert (=> b!677300 (=> (not res!443900) (not e!386094))))

(assert (=> b!677300 (= res!443900 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677301 () Bool)

(declare-fun res!443911 () Bool)

(assert (=> b!677301 (=> (not res!443911) (not e!386095))))

(assert (=> b!677301 (= res!443911 e!386091)))

(declare-fun res!443899 () Bool)

(assert (=> b!677301 (=> res!443899 e!386091)))

(declare-fun e!386090 () Bool)

(assert (=> b!677301 (= res!443899 e!386090)))

(declare-fun res!443898 () Bool)

(assert (=> b!677301 (=> (not res!443898) (not e!386090))))

(assert (=> b!677301 (= res!443898 (bvsgt from!3004 i!1382))))

(declare-fun b!677302 () Bool)

(assert (=> b!677302 (= e!386094 (contains!3496 acc!681 k0!2843))))

(declare-fun b!677303 () Bool)

(declare-fun res!443903 () Bool)

(assert (=> b!677303 (=> (not res!443903) (not e!386095))))

(assert (=> b!677303 (= res!443903 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!677304 () Bool)

(declare-fun res!443901 () Bool)

(assert (=> b!677304 (=> (not res!443901) (not e!386095))))

(assert (=> b!677304 (= res!443901 (not (contains!3496 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677305 () Bool)

(declare-fun res!443917 () Bool)

(assert (=> b!677305 (=> (not res!443917) (not e!386095))))

(assert (=> b!677305 (= res!443917 (not (contains!3496 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!677306 () Bool)

(assert (=> b!677306 (= e!386090 (contains!3496 acc!681 k0!2843))))

(declare-fun b!677307 () Bool)

(declare-fun res!443908 () Bool)

(assert (=> b!677307 (=> (not res!443908) (not e!386095))))

(declare-fun arrayNoDuplicates!0 (array!39341 (_ BitVec 32) List!12953) Bool)

(assert (=> b!677307 (= res!443908 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12950))))

(declare-fun b!677308 () Bool)

(declare-fun res!443918 () Bool)

(assert (=> b!677308 (=> (not res!443918) (not e!386095))))

(declare-fun arrayContainsKey!0 (array!39341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!677308 (= res!443918 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!677309 () Bool)

(declare-fun res!443905 () Bool)

(assert (=> b!677309 (=> (not res!443905) (not e!386095))))

(assert (=> b!677309 (= res!443905 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19223 a!3626))))))

(declare-fun b!677310 () Bool)

(assert (=> b!677310 (= e!386092 (not (contains!3496 acc!681 k0!2843)))))

(declare-fun b!677311 () Bool)

(declare-fun res!443906 () Bool)

(assert (=> b!677311 (=> (not res!443906) (not e!386095))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!677311 (= res!443906 (validKeyInArray!0 k0!2843))))

(declare-fun b!677312 () Bool)

(declare-fun res!443904 () Bool)

(assert (=> b!677312 (=> (not res!443904) (not e!386095))))

(assert (=> b!677312 (= res!443904 (not (validKeyInArray!0 (select (arr!18859 a!3626) from!3004))))))

(declare-fun b!677313 () Bool)

(declare-fun res!443912 () Bool)

(assert (=> b!677313 (=> (not res!443912) (not e!386095))))

(assert (=> b!677313 (= res!443912 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677314 () Bool)

(declare-fun res!443909 () Bool)

(assert (=> b!677314 (=> (not res!443909) (not e!386095))))

(declare-fun noDuplicate!743 (List!12953) Bool)

(assert (=> b!677314 (= res!443909 (noDuplicate!743 acc!681))))

(declare-fun b!677315 () Bool)

(assert (=> b!677315 (= e!386095 (not true))))

(assert (=> b!677315 (arrayNoDuplicates!0 (array!39342 (store (arr!18859 a!3626) i!1382 k0!2843) (size!19223 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-datatypes ((Unit!23754 0))(
  ( (Unit!23755) )
))
(declare-fun lt!312768 () Unit!23754)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39341 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12953) Unit!23754)

(assert (=> b!677315 (= lt!312768 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!677316 () Bool)

(assert (=> b!677316 (= e!386089 e!386088)))

(declare-fun res!443915 () Bool)

(assert (=> b!677316 (=> (not res!443915) (not e!386088))))

(assert (=> b!677316 (= res!443915 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!677317 () Bool)

(declare-fun res!443913 () Bool)

(assert (=> b!677317 (=> (not res!443913) (not e!386095))))

(assert (=> b!677317 (= res!443913 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19223 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!677318 () Bool)

(declare-fun res!443916 () Bool)

(assert (=> b!677318 (=> (not res!443916) (not e!386095))))

(assert (=> b!677318 (= res!443916 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!60338 res!443902) b!677314))

(assert (= (and b!677314 res!443909) b!677304))

(assert (= (and b!677304 res!443901) b!677305))

(assert (= (and b!677305 res!443917) b!677301))

(assert (= (and b!677301 res!443898) b!677306))

(assert (= (and b!677301 (not res!443899)) b!677298))

(assert (= (and b!677298 res!443914) b!677310))

(assert (= (and b!677301 res!443911) b!677307))

(assert (= (and b!677307 res!443908) b!677318))

(assert (= (and b!677318 res!443916) b!677309))

(assert (= (and b!677309 res!443905) b!677311))

(assert (= (and b!677311 res!443906) b!677308))

(assert (= (and b!677308 res!443918) b!677317))

(assert (= (and b!677317 res!443913) b!677312))

(assert (= (and b!677312 res!443904) b!677303))

(assert (= (and b!677303 res!443903) b!677300))

(assert (= (and b!677300 res!443900) b!677302))

(assert (= (and b!677300 (not res!443910)) b!677316))

(assert (= (and b!677316 res!443915) b!677299))

(assert (= (and b!677300 res!443907) b!677313))

(assert (= (and b!677313 res!443912) b!677315))

(declare-fun m!643611 () Bool)

(assert (=> b!677305 m!643611))

(declare-fun m!643613 () Bool)

(assert (=> b!677312 m!643613))

(assert (=> b!677312 m!643613))

(declare-fun m!643615 () Bool)

(assert (=> b!677312 m!643615))

(declare-fun m!643617 () Bool)

(assert (=> b!677306 m!643617))

(declare-fun m!643619 () Bool)

(assert (=> b!677318 m!643619))

(declare-fun m!643621 () Bool)

(assert (=> b!677307 m!643621))

(declare-fun m!643623 () Bool)

(assert (=> b!677315 m!643623))

(declare-fun m!643625 () Bool)

(assert (=> b!677315 m!643625))

(declare-fun m!643627 () Bool)

(assert (=> b!677315 m!643627))

(assert (=> b!677302 m!643617))

(assert (=> b!677299 m!643617))

(declare-fun m!643629 () Bool)

(assert (=> start!60338 m!643629))

(assert (=> b!677310 m!643617))

(declare-fun m!643631 () Bool)

(assert (=> b!677314 m!643631))

(declare-fun m!643633 () Bool)

(assert (=> b!677311 m!643633))

(declare-fun m!643635 () Bool)

(assert (=> b!677308 m!643635))

(declare-fun m!643637 () Bool)

(assert (=> b!677304 m!643637))

(declare-fun m!643639 () Bool)

(assert (=> b!677313 m!643639))

(check-sat (not b!677306) (not b!677302) (not b!677310) (not b!677308) (not b!677311) (not b!677313) (not b!677299) (not start!60338) (not b!677304) (not b!677305) (not b!677318) (not b!677315) (not b!677314) (not b!677307) (not b!677312))
