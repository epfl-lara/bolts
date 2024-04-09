; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92534 () Bool)

(assert start!92534)

(declare-fun b!1051851 () Bool)

(declare-fun res!701086 () Bool)

(declare-fun e!597181 () Bool)

(assert (=> b!1051851 (=> (not res!701086) (not e!597181))))

(declare-datatypes ((array!66283 0))(
  ( (array!66284 (arr!31877 (Array (_ BitVec 32) (_ BitVec 64))) (size!32414 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66283)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051851 (= res!701086 (= (select (arr!31877 a!3488) i!1381) k0!2747))))

(declare-fun b!1051852 () Bool)

(declare-fun res!701088 () Bool)

(assert (=> b!1051852 (=> (not res!701088) (not e!597181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051852 (= res!701088 (validKeyInArray!0 k0!2747))))

(declare-fun b!1051854 () Bool)

(declare-fun e!597184 () Bool)

(assert (=> b!1051854 (= e!597181 e!597184)))

(declare-fun res!701097 () Bool)

(assert (=> b!1051854 (=> (not res!701097) (not e!597184))))

(declare-fun lt!464469 () array!66283)

(declare-fun arrayContainsKey!0 (array!66283 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051854 (= res!701097 (arrayContainsKey!0 lt!464469 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051854 (= lt!464469 (array!66284 (store (arr!31877 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32414 a!3488)))))

(declare-fun b!1051855 () Bool)

(declare-fun e!597179 () Bool)

(assert (=> b!1051855 (= e!597179 true)))

(declare-fun lt!464471 () Bool)

(declare-datatypes ((List!22320 0))(
  ( (Nil!22317) (Cons!22316 (h!23525 (_ BitVec 64)) (t!31634 List!22320)) )
))
(declare-fun contains!6161 (List!22320 (_ BitVec 64)) Bool)

(assert (=> b!1051855 (= lt!464471 (contains!6161 Nil!22317 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051856 () Bool)

(declare-fun e!597183 () Bool)

(declare-fun e!597178 () Bool)

(assert (=> b!1051856 (= e!597183 (not e!597178))))

(declare-fun res!701094 () Bool)

(assert (=> b!1051856 (=> res!701094 e!597178)))

(declare-fun lt!464472 () (_ BitVec 32))

(assert (=> b!1051856 (= res!701094 (or (bvsgt lt!464472 i!1381) (bvsle i!1381 lt!464472)))))

(declare-fun e!597180 () Bool)

(assert (=> b!1051856 e!597180))

(declare-fun res!701089 () Bool)

(assert (=> b!1051856 (=> (not res!701089) (not e!597180))))

(assert (=> b!1051856 (= res!701089 (= (select (store (arr!31877 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464472) k0!2747))))

(declare-fun b!1051857 () Bool)

(declare-fun e!597182 () Bool)

(assert (=> b!1051857 (= e!597180 e!597182)))

(declare-fun res!701087 () Bool)

(assert (=> b!1051857 (=> res!701087 e!597182)))

(assert (=> b!1051857 (= res!701087 (or (bvsgt lt!464472 i!1381) (bvsle i!1381 lt!464472)))))

(declare-fun b!1051858 () Bool)

(assert (=> b!1051858 (= e!597182 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051859 () Bool)

(declare-fun res!701096 () Bool)

(assert (=> b!1051859 (=> res!701096 e!597179)))

(declare-fun noDuplicate!1546 (List!22320) Bool)

(assert (=> b!1051859 (= res!701096 (not (noDuplicate!1546 Nil!22317)))))

(declare-fun b!1051860 () Bool)

(assert (=> b!1051860 (= e!597178 e!597179)))

(declare-fun res!701095 () Bool)

(assert (=> b!1051860 (=> res!701095 e!597179)))

(declare-fun lt!464468 () (_ BitVec 32))

(assert (=> b!1051860 (= res!701095 (or (bvslt lt!464472 #b00000000000000000000000000000000) (bvsge lt!464468 (size!32414 a!3488)) (bvsge lt!464472 (size!32414 a!3488))))))

(assert (=> b!1051860 (arrayContainsKey!0 a!3488 k0!2747 lt!464468)))

(declare-datatypes ((Unit!34435 0))(
  ( (Unit!34436) )
))
(declare-fun lt!464470 () Unit!34435)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66283 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34435)

(assert (=> b!1051860 (= lt!464470 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!464468))))

(assert (=> b!1051860 (= lt!464468 (bvadd #b00000000000000000000000000000001 lt!464472))))

(declare-fun arrayNoDuplicates!0 (array!66283 (_ BitVec 32) List!22320) Bool)

(assert (=> b!1051860 (arrayNoDuplicates!0 a!3488 lt!464472 Nil!22317)))

(declare-fun lt!464473 () Unit!34435)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66283 (_ BitVec 32) (_ BitVec 32)) Unit!34435)

(assert (=> b!1051860 (= lt!464473 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464472))))

(declare-fun b!1051853 () Bool)

(declare-fun res!701092 () Bool)

(assert (=> b!1051853 (=> res!701092 e!597179)))

(assert (=> b!1051853 (= res!701092 (contains!6161 Nil!22317 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!701090 () Bool)

(assert (=> start!92534 (=> (not res!701090) (not e!597181))))

(assert (=> start!92534 (= res!701090 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32414 a!3488)) (bvslt (size!32414 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92534 e!597181))

(assert (=> start!92534 true))

(declare-fun array_inv!24499 (array!66283) Bool)

(assert (=> start!92534 (array_inv!24499 a!3488)))

(declare-fun b!1051861 () Bool)

(assert (=> b!1051861 (= e!597184 e!597183)))

(declare-fun res!701091 () Bool)

(assert (=> b!1051861 (=> (not res!701091) (not e!597183))))

(assert (=> b!1051861 (= res!701091 (not (= lt!464472 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66283 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051861 (= lt!464472 (arrayScanForKey!0 lt!464469 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051862 () Bool)

(declare-fun res!701093 () Bool)

(assert (=> b!1051862 (=> (not res!701093) (not e!597181))))

(assert (=> b!1051862 (= res!701093 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22317))))

(assert (= (and start!92534 res!701090) b!1051862))

(assert (= (and b!1051862 res!701093) b!1051852))

(assert (= (and b!1051852 res!701088) b!1051851))

(assert (= (and b!1051851 res!701086) b!1051854))

(assert (= (and b!1051854 res!701097) b!1051861))

(assert (= (and b!1051861 res!701091) b!1051856))

(assert (= (and b!1051856 res!701089) b!1051857))

(assert (= (and b!1051857 (not res!701087)) b!1051858))

(assert (= (and b!1051856 (not res!701094)) b!1051860))

(assert (= (and b!1051860 (not res!701095)) b!1051859))

(assert (= (and b!1051859 (not res!701096)) b!1051853))

(assert (= (and b!1051853 (not res!701092)) b!1051855))

(declare-fun m!972431 () Bool)

(assert (=> b!1051860 m!972431))

(declare-fun m!972433 () Bool)

(assert (=> b!1051860 m!972433))

(declare-fun m!972435 () Bool)

(assert (=> b!1051860 m!972435))

(declare-fun m!972437 () Bool)

(assert (=> b!1051860 m!972437))

(declare-fun m!972439 () Bool)

(assert (=> b!1051855 m!972439))

(declare-fun m!972441 () Bool)

(assert (=> start!92534 m!972441))

(declare-fun m!972443 () Bool)

(assert (=> b!1051854 m!972443))

(declare-fun m!972445 () Bool)

(assert (=> b!1051854 m!972445))

(declare-fun m!972447 () Bool)

(assert (=> b!1051862 m!972447))

(assert (=> b!1051856 m!972445))

(declare-fun m!972449 () Bool)

(assert (=> b!1051856 m!972449))

(declare-fun m!972451 () Bool)

(assert (=> b!1051859 m!972451))

(declare-fun m!972453 () Bool)

(assert (=> b!1051858 m!972453))

(declare-fun m!972455 () Bool)

(assert (=> b!1051853 m!972455))

(declare-fun m!972457 () Bool)

(assert (=> b!1051861 m!972457))

(declare-fun m!972459 () Bool)

(assert (=> b!1051851 m!972459))

(declare-fun m!972461 () Bool)

(assert (=> b!1051852 m!972461))

(check-sat (not b!1051859) (not b!1051853) (not b!1051858) (not b!1051860) (not b!1051854) (not b!1051861) (not start!92534) (not b!1051852) (not b!1051862) (not b!1051855))
(check-sat)
