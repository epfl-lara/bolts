; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26346 () Bool)

(assert start!26346)

(declare-fun b!272911 () Bool)

(declare-fun e!175023 () Bool)

(declare-fun e!175024 () Bool)

(assert (=> b!272911 (= e!175023 e!175024)))

(declare-fun res!136943 () Bool)

(assert (=> b!272911 (=> (not res!136943) (not e!175024))))

(declare-datatypes ((SeekEntryResult!1534 0))(
  ( (MissingZero!1534 (index!8306 (_ BitVec 32))) (Found!1534 (index!8307 (_ BitVec 32))) (Intermediate!1534 (undefined!2346 Bool) (index!8308 (_ BitVec 32)) (x!26587 (_ BitVec 32))) (Undefined!1534) (MissingVacant!1534 (index!8309 (_ BitVec 32))) )
))
(declare-fun lt!136168 () SeekEntryResult!1534)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272911 (= res!136943 (or (= lt!136168 (MissingZero!1534 i!1267)) (= lt!136168 (MissingVacant!1534 i!1267))))))

(declare-datatypes ((array!13432 0))(
  ( (array!13433 (arr!6365 (Array (_ BitVec 32) (_ BitVec 64))) (size!6717 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13432)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13432 (_ BitVec 32)) SeekEntryResult!1534)

(assert (=> b!272911 (= lt!136168 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272912 () Bool)

(declare-fun e!175022 () Bool)

(assert (=> b!272912 (= e!175024 e!175022)))

(declare-fun res!136946 () Bool)

(assert (=> b!272912 (=> (not res!136946) (not e!175022))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272912 (= res!136946 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136169 () array!13432)

(assert (=> b!272912 (= lt!136169 (array!13433 (store (arr!6365 a!3325) i!1267 k0!2581) (size!6717 a!3325)))))

(declare-fun b!272913 () Bool)

(declare-fun res!136944 () Bool)

(assert (=> b!272913 (=> (not res!136944) (not e!175024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13432 (_ BitVec 32)) Bool)

(assert (=> b!272913 (= res!136944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272914 () Bool)

(declare-fun res!136939 () Bool)

(assert (=> b!272914 (=> (not res!136939) (not e!175022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272914 (= res!136939 (validKeyInArray!0 (select (arr!6365 a!3325) startIndex!26)))))

(declare-fun b!272915 () Bool)

(declare-fun res!136945 () Bool)

(assert (=> b!272915 (=> (not res!136945) (not e!175023))))

(assert (=> b!272915 (= res!136945 (validKeyInArray!0 k0!2581))))

(declare-fun b!272916 () Bool)

(assert (=> b!272916 (= e!175022 (not true))))

(assert (=> b!272916 (= (seekEntryOrOpen!0 (select (arr!6365 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6365 a!3325) i!1267 k0!2581) startIndex!26) lt!136169 mask!3868))))

(declare-datatypes ((Unit!8534 0))(
  ( (Unit!8535) )
))
(declare-fun lt!136166 () Unit!8534)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13432 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8534)

(assert (=> b!272916 (= lt!136166 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4194 0))(
  ( (Nil!4191) (Cons!4190 (h!4857 (_ BitVec 64)) (t!9284 List!4194)) )
))
(declare-fun arrayNoDuplicates!0 (array!13432 (_ BitVec 32) List!4194) Bool)

(assert (=> b!272916 (arrayNoDuplicates!0 lt!136169 #b00000000000000000000000000000000 Nil!4191)))

(declare-fun lt!136167 () Unit!8534)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13432 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4194) Unit!8534)

(assert (=> b!272916 (= lt!136167 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4191))))

(declare-fun res!136947 () Bool)

(assert (=> start!26346 (=> (not res!136947) (not e!175023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26346 (= res!136947 (validMask!0 mask!3868))))

(assert (=> start!26346 e!175023))

(declare-fun array_inv!4319 (array!13432) Bool)

(assert (=> start!26346 (array_inv!4319 a!3325)))

(assert (=> start!26346 true))

(declare-fun b!272917 () Bool)

(declare-fun res!136942 () Bool)

(assert (=> b!272917 (=> (not res!136942) (not e!175023))))

(assert (=> b!272917 (= res!136942 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4191))))

(declare-fun b!272918 () Bool)

(declare-fun res!136940 () Bool)

(assert (=> b!272918 (=> (not res!136940) (not e!175023))))

(assert (=> b!272918 (= res!136940 (and (= (size!6717 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6717 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6717 a!3325))))))

(declare-fun b!272919 () Bool)

(declare-fun res!136941 () Bool)

(assert (=> b!272919 (=> (not res!136941) (not e!175023))))

(declare-fun arrayContainsKey!0 (array!13432 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272919 (= res!136941 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26346 res!136947) b!272918))

(assert (= (and b!272918 res!136940) b!272915))

(assert (= (and b!272915 res!136945) b!272917))

(assert (= (and b!272917 res!136942) b!272919))

(assert (= (and b!272919 res!136941) b!272911))

(assert (= (and b!272911 res!136943) b!272913))

(assert (= (and b!272913 res!136944) b!272912))

(assert (= (and b!272912 res!136946) b!272914))

(assert (= (and b!272914 res!136939) b!272916))

(declare-fun m!288027 () Bool)

(assert (=> b!272912 m!288027))

(declare-fun m!288029 () Bool)

(assert (=> b!272911 m!288029))

(declare-fun m!288031 () Bool)

(assert (=> b!272913 m!288031))

(declare-fun m!288033 () Bool)

(assert (=> b!272914 m!288033))

(assert (=> b!272914 m!288033))

(declare-fun m!288035 () Bool)

(assert (=> b!272914 m!288035))

(declare-fun m!288037 () Bool)

(assert (=> b!272919 m!288037))

(declare-fun m!288039 () Bool)

(assert (=> b!272917 m!288039))

(declare-fun m!288041 () Bool)

(assert (=> start!26346 m!288041))

(declare-fun m!288043 () Bool)

(assert (=> start!26346 m!288043))

(declare-fun m!288045 () Bool)

(assert (=> b!272915 m!288045))

(declare-fun m!288047 () Bool)

(assert (=> b!272916 m!288047))

(assert (=> b!272916 m!288027))

(assert (=> b!272916 m!288047))

(declare-fun m!288049 () Bool)

(assert (=> b!272916 m!288049))

(assert (=> b!272916 m!288033))

(declare-fun m!288051 () Bool)

(assert (=> b!272916 m!288051))

(assert (=> b!272916 m!288033))

(declare-fun m!288053 () Bool)

(assert (=> b!272916 m!288053))

(declare-fun m!288055 () Bool)

(assert (=> b!272916 m!288055))

(declare-fun m!288057 () Bool)

(assert (=> b!272916 m!288057))

(check-sat (not b!272915) (not b!272916) (not start!26346) (not b!272914) (not b!272911) (not b!272917) (not b!272919) (not b!272913))
(check-sat)
