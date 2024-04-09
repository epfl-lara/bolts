; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60094 () Bool)

(assert start!60094)

(declare-fun b!669284 () Bool)

(declare-fun res!436353 () Bool)

(declare-fun e!382806 () Bool)

(assert (=> b!669284 (=> (not res!436353) (not e!382806))))

(declare-datatypes ((array!39097 0))(
  ( (array!39098 (arr!18737 (Array (_ BitVec 32) (_ BitVec 64))) (size!19101 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39097)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669284 (= res!436353 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669285 () Bool)

(declare-datatypes ((Unit!23480 0))(
  ( (Unit!23481) )
))
(declare-fun e!382809 () Unit!23480)

(declare-fun lt!311587 () Unit!23480)

(assert (=> b!669285 (= e!382809 lt!311587)))

(declare-fun lt!311583 () Unit!23480)

(declare-datatypes ((List!12831 0))(
  ( (Nil!12828) (Cons!12827 (h!13872 (_ BitVec 64)) (t!19067 List!12831)) )
))
(declare-fun acc!681 () List!12831)

(declare-fun lemmaListSubSeqRefl!0 (List!12831) Unit!23480)

(assert (=> b!669285 (= lt!311583 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!112 (List!12831 List!12831) Bool)

(assert (=> b!669285 (subseq!112 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39097 List!12831 List!12831 (_ BitVec 32)) Unit!23480)

(declare-fun $colon$colon!243 (List!12831 (_ BitVec 64)) List!12831)

(assert (=> b!669285 (= lt!311587 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!243 acc!681 (select (arr!18737 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39097 (_ BitVec 32) List!12831) Bool)

(assert (=> b!669285 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669286 () Bool)

(declare-fun res!436348 () Bool)

(assert (=> b!669286 (=> (not res!436348) (not e!382806))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!669286 (= res!436348 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19101 a!3626))))))

(declare-fun b!669287 () Bool)

(declare-fun e!382813 () Bool)

(declare-fun e!382807 () Bool)

(assert (=> b!669287 (= e!382813 e!382807)))

(declare-fun res!436352 () Bool)

(assert (=> b!669287 (=> (not res!436352) (not e!382807))))

(assert (=> b!669287 (= res!436352 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669288 () Bool)

(declare-fun e!382808 () Bool)

(declare-fun contains!3374 (List!12831 (_ BitVec 64)) Bool)

(assert (=> b!669288 (= e!382808 (not (contains!3374 acc!681 k!2843)))))

(declare-fun b!669289 () Bool)

(declare-fun lt!311585 () List!12831)

(assert (=> b!669289 (= e!382807 (not (contains!3374 lt!311585 k!2843)))))

(declare-fun b!669290 () Bool)

(declare-fun e!382812 () Bool)

(assert (=> b!669290 (= e!382812 (contains!3374 acc!681 k!2843))))

(declare-fun b!669292 () Bool)

(declare-fun res!436351 () Bool)

(assert (=> b!669292 (=> (not res!436351) (not e!382806))))

(declare-fun e!382810 () Bool)

(assert (=> b!669292 (= res!436351 e!382810)))

(declare-fun res!436344 () Bool)

(assert (=> b!669292 (=> res!436344 e!382810)))

(assert (=> b!669292 (= res!436344 e!382812)))

(declare-fun res!436347 () Bool)

(assert (=> b!669292 (=> (not res!436347) (not e!382812))))

(assert (=> b!669292 (= res!436347 (bvsgt from!3004 i!1382))))

(declare-fun b!669293 () Bool)

(declare-fun e!382816 () Bool)

(assert (=> b!669293 (= e!382816 (contains!3374 lt!311585 k!2843))))

(declare-fun b!669294 () Bool)

(declare-fun e!382811 () Bool)

(assert (=> b!669294 (= e!382811 true)))

(declare-fun lt!311584 () Bool)

(assert (=> b!669294 (= lt!311584 e!382813)))

(declare-fun res!436339 () Bool)

(assert (=> b!669294 (=> res!436339 e!382813)))

(assert (=> b!669294 (= res!436339 e!382816)))

(declare-fun res!436341 () Bool)

(assert (=> b!669294 (=> (not res!436341) (not e!382816))))

(assert (=> b!669294 (= res!436341 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669295 () Bool)

(declare-fun e!382815 () Unit!23480)

(declare-fun Unit!23482 () Unit!23480)

(assert (=> b!669295 (= e!382815 Unit!23482)))

(declare-fun b!669296 () Bool)

(declare-fun res!436346 () Bool)

(assert (=> b!669296 (=> (not res!436346) (not e!382806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669296 (= res!436346 (validKeyInArray!0 k!2843))))

(declare-fun b!669297 () Bool)

(declare-fun Unit!23483 () Unit!23480)

(assert (=> b!669297 (= e!382809 Unit!23483)))

(declare-fun b!669298 () Bool)

(declare-fun res!436349 () Bool)

(assert (=> b!669298 (=> (not res!436349) (not e!382806))))

(assert (=> b!669298 (= res!436349 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669299 () Bool)

(declare-fun res!436338 () Bool)

(assert (=> b!669299 (=> (not res!436338) (not e!382806))))

(assert (=> b!669299 (= res!436338 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19101 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!669300 () Bool)

(assert (=> b!669300 (= e!382806 (not e!382811))))

(declare-fun res!436343 () Bool)

(assert (=> b!669300 (=> res!436343 e!382811)))

(assert (=> b!669300 (= res!436343 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669300 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311585)))

(declare-fun lt!311588 () Unit!23480)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39097 (_ BitVec 64) (_ BitVec 32) List!12831 List!12831) Unit!23480)

(assert (=> b!669300 (= lt!311588 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311585))))

(declare-fun -!110 (List!12831 (_ BitVec 64)) List!12831)

(assert (=> b!669300 (= (-!110 lt!311585 k!2843) acc!681)))

(assert (=> b!669300 (= lt!311585 ($colon$colon!243 acc!681 k!2843))))

(declare-fun lt!311586 () Unit!23480)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12831) Unit!23480)

(assert (=> b!669300 (= lt!311586 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!669300 (subseq!112 acc!681 acc!681)))

(declare-fun lt!311591 () Unit!23480)

(assert (=> b!669300 (= lt!311591 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669300 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311590 () Unit!23480)

(assert (=> b!669300 (= lt!311590 e!382809)))

(declare-fun c!76840 () Bool)

(assert (=> b!669300 (= c!76840 (validKeyInArray!0 (select (arr!18737 a!3626) from!3004)))))

(declare-fun lt!311589 () Unit!23480)

(assert (=> b!669300 (= lt!311589 e!382815)))

(declare-fun c!76841 () Bool)

(assert (=> b!669300 (= c!76841 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669300 (arrayContainsKey!0 (array!39098 (store (arr!18737 a!3626) i!1382 k!2843) (size!19101 a!3626)) k!2843 from!3004)))

(declare-fun b!669301 () Bool)

(declare-fun Unit!23484 () Unit!23480)

(assert (=> b!669301 (= e!382815 Unit!23484)))

(declare-fun lt!311592 () Unit!23480)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39097 (_ BitVec 64) (_ BitVec 32)) Unit!23480)

(assert (=> b!669301 (= lt!311592 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!669301 false))

(declare-fun b!669302 () Bool)

(assert (=> b!669302 (= e!382810 e!382808)))

(declare-fun res!436358 () Bool)

(assert (=> b!669302 (=> (not res!436358) (not e!382808))))

(assert (=> b!669302 (= res!436358 (bvsle from!3004 i!1382))))

(declare-fun b!669303 () Bool)

(declare-fun res!436357 () Bool)

(assert (=> b!669303 (=> res!436357 e!382811)))

(assert (=> b!669303 (= res!436357 (contains!3374 lt!311585 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669304 () Bool)

(declare-fun res!436355 () Bool)

(assert (=> b!669304 (=> (not res!436355) (not e!382806))))

(assert (=> b!669304 (= res!436355 (not (contains!3374 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669305 () Bool)

(declare-fun res!436340 () Bool)

(assert (=> b!669305 (=> res!436340 e!382811)))

(declare-fun noDuplicate!621 (List!12831) Bool)

(assert (=> b!669305 (= res!436340 (not (noDuplicate!621 lt!311585)))))

(declare-fun b!669306 () Bool)

(declare-fun res!436345 () Bool)

(assert (=> b!669306 (=> (not res!436345) (not e!382806))))

(assert (=> b!669306 (= res!436345 (noDuplicate!621 acc!681))))

(declare-fun b!669291 () Bool)

(declare-fun res!436350 () Bool)

(assert (=> b!669291 (=> (not res!436350) (not e!382806))))

(assert (=> b!669291 (= res!436350 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12828))))

(declare-fun res!436354 () Bool)

(assert (=> start!60094 (=> (not res!436354) (not e!382806))))

(assert (=> start!60094 (= res!436354 (and (bvslt (size!19101 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19101 a!3626))))))

(assert (=> start!60094 e!382806))

(assert (=> start!60094 true))

(declare-fun array_inv!14511 (array!39097) Bool)

(assert (=> start!60094 (array_inv!14511 a!3626)))

(declare-fun b!669307 () Bool)

(declare-fun res!436356 () Bool)

(assert (=> b!669307 (=> res!436356 e!382811)))

(assert (=> b!669307 (= res!436356 (contains!3374 lt!311585 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669308 () Bool)

(declare-fun res!436342 () Bool)

(assert (=> b!669308 (=> (not res!436342) (not e!382806))))

(assert (=> b!669308 (= res!436342 (not (contains!3374 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60094 res!436354) b!669306))

(assert (= (and b!669306 res!436345) b!669308))

(assert (= (and b!669308 res!436342) b!669304))

(assert (= (and b!669304 res!436355) b!669292))

(assert (= (and b!669292 res!436347) b!669290))

(assert (= (and b!669292 (not res!436344)) b!669302))

(assert (= (and b!669302 res!436358) b!669288))

(assert (= (and b!669292 res!436351) b!669291))

(assert (= (and b!669291 res!436350) b!669298))

(assert (= (and b!669298 res!436349) b!669286))

(assert (= (and b!669286 res!436348) b!669296))

(assert (= (and b!669296 res!436346) b!669284))

(assert (= (and b!669284 res!436353) b!669299))

(assert (= (and b!669299 res!436338) b!669300))

(assert (= (and b!669300 c!76841) b!669301))

(assert (= (and b!669300 (not c!76841)) b!669295))

(assert (= (and b!669300 c!76840) b!669285))

(assert (= (and b!669300 (not c!76840)) b!669297))

(assert (= (and b!669300 (not res!436343)) b!669305))

(assert (= (and b!669305 (not res!436340)) b!669303))

(assert (= (and b!669303 (not res!436357)) b!669307))

(assert (= (and b!669307 (not res!436356)) b!669294))

(assert (= (and b!669294 res!436341) b!669293))

(assert (= (and b!669294 (not res!436339)) b!669287))

(assert (= (and b!669287 res!436352) b!669289))

(declare-fun m!639437 () Bool)

(assert (=> b!669308 m!639437))

(declare-fun m!639439 () Bool)

(assert (=> b!669303 m!639439))

(declare-fun m!639441 () Bool)

(assert (=> b!669293 m!639441))

(declare-fun m!639443 () Bool)

(assert (=> b!669290 m!639443))

(declare-fun m!639445 () Bool)

(assert (=> b!669306 m!639445))

(declare-fun m!639447 () Bool)

(assert (=> b!669285 m!639447))

(declare-fun m!639449 () Bool)

(assert (=> b!669285 m!639449))

(declare-fun m!639451 () Bool)

(assert (=> b!669285 m!639451))

(declare-fun m!639453 () Bool)

(assert (=> b!669285 m!639453))

(assert (=> b!669285 m!639449))

(assert (=> b!669285 m!639451))

(declare-fun m!639455 () Bool)

(assert (=> b!669285 m!639455))

(declare-fun m!639457 () Bool)

(assert (=> b!669285 m!639457))

(assert (=> b!669289 m!639441))

(declare-fun m!639459 () Bool)

(assert (=> b!669300 m!639459))

(assert (=> b!669300 m!639447))

(assert (=> b!669300 m!639449))

(declare-fun m!639461 () Bool)

(assert (=> b!669300 m!639461))

(declare-fun m!639463 () Bool)

(assert (=> b!669300 m!639463))

(declare-fun m!639465 () Bool)

(assert (=> b!669300 m!639465))

(declare-fun m!639467 () Bool)

(assert (=> b!669300 m!639467))

(assert (=> b!669300 m!639455))

(declare-fun m!639469 () Bool)

(assert (=> b!669300 m!639469))

(declare-fun m!639471 () Bool)

(assert (=> b!669300 m!639471))

(assert (=> b!669300 m!639449))

(declare-fun m!639473 () Bool)

(assert (=> b!669300 m!639473))

(declare-fun m!639475 () Bool)

(assert (=> b!669300 m!639475))

(assert (=> b!669300 m!639457))

(declare-fun m!639477 () Bool)

(assert (=> b!669305 m!639477))

(declare-fun m!639479 () Bool)

(assert (=> b!669304 m!639479))

(declare-fun m!639481 () Bool)

(assert (=> b!669296 m!639481))

(declare-fun m!639483 () Bool)

(assert (=> b!669298 m!639483))

(declare-fun m!639485 () Bool)

(assert (=> b!669284 m!639485))

(declare-fun m!639487 () Bool)

(assert (=> b!669307 m!639487))

(declare-fun m!639489 () Bool)

(assert (=> start!60094 m!639489))

(declare-fun m!639491 () Bool)

(assert (=> b!669291 m!639491))

(declare-fun m!639493 () Bool)

(assert (=> b!669301 m!639493))

(assert (=> b!669288 m!639443))

(push 1)

(assert (not b!669303))

(assert (not b!669306))

(assert (not b!669305))

(assert (not b!669285))

(assert (not b!669293))

(assert (not b!669301))

(assert (not b!669291))

(assert (not start!60094))

(assert (not b!669307))

(assert (not b!669300))

(assert (not b!669304))

(assert (not b!669284))

(assert (not b!669288))

(assert (not b!669298))

(assert (not b!669296))

(assert (not b!669290))

(assert (not b!669289))

(assert (not b!669308))

(check-sat)

