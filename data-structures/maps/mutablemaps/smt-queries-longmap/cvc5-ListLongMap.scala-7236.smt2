; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92514 () Bool)

(assert start!92514)

(declare-fun b!1051491 () Bool)

(declare-fun e!596942 () Bool)

(declare-fun e!596943 () Bool)

(assert (=> b!1051491 (= e!596942 (not e!596943))))

(declare-fun res!700736 () Bool)

(assert (=> b!1051491 (=> res!700736 e!596943)))

(declare-fun lt!464291 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051491 (= res!700736 (or (bvsgt lt!464291 i!1381) (bvsle i!1381 lt!464291)))))

(declare-fun e!596938 () Bool)

(assert (=> b!1051491 e!596938))

(declare-fun res!700730 () Bool)

(assert (=> b!1051491 (=> (not res!700730) (not e!596938))))

(declare-datatypes ((array!66263 0))(
  ( (array!66264 (arr!31867 (Array (_ BitVec 32) (_ BitVec 64))) (size!32404 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66263)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1051491 (= res!700730 (= (select (store (arr!31867 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464291) k!2747))))

(declare-fun b!1051492 () Bool)

(declare-fun e!596939 () Bool)

(assert (=> b!1051492 (= e!596943 e!596939)))

(declare-fun res!700729 () Bool)

(assert (=> b!1051492 (=> res!700729 e!596939)))

(declare-fun lt!464292 () (_ BitVec 32))

(assert (=> b!1051492 (= res!700729 (or (bvslt lt!464291 #b00000000000000000000000000000000) (bvsge lt!464292 (size!32404 a!3488)) (bvsge lt!464291 (size!32404 a!3488))))))

(declare-fun arrayContainsKey!0 (array!66263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051492 (arrayContainsKey!0 a!3488 k!2747 lt!464292)))

(declare-datatypes ((Unit!34415 0))(
  ( (Unit!34416) )
))
(declare-fun lt!464289 () Unit!34415)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66263 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34415)

(assert (=> b!1051492 (= lt!464289 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464292))))

(assert (=> b!1051492 (= lt!464292 (bvadd #b00000000000000000000000000000001 lt!464291))))

(declare-datatypes ((List!22310 0))(
  ( (Nil!22307) (Cons!22306 (h!23515 (_ BitVec 64)) (t!31624 List!22310)) )
))
(declare-fun arrayNoDuplicates!0 (array!66263 (_ BitVec 32) List!22310) Bool)

(assert (=> b!1051492 (arrayNoDuplicates!0 a!3488 lt!464291 Nil!22307)))

(declare-fun lt!464293 () Unit!34415)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66263 (_ BitVec 32) (_ BitVec 32)) Unit!34415)

(assert (=> b!1051492 (= lt!464293 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464291))))

(declare-fun b!1051493 () Bool)

(declare-fun res!700732 () Bool)

(declare-fun e!596944 () Bool)

(assert (=> b!1051493 (=> (not res!700732) (not e!596944))))

(assert (=> b!1051493 (= res!700732 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22307))))

(declare-fun res!700727 () Bool)

(assert (=> start!92514 (=> (not res!700727) (not e!596944))))

(assert (=> start!92514 (= res!700727 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32404 a!3488)) (bvslt (size!32404 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92514 e!596944))

(assert (=> start!92514 true))

(declare-fun array_inv!24489 (array!66263) Bool)

(assert (=> start!92514 (array_inv!24489 a!3488)))

(declare-fun b!1051494 () Bool)

(declare-fun res!700737 () Bool)

(assert (=> b!1051494 (=> res!700737 e!596939)))

(declare-fun noDuplicate!1536 (List!22310) Bool)

(assert (=> b!1051494 (= res!700737 (not (noDuplicate!1536 Nil!22307)))))

(declare-fun b!1051495 () Bool)

(declare-fun e!596945 () Bool)

(assert (=> b!1051495 (= e!596945 e!596942)))

(declare-fun res!700735 () Bool)

(assert (=> b!1051495 (=> (not res!700735) (not e!596942))))

(assert (=> b!1051495 (= res!700735 (not (= lt!464291 i!1381)))))

(declare-fun lt!464288 () array!66263)

(declare-fun arrayScanForKey!0 (array!66263 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051495 (= lt!464291 (arrayScanForKey!0 lt!464288 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051496 () Bool)

(declare-fun res!700731 () Bool)

(assert (=> b!1051496 (=> (not res!700731) (not e!596944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051496 (= res!700731 (validKeyInArray!0 k!2747))))

(declare-fun b!1051497 () Bool)

(declare-fun res!700733 () Bool)

(assert (=> b!1051497 (=> res!700733 e!596939)))

(declare-fun contains!6151 (List!22310 (_ BitVec 64)) Bool)

(assert (=> b!1051497 (= res!700733 (contains!6151 Nil!22307 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051498 () Bool)

(declare-fun res!700726 () Bool)

(assert (=> b!1051498 (=> (not res!700726) (not e!596944))))

(assert (=> b!1051498 (= res!700726 (= (select (arr!31867 a!3488) i!1381) k!2747))))

(declare-fun e!596941 () Bool)

(declare-fun b!1051499 () Bool)

(assert (=> b!1051499 (= e!596941 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051500 () Bool)

(assert (=> b!1051500 (= e!596944 e!596945)))

(declare-fun res!700734 () Bool)

(assert (=> b!1051500 (=> (not res!700734) (not e!596945))))

(assert (=> b!1051500 (= res!700734 (arrayContainsKey!0 lt!464288 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051500 (= lt!464288 (array!66264 (store (arr!31867 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32404 a!3488)))))

(declare-fun b!1051501 () Bool)

(assert (=> b!1051501 (= e!596938 e!596941)))

(declare-fun res!700728 () Bool)

(assert (=> b!1051501 (=> res!700728 e!596941)))

(assert (=> b!1051501 (= res!700728 (or (bvsgt lt!464291 i!1381) (bvsle i!1381 lt!464291)))))

(declare-fun b!1051502 () Bool)

(assert (=> b!1051502 (= e!596939 true)))

(declare-fun lt!464290 () Bool)

(assert (=> b!1051502 (= lt!464290 (contains!6151 Nil!22307 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92514 res!700727) b!1051493))

(assert (= (and b!1051493 res!700732) b!1051496))

(assert (= (and b!1051496 res!700731) b!1051498))

(assert (= (and b!1051498 res!700726) b!1051500))

(assert (= (and b!1051500 res!700734) b!1051495))

(assert (= (and b!1051495 res!700735) b!1051491))

(assert (= (and b!1051491 res!700730) b!1051501))

(assert (= (and b!1051501 (not res!700728)) b!1051499))

(assert (= (and b!1051491 (not res!700736)) b!1051492))

(assert (= (and b!1051492 (not res!700729)) b!1051494))

(assert (= (and b!1051494 (not res!700737)) b!1051497))

(assert (= (and b!1051497 (not res!700733)) b!1051502))

(declare-fun m!972111 () Bool)

(assert (=> start!92514 m!972111))

(declare-fun m!972113 () Bool)

(assert (=> b!1051502 m!972113))

(declare-fun m!972115 () Bool)

(assert (=> b!1051500 m!972115))

(declare-fun m!972117 () Bool)

(assert (=> b!1051500 m!972117))

(declare-fun m!972119 () Bool)

(assert (=> b!1051494 m!972119))

(declare-fun m!972121 () Bool)

(assert (=> b!1051495 m!972121))

(assert (=> b!1051491 m!972117))

(declare-fun m!972123 () Bool)

(assert (=> b!1051491 m!972123))

(declare-fun m!972125 () Bool)

(assert (=> b!1051493 m!972125))

(declare-fun m!972127 () Bool)

(assert (=> b!1051498 m!972127))

(declare-fun m!972129 () Bool)

(assert (=> b!1051499 m!972129))

(declare-fun m!972131 () Bool)

(assert (=> b!1051492 m!972131))

(declare-fun m!972133 () Bool)

(assert (=> b!1051492 m!972133))

(declare-fun m!972135 () Bool)

(assert (=> b!1051492 m!972135))

(declare-fun m!972137 () Bool)

(assert (=> b!1051492 m!972137))

(declare-fun m!972139 () Bool)

(assert (=> b!1051497 m!972139))

(declare-fun m!972141 () Bool)

(assert (=> b!1051496 m!972141))

(push 1)

