; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103928 () Bool)

(assert start!103928)

(declare-fun b!1243385 () Bool)

(declare-fun res!829297 () Bool)

(declare-fun e!704921 () Bool)

(assert (=> b!1243385 (=> (not res!829297) (not e!704921))))

(declare-datatypes ((array!79966 0))(
  ( (array!79967 (arr!38572 (Array (_ BitVec 32) (_ BitVec 64))) (size!39109 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79966)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243385 (= res!829297 (validKeyInArray!0 (select (arr!38572 a!3892) from!3270)))))

(declare-fun b!1243386 () Bool)

(declare-fun res!829294 () Bool)

(declare-fun e!704920 () Bool)

(assert (=> b!1243386 (=> (not res!829294) (not e!704920))))

(declare-datatypes ((List!27553 0))(
  ( (Nil!27550) (Cons!27549 (h!28758 (_ BitVec 64)) (t!41029 List!27553)) )
))
(declare-fun lt!562338 () List!27553)

(declare-fun contains!7425 (List!27553 (_ BitVec 64)) Bool)

(assert (=> b!1243386 (= res!829294 (not (contains!7425 lt!562338 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829295 () Bool)

(assert (=> start!103928 (=> (not res!829295) (not e!704921))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> start!103928 (= res!829295 (and (bvslt (size!39109 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39109 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39109 a!3892))))))

(assert (=> start!103928 e!704921))

(declare-fun array_inv!29348 (array!79966) Bool)

(assert (=> start!103928 (array_inv!29348 a!3892)))

(assert (=> start!103928 true))

(declare-fun b!1243387 () Bool)

(declare-fun res!829296 () Bool)

(assert (=> b!1243387 (=> (not res!829296) (not e!704920))))

(assert (=> b!1243387 (= res!829296 (not (contains!7425 Nil!27550 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243388 () Bool)

(declare-fun res!829292 () Bool)

(assert (=> b!1243388 (=> (not res!829292) (not e!704921))))

(assert (=> b!1243388 (= res!829292 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39109 a!3892)) (not (= newFrom!287 (size!39109 a!3892)))))))

(declare-fun b!1243389 () Bool)

(assert (=> b!1243389 (= e!704921 e!704920)))

(declare-fun res!829289 () Bool)

(assert (=> b!1243389 (=> (not res!829289) (not e!704920))))

(assert (=> b!1243389 (= res!829289 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243389 (= lt!562338 (Cons!27549 (select (arr!38572 a!3892) from!3270) Nil!27550))))

(declare-fun b!1243390 () Bool)

(assert (=> b!1243390 (= e!704920 false)))

(declare-fun lt!562339 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79966 (_ BitVec 32) List!27553) Bool)

(assert (=> b!1243390 (= lt!562339 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562338))))

(declare-datatypes ((Unit!41223 0))(
  ( (Unit!41224) )
))
(declare-fun lt!562337 () Unit!41223)

(declare-fun noDuplicateSubseq!90 (List!27553 List!27553) Unit!41223)

(assert (=> b!1243390 (= lt!562337 (noDuplicateSubseq!90 Nil!27550 lt!562338))))

(declare-fun b!1243391 () Bool)

(declare-fun res!829288 () Bool)

(assert (=> b!1243391 (=> (not res!829288) (not e!704920))))

(assert (=> b!1243391 (= res!829288 (not (contains!7425 lt!562338 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243392 () Bool)

(declare-fun res!829291 () Bool)

(assert (=> b!1243392 (=> (not res!829291) (not e!704920))))

(declare-fun noDuplicate!2015 (List!27553) Bool)

(assert (=> b!1243392 (= res!829291 (noDuplicate!2015 lt!562338))))

(declare-fun b!1243393 () Bool)

(declare-fun res!829293 () Bool)

(assert (=> b!1243393 (=> (not res!829293) (not e!704920))))

(declare-fun subseq!636 (List!27553 List!27553) Bool)

(assert (=> b!1243393 (= res!829293 (subseq!636 Nil!27550 lt!562338))))

(declare-fun b!1243394 () Bool)

(declare-fun res!829287 () Bool)

(assert (=> b!1243394 (=> (not res!829287) (not e!704921))))

(assert (=> b!1243394 (= res!829287 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27550))))

(declare-fun b!1243395 () Bool)

(declare-fun res!829290 () Bool)

(assert (=> b!1243395 (=> (not res!829290) (not e!704920))))

(assert (=> b!1243395 (= res!829290 (not (contains!7425 Nil!27550 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103928 res!829295) b!1243394))

(assert (= (and b!1243394 res!829287) b!1243388))

(assert (= (and b!1243388 res!829292) b!1243385))

(assert (= (and b!1243385 res!829297) b!1243389))

(assert (= (and b!1243389 res!829289) b!1243392))

(assert (= (and b!1243392 res!829291) b!1243391))

(assert (= (and b!1243391 res!829288) b!1243386))

(assert (= (and b!1243386 res!829294) b!1243395))

(assert (= (and b!1243395 res!829290) b!1243387))

(assert (= (and b!1243387 res!829296) b!1243393))

(assert (= (and b!1243393 res!829293) b!1243390))

(declare-fun m!1145961 () Bool)

(assert (=> b!1243385 m!1145961))

(assert (=> b!1243385 m!1145961))

(declare-fun m!1145963 () Bool)

(assert (=> b!1243385 m!1145963))

(declare-fun m!1145965 () Bool)

(assert (=> b!1243390 m!1145965))

(declare-fun m!1145967 () Bool)

(assert (=> b!1243390 m!1145967))

(declare-fun m!1145969 () Bool)

(assert (=> b!1243393 m!1145969))

(declare-fun m!1145971 () Bool)

(assert (=> start!103928 m!1145971))

(declare-fun m!1145973 () Bool)

(assert (=> b!1243395 m!1145973))

(assert (=> b!1243389 m!1145961))

(declare-fun m!1145975 () Bool)

(assert (=> b!1243394 m!1145975))

(declare-fun m!1145977 () Bool)

(assert (=> b!1243391 m!1145977))

(declare-fun m!1145979 () Bool)

(assert (=> b!1243392 m!1145979))

(declare-fun m!1145981 () Bool)

(assert (=> b!1243386 m!1145981))

(declare-fun m!1145983 () Bool)

(assert (=> b!1243387 m!1145983))

(check-sat (not b!1243395) (not b!1243385) (not b!1243386) (not start!103928) (not b!1243391) (not b!1243390) (not b!1243387) (not b!1243394) (not b!1243392) (not b!1243393))
(check-sat)
