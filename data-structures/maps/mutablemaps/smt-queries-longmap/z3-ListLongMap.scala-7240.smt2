; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92540 () Bool)

(assert start!92540)

(declare-fun b!1051959 () Bool)

(declare-fun e!597250 () Bool)

(declare-fun e!597256 () Bool)

(assert (=> b!1051959 (= e!597250 (not e!597256))))

(declare-fun res!701202 () Bool)

(assert (=> b!1051959 (=> res!701202 e!597256)))

(declare-fun lt!464527 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051959 (= res!701202 (or (bvsgt lt!464527 i!1381) (bvsle i!1381 lt!464527)))))

(declare-fun e!597254 () Bool)

(assert (=> b!1051959 e!597254))

(declare-fun res!701204 () Bool)

(assert (=> b!1051959 (=> (not res!701204) (not e!597254))))

(declare-datatypes ((array!66289 0))(
  ( (array!66290 (arr!31880 (Array (_ BitVec 32) (_ BitVec 64))) (size!32417 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66289)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1051959 (= res!701204 (= (select (store (arr!31880 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464527) k0!2747))))

(declare-fun b!1051960 () Bool)

(declare-fun e!597251 () Bool)

(assert (=> b!1051960 (= e!597251 e!597250)))

(declare-fun res!701205 () Bool)

(assert (=> b!1051960 (=> (not res!701205) (not e!597250))))

(assert (=> b!1051960 (= res!701205 (not (= lt!464527 i!1381)))))

(declare-fun lt!464523 () array!66289)

(declare-fun arrayScanForKey!0 (array!66289 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051960 (= lt!464527 (arrayScanForKey!0 lt!464523 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051961 () Bool)

(declare-fun e!597253 () Bool)

(assert (=> b!1051961 (= e!597253 e!597251)))

(declare-fun res!701197 () Bool)

(assert (=> b!1051961 (=> (not res!701197) (not e!597251))))

(declare-fun arrayContainsKey!0 (array!66289 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051961 (= res!701197 (arrayContainsKey!0 lt!464523 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051961 (= lt!464523 (array!66290 (store (arr!31880 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32417 a!3488)))))

(declare-fun b!1051962 () Bool)

(declare-fun res!701198 () Bool)

(declare-fun e!597252 () Bool)

(assert (=> b!1051962 (=> res!701198 e!597252)))

(declare-datatypes ((List!22323 0))(
  ( (Nil!22320) (Cons!22319 (h!23528 (_ BitVec 64)) (t!31637 List!22323)) )
))
(declare-fun noDuplicate!1549 (List!22323) Bool)

(assert (=> b!1051962 (= res!701198 (not (noDuplicate!1549 Nil!22320)))))

(declare-fun b!1051963 () Bool)

(assert (=> b!1051963 (= e!597252 true)))

(declare-fun lt!464525 () Bool)

(declare-fun contains!6164 (List!22323 (_ BitVec 64)) Bool)

(assert (=> b!1051963 (= lt!464525 (contains!6164 Nil!22320 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051964 () Bool)

(declare-fun res!701195 () Bool)

(assert (=> b!1051964 (=> (not res!701195) (not e!597253))))

(assert (=> b!1051964 (= res!701195 (= (select (arr!31880 a!3488) i!1381) k0!2747))))

(declare-fun e!597257 () Bool)

(declare-fun b!1051965 () Bool)

(assert (=> b!1051965 (= e!597257 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051966 () Bool)

(declare-fun res!701200 () Bool)

(assert (=> b!1051966 (=> (not res!701200) (not e!597253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051966 (= res!701200 (validKeyInArray!0 k0!2747))))

(declare-fun b!1051967 () Bool)

(declare-fun res!701196 () Bool)

(assert (=> b!1051967 (=> res!701196 e!597252)))

(assert (=> b!1051967 (= res!701196 (contains!6164 Nil!22320 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051968 () Bool)

(assert (=> b!1051968 (= e!597256 e!597252)))

(declare-fun res!701203 () Bool)

(assert (=> b!1051968 (=> res!701203 e!597252)))

(declare-fun lt!464524 () (_ BitVec 32))

(assert (=> b!1051968 (= res!701203 (or (bvslt lt!464527 #b00000000000000000000000000000000) (bvsge lt!464524 (size!32417 a!3488)) (bvsge lt!464527 (size!32417 a!3488))))))

(assert (=> b!1051968 (arrayContainsKey!0 a!3488 k0!2747 lt!464524)))

(declare-datatypes ((Unit!34441 0))(
  ( (Unit!34442) )
))
(declare-fun lt!464522 () Unit!34441)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66289 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34441)

(assert (=> b!1051968 (= lt!464522 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464524))))

(assert (=> b!1051968 (= lt!464524 (bvadd #b00000000000000000000000000000001 lt!464527))))

(declare-fun arrayNoDuplicates!0 (array!66289 (_ BitVec 32) List!22323) Bool)

(assert (=> b!1051968 (arrayNoDuplicates!0 a!3488 lt!464527 Nil!22320)))

(declare-fun lt!464526 () Unit!34441)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66289 (_ BitVec 32) (_ BitVec 32)) Unit!34441)

(assert (=> b!1051968 (= lt!464526 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464527))))

(declare-fun res!701199 () Bool)

(assert (=> start!92540 (=> (not res!701199) (not e!597253))))

(assert (=> start!92540 (= res!701199 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32417 a!3488)) (bvslt (size!32417 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92540 e!597253))

(assert (=> start!92540 true))

(declare-fun array_inv!24502 (array!66289) Bool)

(assert (=> start!92540 (array_inv!24502 a!3488)))

(declare-fun b!1051969 () Bool)

(assert (=> b!1051969 (= e!597254 e!597257)))

(declare-fun res!701194 () Bool)

(assert (=> b!1051969 (=> res!701194 e!597257)))

(assert (=> b!1051969 (= res!701194 (or (bvsgt lt!464527 i!1381) (bvsle i!1381 lt!464527)))))

(declare-fun b!1051970 () Bool)

(declare-fun res!701201 () Bool)

(assert (=> b!1051970 (=> (not res!701201) (not e!597253))))

(assert (=> b!1051970 (= res!701201 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22320))))

(assert (= (and start!92540 res!701199) b!1051970))

(assert (= (and b!1051970 res!701201) b!1051966))

(assert (= (and b!1051966 res!701200) b!1051964))

(assert (= (and b!1051964 res!701195) b!1051961))

(assert (= (and b!1051961 res!701197) b!1051960))

(assert (= (and b!1051960 res!701205) b!1051959))

(assert (= (and b!1051959 res!701204) b!1051969))

(assert (= (and b!1051969 (not res!701194)) b!1051965))

(assert (= (and b!1051959 (not res!701202)) b!1051968))

(assert (= (and b!1051968 (not res!701203)) b!1051962))

(assert (= (and b!1051962 (not res!701198)) b!1051967))

(assert (= (and b!1051967 (not res!701196)) b!1051963))

(declare-fun m!972527 () Bool)

(assert (=> b!1051966 m!972527))

(declare-fun m!972529 () Bool)

(assert (=> b!1051968 m!972529))

(declare-fun m!972531 () Bool)

(assert (=> b!1051968 m!972531))

(declare-fun m!972533 () Bool)

(assert (=> b!1051968 m!972533))

(declare-fun m!972535 () Bool)

(assert (=> b!1051968 m!972535))

(declare-fun m!972537 () Bool)

(assert (=> start!92540 m!972537))

(declare-fun m!972539 () Bool)

(assert (=> b!1051963 m!972539))

(declare-fun m!972541 () Bool)

(assert (=> b!1051967 m!972541))

(declare-fun m!972543 () Bool)

(assert (=> b!1051961 m!972543))

(declare-fun m!972545 () Bool)

(assert (=> b!1051961 m!972545))

(declare-fun m!972547 () Bool)

(assert (=> b!1051965 m!972547))

(assert (=> b!1051959 m!972545))

(declare-fun m!972549 () Bool)

(assert (=> b!1051959 m!972549))

(declare-fun m!972551 () Bool)

(assert (=> b!1051962 m!972551))

(declare-fun m!972553 () Bool)

(assert (=> b!1051964 m!972553))

(declare-fun m!972555 () Bool)

(assert (=> b!1051960 m!972555))

(declare-fun m!972557 () Bool)

(assert (=> b!1051970 m!972557))

(check-sat (not b!1051968) (not b!1051960) (not b!1051961) (not b!1051963) (not b!1051965) (not b!1051966) (not b!1051970) (not b!1051967) (not start!92540) (not b!1051962))
(check-sat)
