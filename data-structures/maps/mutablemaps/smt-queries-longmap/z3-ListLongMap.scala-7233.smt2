; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92498 () Bool)

(assert start!92498)

(declare-fun e!596772 () Bool)

(declare-datatypes ((array!66247 0))(
  ( (array!66248 (arr!31859 (Array (_ BitVec 32) (_ BitVec 64))) (size!32396 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66247)

(declare-fun b!1051269 () Bool)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051269 (= e!596772 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051270 () Bool)

(declare-fun e!596771 () Bool)

(assert (=> b!1051270 (= e!596771 true)))

(declare-fun lt!464212 () (_ BitVec 32))

(declare-datatypes ((List!22302 0))(
  ( (Nil!22299) (Cons!22298 (h!23507 (_ BitVec 64)) (t!31616 List!22302)) )
))
(declare-fun arrayNoDuplicates!0 (array!66247 (_ BitVec 32) List!22302) Bool)

(assert (=> b!1051270 (arrayNoDuplicates!0 a!3488 lt!464212 Nil!22299)))

(declare-datatypes ((Unit!34399 0))(
  ( (Unit!34400) )
))
(declare-fun lt!464210 () Unit!34399)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66247 (_ BitVec 32) (_ BitVec 32)) Unit!34399)

(assert (=> b!1051270 (= lt!464210 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464212))))

(declare-fun b!1051271 () Bool)

(declare-fun e!596769 () Bool)

(declare-fun e!596774 () Bool)

(assert (=> b!1051271 (= e!596769 e!596774)))

(declare-fun res!700509 () Bool)

(assert (=> b!1051271 (=> (not res!700509) (not e!596774))))

(declare-fun lt!464211 () array!66247)

(assert (=> b!1051271 (= res!700509 (arrayContainsKey!0 lt!464211 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051271 (= lt!464211 (array!66248 (store (arr!31859 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32396 a!3488)))))

(declare-fun b!1051272 () Bool)

(declare-fun res!700505 () Bool)

(assert (=> b!1051272 (=> (not res!700505) (not e!596769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051272 (= res!700505 (validKeyInArray!0 k0!2747))))

(declare-fun res!700510 () Bool)

(assert (=> start!92498 (=> (not res!700510) (not e!596769))))

(assert (=> start!92498 (= res!700510 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32396 a!3488)) (bvslt (size!32396 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92498 e!596769))

(assert (=> start!92498 true))

(declare-fun array_inv!24481 (array!66247) Bool)

(assert (=> start!92498 (array_inv!24481 a!3488)))

(declare-fun b!1051273 () Bool)

(declare-fun res!700511 () Bool)

(assert (=> b!1051273 (=> (not res!700511) (not e!596769))))

(assert (=> b!1051273 (= res!700511 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22299))))

(declare-fun b!1051274 () Bool)

(declare-fun res!700512 () Bool)

(assert (=> b!1051274 (=> (not res!700512) (not e!596769))))

(assert (=> b!1051274 (= res!700512 (= (select (arr!31859 a!3488) i!1381) k0!2747))))

(declare-fun b!1051275 () Bool)

(declare-fun e!596773 () Bool)

(assert (=> b!1051275 (= e!596773 (not e!596771))))

(declare-fun res!700508 () Bool)

(assert (=> b!1051275 (=> res!700508 e!596771)))

(assert (=> b!1051275 (= res!700508 (or (bvsgt lt!464212 i!1381) (bvsle i!1381 lt!464212)))))

(declare-fun e!596768 () Bool)

(assert (=> b!1051275 e!596768))

(declare-fun res!700507 () Bool)

(assert (=> b!1051275 (=> (not res!700507) (not e!596768))))

(assert (=> b!1051275 (= res!700507 (= (select (store (arr!31859 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464212) k0!2747))))

(declare-fun b!1051276 () Bool)

(assert (=> b!1051276 (= e!596768 e!596772)))

(declare-fun res!700506 () Bool)

(assert (=> b!1051276 (=> res!700506 e!596772)))

(assert (=> b!1051276 (= res!700506 (or (bvsgt lt!464212 i!1381) (bvsle i!1381 lt!464212)))))

(declare-fun b!1051277 () Bool)

(assert (=> b!1051277 (= e!596774 e!596773)))

(declare-fun res!700504 () Bool)

(assert (=> b!1051277 (=> (not res!700504) (not e!596773))))

(assert (=> b!1051277 (= res!700504 (not (= lt!464212 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66247 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051277 (= lt!464212 (arrayScanForKey!0 lt!464211 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92498 res!700510) b!1051273))

(assert (= (and b!1051273 res!700511) b!1051272))

(assert (= (and b!1051272 res!700505) b!1051274))

(assert (= (and b!1051274 res!700512) b!1051271))

(assert (= (and b!1051271 res!700509) b!1051277))

(assert (= (and b!1051277 res!700504) b!1051275))

(assert (= (and b!1051275 res!700507) b!1051276))

(assert (= (and b!1051276 (not res!700506)) b!1051269))

(assert (= (and b!1051275 (not res!700508)) b!1051270))

(declare-fun m!971935 () Bool)

(assert (=> b!1051275 m!971935))

(declare-fun m!971937 () Bool)

(assert (=> b!1051275 m!971937))

(declare-fun m!971939 () Bool)

(assert (=> b!1051269 m!971939))

(declare-fun m!971941 () Bool)

(assert (=> b!1051273 m!971941))

(declare-fun m!971943 () Bool)

(assert (=> b!1051271 m!971943))

(assert (=> b!1051271 m!971935))

(declare-fun m!971945 () Bool)

(assert (=> start!92498 m!971945))

(declare-fun m!971947 () Bool)

(assert (=> b!1051277 m!971947))

(declare-fun m!971949 () Bool)

(assert (=> b!1051272 m!971949))

(declare-fun m!971951 () Bool)

(assert (=> b!1051270 m!971951))

(declare-fun m!971953 () Bool)

(assert (=> b!1051270 m!971953))

(declare-fun m!971955 () Bool)

(assert (=> b!1051274 m!971955))

(check-sat (not b!1051269) (not b!1051272) (not b!1051277) (not start!92498) (not b!1051273) (not b!1051271) (not b!1051270))
(check-sat)
