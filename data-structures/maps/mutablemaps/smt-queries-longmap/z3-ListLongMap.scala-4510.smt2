; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62546 () Bool)

(assert start!62546)

(declare-fun b!704301 () Bool)

(declare-fun res!468291 () Bool)

(declare-fun e!397617 () Bool)

(assert (=> b!704301 (=> (not res!468291) (not e!397617))))

(declare-datatypes ((List!13337 0))(
  ( (Nil!13334) (Cons!13333 (h!14378 (_ BitVec 64)) (t!19627 List!13337)) )
))
(declare-fun newAcc!49 () List!13337)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun acc!652 () List!13337)

(declare-fun -!289 (List!13337 (_ BitVec 64)) List!13337)

(assert (=> b!704301 (= res!468291 (= (-!289 newAcc!49 k0!2824) acc!652))))

(declare-fun b!704302 () Bool)

(declare-fun res!468289 () Bool)

(assert (=> b!704302 (=> (not res!468289) (not e!397617))))

(declare-fun contains!3880 (List!13337 (_ BitVec 64)) Bool)

(assert (=> b!704302 (= res!468289 (not (contains!3880 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704303 () Bool)

(declare-fun res!468296 () Bool)

(assert (=> b!704303 (=> (not res!468296) (not e!397617))))

(declare-fun noDuplicate!1127 (List!13337) Bool)

(assert (=> b!704303 (= res!468296 (noDuplicate!1127 newAcc!49))))

(declare-fun b!704304 () Bool)

(declare-fun res!468301 () Bool)

(assert (=> b!704304 (=> (not res!468301) (not e!397617))))

(assert (=> b!704304 (= res!468301 (not (contains!3880 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704305 () Bool)

(declare-fun res!468295 () Bool)

(assert (=> b!704305 (=> (not res!468295) (not e!397617))))

(declare-datatypes ((array!40181 0))(
  ( (array!40182 (arr!19243 (Array (_ BitVec 32) (_ BitVec 64))) (size!19626 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40181)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!40181 (_ BitVec 32) List!13337) Bool)

(assert (=> b!704305 (= res!468295 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704306 () Bool)

(declare-fun res!468297 () Bool)

(assert (=> b!704306 (=> (not res!468297) (not e!397617))))

(assert (=> b!704306 (= res!468297 (contains!3880 newAcc!49 k0!2824))))

(declare-fun b!704307 () Bool)

(declare-fun res!468290 () Bool)

(assert (=> b!704307 (=> (not res!468290) (not e!397617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704307 (= res!468290 (not (validKeyInArray!0 (select (arr!19243 a!3591) from!2969))))))

(declare-fun res!468302 () Bool)

(assert (=> start!62546 (=> (not res!468302) (not e!397617))))

(assert (=> start!62546 (= res!468302 (and (bvslt (size!19626 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19626 a!3591))))))

(assert (=> start!62546 e!397617))

(assert (=> start!62546 true))

(declare-fun array_inv!15017 (array!40181) Bool)

(assert (=> start!62546 (array_inv!15017 a!3591)))

(declare-fun b!704308 () Bool)

(declare-fun res!468288 () Bool)

(assert (=> b!704308 (=> (not res!468288) (not e!397617))))

(assert (=> b!704308 (= res!468288 (validKeyInArray!0 k0!2824))))

(declare-fun b!704309 () Bool)

(declare-fun res!468286 () Bool)

(assert (=> b!704309 (=> (not res!468286) (not e!397617))))

(declare-fun arrayContainsKey!0 (array!40181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704309 (= res!468286 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704310 () Bool)

(assert (=> b!704310 (= e!397617 false)))

(declare-fun lt!317790 () Bool)

(assert (=> b!704310 (= lt!317790 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704311 () Bool)

(declare-fun res!468287 () Bool)

(assert (=> b!704311 (=> (not res!468287) (not e!397617))))

(assert (=> b!704311 (= res!468287 (not (contains!3880 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704312 () Bool)

(declare-fun res!468294 () Bool)

(assert (=> b!704312 (=> (not res!468294) (not e!397617))))

(assert (=> b!704312 (= res!468294 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19626 a!3591)))))

(declare-fun b!704313 () Bool)

(declare-fun res!468300 () Bool)

(assert (=> b!704313 (=> (not res!468300) (not e!397617))))

(assert (=> b!704313 (= res!468300 (noDuplicate!1127 acc!652))))

(declare-fun b!704314 () Bool)

(declare-fun res!468299 () Bool)

(assert (=> b!704314 (=> (not res!468299) (not e!397617))))

(assert (=> b!704314 (= res!468299 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!704315 () Bool)

(declare-fun res!468298 () Bool)

(assert (=> b!704315 (=> (not res!468298) (not e!397617))))

(assert (=> b!704315 (= res!468298 (not (contains!3880 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704316 () Bool)

(declare-fun res!468292 () Bool)

(assert (=> b!704316 (=> (not res!468292) (not e!397617))))

(assert (=> b!704316 (= res!468292 (not (contains!3880 acc!652 k0!2824)))))

(declare-fun b!704317 () Bool)

(declare-fun res!468293 () Bool)

(assert (=> b!704317 (=> (not res!468293) (not e!397617))))

(assert (=> b!704317 (= res!468293 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704318 () Bool)

(declare-fun res!468285 () Bool)

(assert (=> b!704318 (=> (not res!468285) (not e!397617))))

(declare-fun subseq!324 (List!13337 List!13337) Bool)

(assert (=> b!704318 (= res!468285 (subseq!324 acc!652 newAcc!49))))

(assert (= (and start!62546 res!468302) b!704313))

(assert (= (and b!704313 res!468300) b!704303))

(assert (= (and b!704303 res!468296) b!704311))

(assert (= (and b!704311 res!468287) b!704304))

(assert (= (and b!704304 res!468301) b!704314))

(assert (= (and b!704314 res!468299) b!704316))

(assert (= (and b!704316 res!468292) b!704308))

(assert (= (and b!704308 res!468288) b!704305))

(assert (= (and b!704305 res!468295) b!704318))

(assert (= (and b!704318 res!468285) b!704306))

(assert (= (and b!704306 res!468297) b!704301))

(assert (= (and b!704301 res!468291) b!704302))

(assert (= (and b!704302 res!468289) b!704315))

(assert (= (and b!704315 res!468298) b!704312))

(assert (= (and b!704312 res!468294) b!704307))

(assert (= (and b!704307 res!468290) b!704317))

(assert (= (and b!704317 res!468293) b!704309))

(assert (= (and b!704309 res!468286) b!704310))

(declare-fun m!662859 () Bool)

(assert (=> b!704308 m!662859))

(declare-fun m!662861 () Bool)

(assert (=> b!704303 m!662861))

(declare-fun m!662863 () Bool)

(assert (=> b!704310 m!662863))

(declare-fun m!662865 () Bool)

(assert (=> b!704307 m!662865))

(assert (=> b!704307 m!662865))

(declare-fun m!662867 () Bool)

(assert (=> b!704307 m!662867))

(declare-fun m!662869 () Bool)

(assert (=> b!704301 m!662869))

(declare-fun m!662871 () Bool)

(assert (=> b!704311 m!662871))

(declare-fun m!662873 () Bool)

(assert (=> b!704309 m!662873))

(declare-fun m!662875 () Bool)

(assert (=> b!704302 m!662875))

(declare-fun m!662877 () Bool)

(assert (=> b!704313 m!662877))

(declare-fun m!662879 () Bool)

(assert (=> b!704314 m!662879))

(declare-fun m!662881 () Bool)

(assert (=> b!704316 m!662881))

(declare-fun m!662883 () Bool)

(assert (=> b!704304 m!662883))

(declare-fun m!662885 () Bool)

(assert (=> b!704306 m!662885))

(declare-fun m!662887 () Bool)

(assert (=> b!704315 m!662887))

(declare-fun m!662889 () Bool)

(assert (=> b!704305 m!662889))

(declare-fun m!662891 () Bool)

(assert (=> start!62546 m!662891))

(declare-fun m!662893 () Bool)

(assert (=> b!704318 m!662893))

(check-sat (not b!704311) (not start!62546) (not b!704313) (not b!704308) (not b!704304) (not b!704309) (not b!704314) (not b!704306) (not b!704316) (not b!704303) (not b!704315) (not b!704310) (not b!704307) (not b!704301) (not b!704305) (not b!704302) (not b!704318))
(check-sat)
