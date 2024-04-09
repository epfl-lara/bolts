; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60218 () Bool)

(assert start!60218)

(declare-fun b!673291 () Bool)

(declare-fun e!384474 () Bool)

(declare-datatypes ((List!12893 0))(
  ( (Nil!12890) (Cons!12889 (h!13934 (_ BitVec 64)) (t!19129 List!12893)) )
))
(declare-fun acc!681 () List!12893)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3436 (List!12893 (_ BitVec 64)) Bool)

(assert (=> b!673291 (= e!384474 (contains!3436 acc!681 k0!2843))))

(declare-fun b!673292 () Bool)

(declare-fun e!384482 () Bool)

(declare-fun lt!312415 () List!12893)

(assert (=> b!673292 (= e!384482 (not (contains!3436 lt!312415 k0!2843)))))

(declare-fun b!673293 () Bool)

(declare-fun e!384476 () Bool)

(declare-fun e!384475 () Bool)

(assert (=> b!673293 (= e!384476 e!384475)))

(declare-fun res!440015 () Bool)

(assert (=> b!673293 (=> (not res!440015) (not e!384475))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!673293 (= res!440015 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((array!39221 0))(
  ( (array!39222 (arr!18799 (Array (_ BitVec 32) (_ BitVec 64))) (size!19163 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39221)

(declare-fun $colon$colon!284 (List!12893 (_ BitVec 64)) List!12893)

(assert (=> b!673293 (= lt!312415 ($colon$colon!284 acc!681 (select (arr!18799 a!3626) from!3004)))))

(declare-fun b!673294 () Bool)

(declare-fun res!440014 () Bool)

(declare-fun e!384484 () Bool)

(assert (=> b!673294 (=> (not res!440014) (not e!384484))))

(declare-fun e!384481 () Bool)

(assert (=> b!673294 (= res!440014 e!384481)))

(declare-fun res!440009 () Bool)

(assert (=> b!673294 (=> res!440009 e!384481)))

(assert (=> b!673294 (= res!440009 e!384474)))

(declare-fun res!440030 () Bool)

(assert (=> b!673294 (=> (not res!440030) (not e!384474))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!673294 (= res!440030 (bvsgt from!3004 i!1382))))

(declare-fun b!673295 () Bool)

(declare-fun e!384478 () Bool)

(assert (=> b!673295 (= e!384478 e!384482)))

(declare-fun res!440010 () Bool)

(assert (=> b!673295 (=> (not res!440010) (not e!384482))))

(assert (=> b!673295 (= res!440010 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673296 () Bool)

(declare-fun res!440011 () Bool)

(assert (=> b!673296 (=> (not res!440011) (not e!384484))))

(assert (=> b!673296 (= res!440011 (not (contains!3436 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673297 () Bool)

(declare-fun e!384477 () Bool)

(assert (=> b!673297 (= e!384481 e!384477)))

(declare-fun res!440019 () Bool)

(assert (=> b!673297 (=> (not res!440019) (not e!384477))))

(assert (=> b!673297 (= res!440019 (bvsle from!3004 i!1382))))

(declare-fun b!673298 () Bool)

(declare-fun res!440016 () Bool)

(assert (=> b!673298 (=> (not res!440016) (not e!384484))))

(assert (=> b!673298 (= res!440016 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19163 a!3626))))))

(declare-fun b!673299 () Bool)

(assert (=> b!673299 (= e!384477 (not (contains!3436 acc!681 k0!2843)))))

(declare-fun b!673300 () Bool)

(declare-fun res!440026 () Bool)

(assert (=> b!673300 (=> (not res!440026) (not e!384484))))

(declare-fun noDuplicate!683 (List!12893) Bool)

(assert (=> b!673300 (= res!440026 (noDuplicate!683 acc!681))))

(declare-fun b!673301 () Bool)

(assert (=> b!673301 (= e!384475 false)))

(declare-fun lt!312416 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39221 (_ BitVec 32) List!12893) Bool)

(assert (=> b!673301 (= lt!312416 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312415))))

(declare-fun b!673302 () Bool)

(declare-fun res!440021 () Bool)

(assert (=> b!673302 (=> (not res!440021) (not e!384475))))

(assert (=> b!673302 (= res!440021 (not (contains!3436 lt!312415 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673303 () Bool)

(declare-fun res!440008 () Bool)

(assert (=> b!673303 (=> (not res!440008) (not e!384484))))

(assert (=> b!673303 (= res!440008 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12890))))

(declare-fun b!673304 () Bool)

(declare-fun res!440020 () Bool)

(assert (=> b!673304 (=> (not res!440020) (not e!384484))))

(assert (=> b!673304 (= res!440020 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!673305 () Bool)

(declare-fun res!440022 () Bool)

(assert (=> b!673305 (=> (not res!440022) (not e!384484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!673305 (= res!440022 (validKeyInArray!0 (select (arr!18799 a!3626) from!3004)))))

(declare-fun b!673306 () Bool)

(declare-datatypes ((Unit!23660 0))(
  ( (Unit!23661) )
))
(declare-fun e!384483 () Unit!23660)

(declare-fun Unit!23662 () Unit!23660)

(assert (=> b!673306 (= e!384483 Unit!23662)))

(declare-fun arrayContainsKey!0 (array!39221 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!673306 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312414 () Unit!23660)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39221 (_ BitVec 64) (_ BitVec 32)) Unit!23660)

(assert (=> b!673306 (= lt!312414 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!673306 false))

(declare-fun b!673307 () Bool)

(declare-fun res!440029 () Bool)

(assert (=> b!673307 (=> (not res!440029) (not e!384475))))

(assert (=> b!673307 (= res!440029 (not (contains!3436 lt!312415 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673308 () Bool)

(assert (=> b!673308 (= e!384484 e!384476)))

(declare-fun res!440025 () Bool)

(assert (=> b!673308 (=> (not res!440025) (not e!384476))))

(assert (=> b!673308 (= res!440025 (not (= (select (arr!18799 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312417 () Unit!23660)

(assert (=> b!673308 (= lt!312417 e!384483)))

(declare-fun c!77009 () Bool)

(assert (=> b!673308 (= c!77009 (= (select (arr!18799 a!3626) from!3004) k0!2843))))

(declare-fun b!673309 () Bool)

(declare-fun res!440013 () Bool)

(assert (=> b!673309 (=> (not res!440013) (not e!384475))))

(assert (=> b!673309 (= res!440013 (noDuplicate!683 lt!312415))))

(declare-fun b!673310 () Bool)

(declare-fun Unit!23663 () Unit!23660)

(assert (=> b!673310 (= e!384483 Unit!23663)))

(declare-fun b!673311 () Bool)

(declare-fun res!440018 () Bool)

(assert (=> b!673311 (=> (not res!440018) (not e!384484))))

(assert (=> b!673311 (= res!440018 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!673312 () Bool)

(declare-fun e!384479 () Bool)

(assert (=> b!673312 (= e!384479 (contains!3436 lt!312415 k0!2843))))

(declare-fun res!440023 () Bool)

(assert (=> start!60218 (=> (not res!440023) (not e!384484))))

(assert (=> start!60218 (= res!440023 (and (bvslt (size!19163 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19163 a!3626))))))

(assert (=> start!60218 e!384484))

(assert (=> start!60218 true))

(declare-fun array_inv!14573 (array!39221) Bool)

(assert (=> start!60218 (array_inv!14573 a!3626)))

(declare-fun b!673313 () Bool)

(declare-fun res!440027 () Bool)

(assert (=> b!673313 (=> (not res!440027) (not e!384484))))

(assert (=> b!673313 (= res!440027 (not (contains!3436 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!673314 () Bool)

(declare-fun res!440017 () Bool)

(assert (=> b!673314 (=> (not res!440017) (not e!384484))))

(assert (=> b!673314 (= res!440017 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19163 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!673315 () Bool)

(declare-fun res!440012 () Bool)

(assert (=> b!673315 (=> (not res!440012) (not e!384475))))

(assert (=> b!673315 (= res!440012 e!384478)))

(declare-fun res!440007 () Bool)

(assert (=> b!673315 (=> res!440007 e!384478)))

(assert (=> b!673315 (= res!440007 e!384479)))

(declare-fun res!440028 () Bool)

(assert (=> b!673315 (=> (not res!440028) (not e!384479))))

(assert (=> b!673315 (= res!440028 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!673316 () Bool)

(declare-fun res!440024 () Bool)

(assert (=> b!673316 (=> (not res!440024) (not e!384484))))

(assert (=> b!673316 (= res!440024 (validKeyInArray!0 k0!2843))))

(assert (= (and start!60218 res!440023) b!673300))

(assert (= (and b!673300 res!440026) b!673296))

(assert (= (and b!673296 res!440011) b!673313))

(assert (= (and b!673313 res!440027) b!673294))

(assert (= (and b!673294 res!440030) b!673291))

(assert (= (and b!673294 (not res!440009)) b!673297))

(assert (= (and b!673297 res!440019) b!673299))

(assert (= (and b!673294 res!440014) b!673303))

(assert (= (and b!673303 res!440008) b!673304))

(assert (= (and b!673304 res!440020) b!673298))

(assert (= (and b!673298 res!440016) b!673316))

(assert (= (and b!673316 res!440024) b!673311))

(assert (= (and b!673311 res!440018) b!673314))

(assert (= (and b!673314 res!440017) b!673305))

(assert (= (and b!673305 res!440022) b!673308))

(assert (= (and b!673308 c!77009) b!673306))

(assert (= (and b!673308 (not c!77009)) b!673310))

(assert (= (and b!673308 res!440025) b!673293))

(assert (= (and b!673293 res!440015) b!673309))

(assert (= (and b!673309 res!440013) b!673307))

(assert (= (and b!673307 res!440029) b!673302))

(assert (= (and b!673302 res!440021) b!673315))

(assert (= (and b!673315 res!440028) b!673312))

(assert (= (and b!673315 (not res!440007)) b!673295))

(assert (= (and b!673295 res!440010) b!673292))

(assert (= (and b!673315 res!440012) b!673301))

(declare-fun m!641777 () Bool)

(assert (=> b!673316 m!641777))

(declare-fun m!641779 () Bool)

(assert (=> b!673306 m!641779))

(declare-fun m!641781 () Bool)

(assert (=> b!673306 m!641781))

(declare-fun m!641783 () Bool)

(assert (=> b!673307 m!641783))

(declare-fun m!641785 () Bool)

(assert (=> b!673305 m!641785))

(assert (=> b!673305 m!641785))

(declare-fun m!641787 () Bool)

(assert (=> b!673305 m!641787))

(declare-fun m!641789 () Bool)

(assert (=> b!673303 m!641789))

(declare-fun m!641791 () Bool)

(assert (=> b!673291 m!641791))

(declare-fun m!641793 () Bool)

(assert (=> b!673313 m!641793))

(declare-fun m!641795 () Bool)

(assert (=> start!60218 m!641795))

(declare-fun m!641797 () Bool)

(assert (=> b!673309 m!641797))

(declare-fun m!641799 () Bool)

(assert (=> b!673312 m!641799))

(assert (=> b!673292 m!641799))

(assert (=> b!673299 m!641791))

(declare-fun m!641801 () Bool)

(assert (=> b!673300 m!641801))

(assert (=> b!673308 m!641785))

(declare-fun m!641803 () Bool)

(assert (=> b!673301 m!641803))

(declare-fun m!641805 () Bool)

(assert (=> b!673302 m!641805))

(declare-fun m!641807 () Bool)

(assert (=> b!673296 m!641807))

(declare-fun m!641809 () Bool)

(assert (=> b!673311 m!641809))

(assert (=> b!673293 m!641785))

(assert (=> b!673293 m!641785))

(declare-fun m!641811 () Bool)

(assert (=> b!673293 m!641811))

(declare-fun m!641813 () Bool)

(assert (=> b!673304 m!641813))

(check-sat (not b!673301) (not b!673300) (not b!673307) (not b!673304) (not b!673302) (not b!673299) (not b!673312) (not b!673303) (not b!673306) (not b!673311) (not b!673313) (not b!673316) (not start!60218) (not b!673292) (not b!673309) (not b!673293) (not b!673291) (not b!673305) (not b!673296))
(check-sat)
