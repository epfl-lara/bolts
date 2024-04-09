; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26274 () Bool)

(assert start!26274)

(declare-fun b!271940 () Bool)

(declare-fun res!135972 () Bool)

(declare-fun e!174684 () Bool)

(assert (=> b!271940 (=> (not res!135972) (not e!174684))))

(declare-datatypes ((array!13360 0))(
  ( (array!13361 (arr!6329 (Array (_ BitVec 32) (_ BitVec 64))) (size!6681 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13360)

(declare-datatypes ((List!4158 0))(
  ( (Nil!4155) (Cons!4154 (h!4821 (_ BitVec 64)) (t!9248 List!4158)) )
))
(declare-fun arrayNoDuplicates!0 (array!13360 (_ BitVec 32) List!4158) Bool)

(assert (=> b!271940 (= res!135972 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4155))))

(declare-fun b!271941 () Bool)

(declare-fun res!135970 () Bool)

(assert (=> b!271941 (=> (not res!135970) (not e!174684))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271941 (= res!135970 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271942 () Bool)

(declare-fun e!174685 () Bool)

(assert (=> b!271942 (= e!174684 e!174685)))

(declare-fun res!135969 () Bool)

(assert (=> b!271942 (=> (not res!135969) (not e!174685))))

(declare-datatypes ((SeekEntryResult!1498 0))(
  ( (MissingZero!1498 (index!8162 (_ BitVec 32))) (Found!1498 (index!8163 (_ BitVec 32))) (Intermediate!1498 (undefined!2310 Bool) (index!8164 (_ BitVec 32)) (x!26455 (_ BitVec 32))) (Undefined!1498) (MissingVacant!1498 (index!8165 (_ BitVec 32))) )
))
(declare-fun lt!135923 () SeekEntryResult!1498)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271942 (= res!135969 (or (= lt!135923 (MissingZero!1498 i!1267)) (= lt!135923 (MissingVacant!1498 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13360 (_ BitVec 32)) SeekEntryResult!1498)

(assert (=> b!271942 (= lt!135923 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!271943 () Bool)

(declare-fun res!135971 () Bool)

(assert (=> b!271943 (=> (not res!135971) (not e!174684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271943 (= res!135971 (validKeyInArray!0 k0!2581))))

(declare-fun b!271944 () Bool)

(declare-fun res!135974 () Bool)

(assert (=> b!271944 (=> (not res!135974) (not e!174685))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!271944 (= res!135974 (not (= startIndex!26 i!1267)))))

(declare-fun b!271945 () Bool)

(declare-fun res!135968 () Bool)

(assert (=> b!271945 (=> (not res!135968) (not e!174685))))

(assert (=> b!271945 (= res!135968 (validKeyInArray!0 (select (arr!6329 a!3325) startIndex!26)))))

(declare-fun res!135973 () Bool)

(assert (=> start!26274 (=> (not res!135973) (not e!174684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26274 (= res!135973 (validMask!0 mask!3868))))

(assert (=> start!26274 e!174684))

(declare-fun array_inv!4283 (array!13360) Bool)

(assert (=> start!26274 (array_inv!4283 a!3325)))

(assert (=> start!26274 true))

(declare-fun b!271939 () Bool)

(declare-fun res!135975 () Bool)

(assert (=> b!271939 (=> (not res!135975) (not e!174685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13360 (_ BitVec 32)) Bool)

(assert (=> b!271939 (= res!135975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271946 () Bool)

(declare-fun res!135967 () Bool)

(assert (=> b!271946 (=> (not res!135967) (not e!174684))))

(assert (=> b!271946 (= res!135967 (and (= (size!6681 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6681 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6681 a!3325))))))

(declare-fun b!271947 () Bool)

(assert (=> b!271947 (= e!174685 (not true))))

(assert (=> b!271947 (arrayNoDuplicates!0 (array!13361 (store (arr!6329 a!3325) i!1267 k0!2581) (size!6681 a!3325)) #b00000000000000000000000000000000 Nil!4155)))

(declare-datatypes ((Unit!8462 0))(
  ( (Unit!8463) )
))
(declare-fun lt!135922 () Unit!8462)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13360 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4158) Unit!8462)

(assert (=> b!271947 (= lt!135922 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4155))))

(assert (= (and start!26274 res!135973) b!271946))

(assert (= (and b!271946 res!135967) b!271943))

(assert (= (and b!271943 res!135971) b!271940))

(assert (= (and b!271940 res!135972) b!271941))

(assert (= (and b!271941 res!135970) b!271942))

(assert (= (and b!271942 res!135969) b!271939))

(assert (= (and b!271939 res!135975) b!271944))

(assert (= (and b!271944 res!135974) b!271945))

(assert (= (and b!271945 res!135968) b!271947))

(declare-fun m!287131 () Bool)

(assert (=> b!271945 m!287131))

(assert (=> b!271945 m!287131))

(declare-fun m!287133 () Bool)

(assert (=> b!271945 m!287133))

(declare-fun m!287135 () Bool)

(assert (=> b!271947 m!287135))

(declare-fun m!287137 () Bool)

(assert (=> b!271947 m!287137))

(declare-fun m!287139 () Bool)

(assert (=> b!271947 m!287139))

(declare-fun m!287141 () Bool)

(assert (=> b!271942 m!287141))

(declare-fun m!287143 () Bool)

(assert (=> b!271940 m!287143))

(declare-fun m!287145 () Bool)

(assert (=> start!26274 m!287145))

(declare-fun m!287147 () Bool)

(assert (=> start!26274 m!287147))

(declare-fun m!287149 () Bool)

(assert (=> b!271941 m!287149))

(declare-fun m!287151 () Bool)

(assert (=> b!271943 m!287151))

(declare-fun m!287153 () Bool)

(assert (=> b!271939 m!287153))

(check-sat (not b!271947) (not b!271940) (not b!271945) (not b!271939) (not b!271942) (not b!271941) (not start!26274) (not b!271943))
(check-sat)
