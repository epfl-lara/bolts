; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26272 () Bool)

(assert start!26272)

(declare-fun res!135941 () Bool)

(declare-fun e!174676 () Bool)

(assert (=> start!26272 (=> (not res!135941) (not e!174676))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26272 (= res!135941 (validMask!0 mask!3868))))

(assert (=> start!26272 e!174676))

(declare-datatypes ((array!13358 0))(
  ( (array!13359 (arr!6328 (Array (_ BitVec 32) (_ BitVec 64))) (size!6680 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13358)

(declare-fun array_inv!4282 (array!13358) Bool)

(assert (=> start!26272 (array_inv!4282 a!3325)))

(assert (=> start!26272 true))

(declare-fun b!271912 () Bool)

(declare-fun res!135945 () Bool)

(declare-fun e!174674 () Bool)

(assert (=> b!271912 (=> (not res!135945) (not e!174674))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271912 (= res!135945 (validKeyInArray!0 (select (arr!6328 a!3325) startIndex!26)))))

(declare-fun b!271913 () Bool)

(assert (=> b!271913 (= e!174676 e!174674)))

(declare-fun res!135942 () Bool)

(assert (=> b!271913 (=> (not res!135942) (not e!174674))))

(declare-datatypes ((SeekEntryResult!1497 0))(
  ( (MissingZero!1497 (index!8158 (_ BitVec 32))) (Found!1497 (index!8159 (_ BitVec 32))) (Intermediate!1497 (undefined!2309 Bool) (index!8160 (_ BitVec 32)) (x!26454 (_ BitVec 32))) (Undefined!1497) (MissingVacant!1497 (index!8161 (_ BitVec 32))) )
))
(declare-fun lt!135916 () SeekEntryResult!1497)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271913 (= res!135942 (or (= lt!135916 (MissingZero!1497 i!1267)) (= lt!135916 (MissingVacant!1497 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13358 (_ BitVec 32)) SeekEntryResult!1497)

(assert (=> b!271913 (= lt!135916 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271914 () Bool)

(declare-fun res!135944 () Bool)

(assert (=> b!271914 (=> (not res!135944) (not e!174676))))

(assert (=> b!271914 (= res!135944 (validKeyInArray!0 k!2581))))

(declare-fun b!271915 () Bool)

(declare-fun res!135948 () Bool)

(assert (=> b!271915 (=> (not res!135948) (not e!174676))))

(assert (=> b!271915 (= res!135948 (and (= (size!6680 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6680 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6680 a!3325))))))

(declare-fun b!271916 () Bool)

(declare-fun res!135946 () Bool)

(assert (=> b!271916 (=> (not res!135946) (not e!174676))))

(declare-datatypes ((List!4157 0))(
  ( (Nil!4154) (Cons!4153 (h!4820 (_ BitVec 64)) (t!9247 List!4157)) )
))
(declare-fun arrayNoDuplicates!0 (array!13358 (_ BitVec 32) List!4157) Bool)

(assert (=> b!271916 (= res!135946 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4154))))

(declare-fun b!271917 () Bool)

(declare-fun res!135940 () Bool)

(assert (=> b!271917 (=> (not res!135940) (not e!174674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13358 (_ BitVec 32)) Bool)

(assert (=> b!271917 (= res!135940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271918 () Bool)

(assert (=> b!271918 (= e!174674 (not true))))

(assert (=> b!271918 (arrayNoDuplicates!0 (array!13359 (store (arr!6328 a!3325) i!1267 k!2581) (size!6680 a!3325)) #b00000000000000000000000000000000 Nil!4154)))

(declare-datatypes ((Unit!8460 0))(
  ( (Unit!8461) )
))
(declare-fun lt!135917 () Unit!8460)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13358 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4157) Unit!8460)

(assert (=> b!271918 (= lt!135917 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4154))))

(declare-fun b!271919 () Bool)

(declare-fun res!135943 () Bool)

(assert (=> b!271919 (=> (not res!135943) (not e!174674))))

(assert (=> b!271919 (= res!135943 (not (= startIndex!26 i!1267)))))

(declare-fun b!271920 () Bool)

(declare-fun res!135947 () Bool)

(assert (=> b!271920 (=> (not res!135947) (not e!174676))))

(declare-fun arrayContainsKey!0 (array!13358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271920 (= res!135947 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26272 res!135941) b!271915))

(assert (= (and b!271915 res!135948) b!271914))

(assert (= (and b!271914 res!135944) b!271916))

(assert (= (and b!271916 res!135946) b!271920))

(assert (= (and b!271920 res!135947) b!271913))

(assert (= (and b!271913 res!135942) b!271917))

(assert (= (and b!271917 res!135940) b!271919))

(assert (= (and b!271919 res!135943) b!271912))

(assert (= (and b!271912 res!135945) b!271918))

(declare-fun m!287107 () Bool)

(assert (=> b!271912 m!287107))

(assert (=> b!271912 m!287107))

(declare-fun m!287109 () Bool)

(assert (=> b!271912 m!287109))

(declare-fun m!287111 () Bool)

(assert (=> b!271920 m!287111))

(declare-fun m!287113 () Bool)

(assert (=> b!271916 m!287113))

(declare-fun m!287115 () Bool)

(assert (=> b!271913 m!287115))

(declare-fun m!287117 () Bool)

(assert (=> b!271917 m!287117))

(declare-fun m!287119 () Bool)

(assert (=> b!271918 m!287119))

(declare-fun m!287121 () Bool)

(assert (=> b!271918 m!287121))

(declare-fun m!287123 () Bool)

(assert (=> b!271918 m!287123))

(declare-fun m!287125 () Bool)

(assert (=> b!271914 m!287125))

(declare-fun m!287127 () Bool)

(assert (=> start!26272 m!287127))

(declare-fun m!287129 () Bool)

(assert (=> start!26272 m!287129))

(push 1)

