; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60248 () Bool)

(assert start!60248)

(declare-fun b!674484 () Bool)

(declare-fun res!441130 () Bool)

(declare-fun e!384974 () Bool)

(assert (=> b!674484 (=> (not res!441130) (not e!384974))))

(declare-datatypes ((List!12908 0))(
  ( (Nil!12905) (Cons!12904 (h!13949 (_ BitVec 64)) (t!19144 List!12908)) )
))
(declare-fun acc!681 () List!12908)

(declare-fun noDuplicate!698 (List!12908) Bool)

(assert (=> b!674484 (= res!441130 (noDuplicate!698 acc!681))))

(declare-fun b!674485 () Bool)

(declare-fun res!441132 () Bool)

(declare-fun e!384971 () Bool)

(assert (=> b!674485 (=> (not res!441132) (not e!384971))))

(declare-fun e!384972 () Bool)

(assert (=> b!674485 (= res!441132 e!384972)))

(declare-fun res!441133 () Bool)

(assert (=> b!674485 (=> res!441133 e!384972)))

(declare-fun e!384975 () Bool)

(assert (=> b!674485 (= res!441133 e!384975)))

(declare-fun res!441126 () Bool)

(assert (=> b!674485 (=> (not res!441126) (not e!384975))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674485 (= res!441126 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674486 () Bool)

(declare-fun res!441129 () Bool)

(assert (=> b!674486 (=> (not res!441129) (not e!384974))))

(declare-datatypes ((array!39251 0))(
  ( (array!39252 (arr!18814 (Array (_ BitVec 32) (_ BitVec 64))) (size!19178 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39251)

(assert (=> b!674486 (= res!441129 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19178 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674487 () Bool)

(declare-fun res!441113 () Bool)

(assert (=> b!674487 (=> (not res!441113) (not e!384971))))

(declare-fun lt!312596 () List!12908)

(declare-fun contains!3451 (List!12908 (_ BitVec 64)) Bool)

(assert (=> b!674487 (= res!441113 (not (contains!3451 lt!312596 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674488 () Bool)

(declare-datatypes ((Unit!23720 0))(
  ( (Unit!23721) )
))
(declare-fun e!384979 () Unit!23720)

(declare-fun Unit!23722 () Unit!23720)

(assert (=> b!674488 (= e!384979 Unit!23722)))

(declare-fun res!441117 () Bool)

(assert (=> start!60248 (=> (not res!441117) (not e!384974))))

(assert (=> start!60248 (= res!441117 (and (bvslt (size!19178 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19178 a!3626))))))

(assert (=> start!60248 e!384974))

(assert (=> start!60248 true))

(declare-fun array_inv!14588 (array!39251) Bool)

(assert (=> start!60248 (array_inv!14588 a!3626)))

(declare-fun b!674489 () Bool)

(declare-fun res!441116 () Bool)

(assert (=> b!674489 (=> (not res!441116) (not e!384974))))

(declare-fun arrayNoDuplicates!0 (array!39251 (_ BitVec 32) List!12908) Bool)

(assert (=> b!674489 (= res!441116 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674490 () Bool)

(declare-fun Unit!23723 () Unit!23720)

(assert (=> b!674490 (= e!384979 Unit!23723)))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674490 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312594 () Unit!23720)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39251 (_ BitVec 64) (_ BitVec 32)) Unit!23720)

(assert (=> b!674490 (= lt!312594 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!674490 false))

(declare-fun b!674491 () Bool)

(assert (=> b!674491 (= e!384971 (not true))))

(assert (=> b!674491 (arrayNoDuplicates!0 (array!39252 (store (arr!18814 a!3626) i!1382 k0!2843) (size!19178 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312596)))

(declare-fun lt!312595 () Unit!23720)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39251 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12908) Unit!23720)

(assert (=> b!674491 (= lt!312595 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312596))))

(declare-fun b!674492 () Bool)

(declare-fun res!441114 () Bool)

(assert (=> b!674492 (=> (not res!441114) (not e!384971))))

(assert (=> b!674492 (= res!441114 (not (contains!3451 lt!312596 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674493 () Bool)

(declare-fun res!441112 () Bool)

(assert (=> b!674493 (=> (not res!441112) (not e!384974))))

(assert (=> b!674493 (= res!441112 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674494 () Bool)

(assert (=> b!674494 (= e!384975 (contains!3451 lt!312596 k0!2843))))

(declare-fun b!674495 () Bool)

(declare-fun e!384970 () Bool)

(assert (=> b!674495 (= e!384972 e!384970)))

(declare-fun res!441127 () Bool)

(assert (=> b!674495 (=> (not res!441127) (not e!384970))))

(assert (=> b!674495 (= res!441127 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674496 () Bool)

(declare-fun e!384969 () Bool)

(assert (=> b!674496 (= e!384969 e!384971)))

(declare-fun res!441122 () Bool)

(assert (=> b!674496 (=> (not res!441122) (not e!384971))))

(assert (=> b!674496 (= res!441122 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!299 (List!12908 (_ BitVec 64)) List!12908)

(assert (=> b!674496 (= lt!312596 ($colon$colon!299 acc!681 (select (arr!18814 a!3626) from!3004)))))

(declare-fun b!674497 () Bool)

(declare-fun res!441131 () Bool)

(assert (=> b!674497 (=> (not res!441131) (not e!384974))))

(assert (=> b!674497 (= res!441131 (not (contains!3451 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674498 () Bool)

(declare-fun res!441128 () Bool)

(assert (=> b!674498 (=> (not res!441128) (not e!384974))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674498 (= res!441128 (validKeyInArray!0 (select (arr!18814 a!3626) from!3004)))))

(declare-fun b!674499 () Bool)

(declare-fun res!441124 () Bool)

(assert (=> b!674499 (=> (not res!441124) (not e!384971))))

(assert (=> b!674499 (= res!441124 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312596))))

(declare-fun b!674500 () Bool)

(assert (=> b!674500 (= e!384974 e!384969)))

(declare-fun res!441120 () Bool)

(assert (=> b!674500 (=> (not res!441120) (not e!384969))))

(assert (=> b!674500 (= res!441120 (not (= (select (arr!18814 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312597 () Unit!23720)

(assert (=> b!674500 (= lt!312597 e!384979)))

(declare-fun c!77054 () Bool)

(assert (=> b!674500 (= c!77054 (= (select (arr!18814 a!3626) from!3004) k0!2843))))

(declare-fun b!674501 () Bool)

(declare-fun res!441125 () Bool)

(assert (=> b!674501 (=> (not res!441125) (not e!384971))))

(assert (=> b!674501 (= res!441125 (noDuplicate!698 lt!312596))))

(declare-fun b!674502 () Bool)

(declare-fun e!384978 () Bool)

(declare-fun e!384973 () Bool)

(assert (=> b!674502 (= e!384978 e!384973)))

(declare-fun res!441110 () Bool)

(assert (=> b!674502 (=> (not res!441110) (not e!384973))))

(assert (=> b!674502 (= res!441110 (bvsle from!3004 i!1382))))

(declare-fun b!674503 () Bool)

(declare-fun res!441134 () Bool)

(assert (=> b!674503 (=> (not res!441134) (not e!384974))))

(assert (=> b!674503 (= res!441134 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19178 a!3626))))))

(declare-fun b!674504 () Bool)

(assert (=> b!674504 (= e!384970 (not (contains!3451 lt!312596 k0!2843)))))

(declare-fun b!674505 () Bool)

(declare-fun res!441119 () Bool)

(assert (=> b!674505 (=> (not res!441119) (not e!384974))))

(assert (=> b!674505 (= res!441119 (validKeyInArray!0 k0!2843))))

(declare-fun b!674506 () Bool)

(declare-fun res!441123 () Bool)

(assert (=> b!674506 (=> (not res!441123) (not e!384974))))

(assert (=> b!674506 (= res!441123 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12905))))

(declare-fun b!674507 () Bool)

(declare-fun res!441121 () Bool)

(assert (=> b!674507 (=> (not res!441121) (not e!384974))))

(assert (=> b!674507 (= res!441121 (not (contains!3451 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674508 () Bool)

(assert (=> b!674508 (= e!384973 (not (contains!3451 acc!681 k0!2843)))))

(declare-fun b!674509 () Bool)

(declare-fun e!384976 () Bool)

(assert (=> b!674509 (= e!384976 (contains!3451 acc!681 k0!2843))))

(declare-fun b!674510 () Bool)

(declare-fun res!441115 () Bool)

(assert (=> b!674510 (=> (not res!441115) (not e!384974))))

(assert (=> b!674510 (= res!441115 e!384978)))

(declare-fun res!441118 () Bool)

(assert (=> b!674510 (=> res!441118 e!384978)))

(assert (=> b!674510 (= res!441118 e!384976)))

(declare-fun res!441111 () Bool)

(assert (=> b!674510 (=> (not res!441111) (not e!384976))))

(assert (=> b!674510 (= res!441111 (bvsgt from!3004 i!1382))))

(assert (= (and start!60248 res!441117) b!674484))

(assert (= (and b!674484 res!441130) b!674497))

(assert (= (and b!674497 res!441131) b!674507))

(assert (= (and b!674507 res!441121) b!674510))

(assert (= (and b!674510 res!441111) b!674509))

(assert (= (and b!674510 (not res!441118)) b!674502))

(assert (= (and b!674502 res!441110) b!674508))

(assert (= (and b!674510 res!441115) b!674506))

(assert (= (and b!674506 res!441123) b!674489))

(assert (= (and b!674489 res!441116) b!674503))

(assert (= (and b!674503 res!441134) b!674505))

(assert (= (and b!674505 res!441119) b!674493))

(assert (= (and b!674493 res!441112) b!674486))

(assert (= (and b!674486 res!441129) b!674498))

(assert (= (and b!674498 res!441128) b!674500))

(assert (= (and b!674500 c!77054) b!674490))

(assert (= (and b!674500 (not c!77054)) b!674488))

(assert (= (and b!674500 res!441120) b!674496))

(assert (= (and b!674496 res!441122) b!674501))

(assert (= (and b!674501 res!441125) b!674492))

(assert (= (and b!674492 res!441114) b!674487))

(assert (= (and b!674487 res!441113) b!674485))

(assert (= (and b!674485 res!441126) b!674494))

(assert (= (and b!674485 (not res!441133)) b!674495))

(assert (= (and b!674495 res!441127) b!674504))

(assert (= (and b!674485 res!441132) b!674499))

(assert (= (and b!674499 res!441124) b!674491))

(declare-fun m!642389 () Bool)

(assert (=> b!674497 m!642389))

(declare-fun m!642391 () Bool)

(assert (=> b!674508 m!642391))

(assert (=> b!674509 m!642391))

(declare-fun m!642393 () Bool)

(assert (=> b!674504 m!642393))

(declare-fun m!642395 () Bool)

(assert (=> b!674501 m!642395))

(declare-fun m!642397 () Bool)

(assert (=> b!674489 m!642397))

(declare-fun m!642399 () Bool)

(assert (=> b!674491 m!642399))

(declare-fun m!642401 () Bool)

(assert (=> b!674491 m!642401))

(declare-fun m!642403 () Bool)

(assert (=> b!674491 m!642403))

(declare-fun m!642405 () Bool)

(assert (=> b!674490 m!642405))

(declare-fun m!642407 () Bool)

(assert (=> b!674490 m!642407))

(declare-fun m!642409 () Bool)

(assert (=> b!674496 m!642409))

(assert (=> b!674496 m!642409))

(declare-fun m!642411 () Bool)

(assert (=> b!674496 m!642411))

(declare-fun m!642413 () Bool)

(assert (=> b!674493 m!642413))

(assert (=> b!674500 m!642409))

(assert (=> b!674498 m!642409))

(assert (=> b!674498 m!642409))

(declare-fun m!642415 () Bool)

(assert (=> b!674498 m!642415))

(declare-fun m!642417 () Bool)

(assert (=> b!674487 m!642417))

(declare-fun m!642419 () Bool)

(assert (=> b!674506 m!642419))

(declare-fun m!642421 () Bool)

(assert (=> b!674499 m!642421))

(assert (=> b!674494 m!642393))

(declare-fun m!642423 () Bool)

(assert (=> start!60248 m!642423))

(declare-fun m!642425 () Bool)

(assert (=> b!674505 m!642425))

(declare-fun m!642427 () Bool)

(assert (=> b!674484 m!642427))

(declare-fun m!642429 () Bool)

(assert (=> b!674507 m!642429))

(declare-fun m!642431 () Bool)

(assert (=> b!674492 m!642431))

(check-sat (not b!674499) (not b!674491) (not b!674484) (not b!674504) (not b!674508) (not b!674494) (not b!674497) (not b!674490) (not start!60248) (not b!674507) (not b!674509) (not b!674489) (not b!674498) (not b!674496) (not b!674493) (not b!674492) (not b!674487) (not b!674506) (not b!674501) (not b!674505))
(check-sat)
