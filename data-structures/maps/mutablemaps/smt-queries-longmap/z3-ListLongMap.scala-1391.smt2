; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27210 () Bool)

(assert start!27210)

(declare-fun b!281482 () Bool)

(declare-fun res!144590 () Bool)

(declare-fun e!178889 () Bool)

(assert (=> b!281482 (=> (not res!144590) (not e!178889))))

(declare-datatypes ((array!14017 0))(
  ( (array!14018 (arr!6650 (Array (_ BitVec 32) (_ BitVec 64))) (size!7002 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14017)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14017 (_ BitVec 32)) Bool)

(assert (=> b!281482 (= res!144590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281483 () Bool)

(declare-fun e!178890 () Bool)

(assert (=> b!281483 (= e!178889 e!178890)))

(declare-fun res!144589 () Bool)

(assert (=> b!281483 (=> (not res!144589) (not e!178890))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281483 (= res!144589 (not (= startIndex!26 i!1267)))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!139101 () array!14017)

(assert (=> b!281483 (= lt!139101 (array!14018 (store (arr!6650 a!3325) i!1267 k0!2581) (size!7002 a!3325)))))

(declare-fun b!281484 () Bool)

(declare-fun res!144597 () Bool)

(declare-fun e!178891 () Bool)

(assert (=> b!281484 (=> (not res!144597) (not e!178891))))

(declare-datatypes ((List!4479 0))(
  ( (Nil!4476) (Cons!4475 (h!5145 (_ BitVec 64)) (t!9569 List!4479)) )
))
(declare-fun arrayNoDuplicates!0 (array!14017 (_ BitVec 32) List!4479) Bool)

(assert (=> b!281484 (= res!144597 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4476))))

(declare-fun b!281485 () Bool)

(declare-fun res!144591 () Bool)

(assert (=> b!281485 (=> (not res!144591) (not e!178891))))

(assert (=> b!281485 (= res!144591 (and (= (size!7002 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7002 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7002 a!3325))))))

(declare-fun b!281486 () Bool)

(declare-fun res!144592 () Bool)

(assert (=> b!281486 (=> (not res!144592) (not e!178891))))

(declare-fun arrayContainsKey!0 (array!14017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281486 (= res!144592 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281487 () Bool)

(assert (=> b!281487 (= e!178891 e!178889)))

(declare-fun res!144594 () Bool)

(assert (=> b!281487 (=> (not res!144594) (not e!178889))))

(declare-datatypes ((SeekEntryResult!1819 0))(
  ( (MissingZero!1819 (index!9446 (_ BitVec 32))) (Found!1819 (index!9447 (_ BitVec 32))) (Intermediate!1819 (undefined!2631 Bool) (index!9448 (_ BitVec 32)) (x!27641 (_ BitVec 32))) (Undefined!1819) (MissingVacant!1819 (index!9449 (_ BitVec 32))) )
))
(declare-fun lt!139103 () SeekEntryResult!1819)

(assert (=> b!281487 (= res!144594 (or (= lt!139103 (MissingZero!1819 i!1267)) (= lt!139103 (MissingVacant!1819 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14017 (_ BitVec 32)) SeekEntryResult!1819)

(assert (=> b!281487 (= lt!139103 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281488 () Bool)

(declare-fun res!144593 () Bool)

(assert (=> b!281488 (=> (not res!144593) (not e!178891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281488 (= res!144593 (validKeyInArray!0 k0!2581))))

(declare-fun res!144595 () Bool)

(assert (=> start!27210 (=> (not res!144595) (not e!178891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27210 (= res!144595 (validMask!0 mask!3868))))

(assert (=> start!27210 e!178891))

(declare-fun array_inv!4604 (array!14017) Bool)

(assert (=> start!27210 (array_inv!4604 a!3325)))

(assert (=> start!27210 true))

(declare-fun b!281489 () Bool)

(assert (=> b!281489 (= e!178890 (not true))))

(assert (=> b!281489 (= (seekEntryOrOpen!0 (select (arr!6650 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6650 a!3325) i!1267 k0!2581) startIndex!26) lt!139101 mask!3868))))

(declare-datatypes ((Unit!8901 0))(
  ( (Unit!8902) )
))
(declare-fun lt!139102 () Unit!8901)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14017 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8901)

(assert (=> b!281489 (= lt!139102 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!281489 (arrayNoDuplicates!0 lt!139101 #b00000000000000000000000000000000 Nil!4476)))

(declare-fun lt!139100 () Unit!8901)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14017 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4479) Unit!8901)

(assert (=> b!281489 (= lt!139100 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4476))))

(declare-fun b!281490 () Bool)

(declare-fun res!144596 () Bool)

(assert (=> b!281490 (=> (not res!144596) (not e!178890))))

(assert (=> b!281490 (= res!144596 (validKeyInArray!0 (select (arr!6650 a!3325) startIndex!26)))))

(assert (= (and start!27210 res!144595) b!281485))

(assert (= (and b!281485 res!144591) b!281488))

(assert (= (and b!281488 res!144593) b!281484))

(assert (= (and b!281484 res!144597) b!281486))

(assert (= (and b!281486 res!144592) b!281487))

(assert (= (and b!281487 res!144594) b!281482))

(assert (= (and b!281482 res!144590) b!281483))

(assert (= (and b!281483 res!144589) b!281490))

(assert (= (and b!281490 res!144596) b!281489))

(declare-fun m!295845 () Bool)

(assert (=> b!281483 m!295845))

(declare-fun m!295847 () Bool)

(assert (=> b!281482 m!295847))

(declare-fun m!295849 () Bool)

(assert (=> b!281490 m!295849))

(assert (=> b!281490 m!295849))

(declare-fun m!295851 () Bool)

(assert (=> b!281490 m!295851))

(declare-fun m!295853 () Bool)

(assert (=> b!281487 m!295853))

(declare-fun m!295855 () Bool)

(assert (=> b!281484 m!295855))

(assert (=> b!281489 m!295845))

(assert (=> b!281489 m!295849))

(declare-fun m!295857 () Bool)

(assert (=> b!281489 m!295857))

(declare-fun m!295859 () Bool)

(assert (=> b!281489 m!295859))

(assert (=> b!281489 m!295849))

(declare-fun m!295861 () Bool)

(assert (=> b!281489 m!295861))

(declare-fun m!295863 () Bool)

(assert (=> b!281489 m!295863))

(declare-fun m!295865 () Bool)

(assert (=> b!281489 m!295865))

(declare-fun m!295867 () Bool)

(assert (=> b!281489 m!295867))

(assert (=> b!281489 m!295865))

(declare-fun m!295869 () Bool)

(assert (=> b!281488 m!295869))

(declare-fun m!295871 () Bool)

(assert (=> b!281486 m!295871))

(declare-fun m!295873 () Bool)

(assert (=> start!27210 m!295873))

(declare-fun m!295875 () Bool)

(assert (=> start!27210 m!295875))

(check-sat (not b!281482) (not b!281488) (not b!281489) (not b!281486) (not b!281490) (not start!27210) (not b!281487) (not b!281484))
(check-sat)
