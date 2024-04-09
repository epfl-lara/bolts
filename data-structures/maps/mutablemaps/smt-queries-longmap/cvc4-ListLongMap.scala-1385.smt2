; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27176 () Bool)

(assert start!27176)

(declare-fun b!281023 () Bool)

(declare-fun res!144130 () Bool)

(declare-fun e!178730 () Bool)

(assert (=> b!281023 (=> (not res!144130) (not e!178730))))

(declare-datatypes ((array!13983 0))(
  ( (array!13984 (arr!6633 (Array (_ BitVec 32) (_ BitVec 64))) (size!6985 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13983)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13983 (_ BitVec 32)) Bool)

(assert (=> b!281023 (= res!144130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281024 () Bool)

(declare-fun res!144136 () Bool)

(declare-fun e!178732 () Bool)

(assert (=> b!281024 (=> (not res!144136) (not e!178732))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281024 (= res!144136 (validKeyInArray!0 k!2581))))

(declare-fun b!281025 () Bool)

(declare-fun res!144137 () Bool)

(assert (=> b!281025 (=> (not res!144137) (not e!178732))))

(declare-fun arrayContainsKey!0 (array!13983 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281025 (= res!144137 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281026 () Bool)

(assert (=> b!281026 (= e!178730 (not true))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((List!4462 0))(
  ( (Nil!4459) (Cons!4458 (h!5128 (_ BitVec 64)) (t!9552 List!4462)) )
))
(declare-fun arrayNoDuplicates!0 (array!13983 (_ BitVec 32) List!4462) Bool)

(assert (=> b!281026 (arrayNoDuplicates!0 (array!13984 (store (arr!6633 a!3325) i!1267 k!2581) (size!6985 a!3325)) #b00000000000000000000000000000000 Nil!4459)))

(declare-datatypes ((Unit!8867 0))(
  ( (Unit!8868) )
))
(declare-fun lt!138989 () Unit!8867)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13983 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4462) Unit!8867)

(assert (=> b!281026 (= lt!138989 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4459))))

(declare-fun b!281027 () Bool)

(declare-fun res!144131 () Bool)

(assert (=> b!281027 (=> (not res!144131) (not e!178730))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281027 (= res!144131 (validKeyInArray!0 (select (arr!6633 a!3325) startIndex!26)))))

(declare-fun b!281028 () Bool)

(declare-fun res!144135 () Bool)

(assert (=> b!281028 (=> (not res!144135) (not e!178732))))

(assert (=> b!281028 (= res!144135 (and (= (size!6985 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6985 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6985 a!3325))))))

(declare-fun b!281029 () Bool)

(declare-fun res!144134 () Bool)

(assert (=> b!281029 (=> (not res!144134) (not e!178730))))

(assert (=> b!281029 (= res!144134 (not (= startIndex!26 i!1267)))))

(declare-fun b!281030 () Bool)

(declare-fun res!144138 () Bool)

(assert (=> b!281030 (=> (not res!144138) (not e!178732))))

(assert (=> b!281030 (= res!144138 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4459))))

(declare-fun b!281031 () Bool)

(assert (=> b!281031 (= e!178732 e!178730)))

(declare-fun res!144133 () Bool)

(assert (=> b!281031 (=> (not res!144133) (not e!178730))))

(declare-datatypes ((SeekEntryResult!1802 0))(
  ( (MissingZero!1802 (index!9378 (_ BitVec 32))) (Found!1802 (index!9379 (_ BitVec 32))) (Intermediate!1802 (undefined!2614 Bool) (index!9380 (_ BitVec 32)) (x!27576 (_ BitVec 32))) (Undefined!1802) (MissingVacant!1802 (index!9381 (_ BitVec 32))) )
))
(declare-fun lt!138988 () SeekEntryResult!1802)

(assert (=> b!281031 (= res!144133 (or (= lt!138988 (MissingZero!1802 i!1267)) (= lt!138988 (MissingVacant!1802 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13983 (_ BitVec 32)) SeekEntryResult!1802)

(assert (=> b!281031 (= lt!138988 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!144132 () Bool)

(assert (=> start!27176 (=> (not res!144132) (not e!178732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27176 (= res!144132 (validMask!0 mask!3868))))

(assert (=> start!27176 e!178732))

(declare-fun array_inv!4587 (array!13983) Bool)

(assert (=> start!27176 (array_inv!4587 a!3325)))

(assert (=> start!27176 true))

(assert (= (and start!27176 res!144132) b!281028))

(assert (= (and b!281028 res!144135) b!281024))

(assert (= (and b!281024 res!144136) b!281030))

(assert (= (and b!281030 res!144138) b!281025))

(assert (= (and b!281025 res!144137) b!281031))

(assert (= (and b!281031 res!144133) b!281023))

(assert (= (and b!281023 res!144130) b!281029))

(assert (= (and b!281029 res!144134) b!281027))

(assert (= (and b!281027 res!144131) b!281026))

(declare-fun m!295429 () Bool)

(assert (=> b!281024 m!295429))

(declare-fun m!295431 () Bool)

(assert (=> b!281025 m!295431))

(declare-fun m!295433 () Bool)

(assert (=> b!281031 m!295433))

(declare-fun m!295435 () Bool)

(assert (=> b!281030 m!295435))

(declare-fun m!295437 () Bool)

(assert (=> start!27176 m!295437))

(declare-fun m!295439 () Bool)

(assert (=> start!27176 m!295439))

(declare-fun m!295441 () Bool)

(assert (=> b!281023 m!295441))

(declare-fun m!295443 () Bool)

(assert (=> b!281027 m!295443))

(assert (=> b!281027 m!295443))

(declare-fun m!295445 () Bool)

(assert (=> b!281027 m!295445))

(declare-fun m!295447 () Bool)

(assert (=> b!281026 m!295447))

(declare-fun m!295449 () Bool)

(assert (=> b!281026 m!295449))

(declare-fun m!295451 () Bool)

(assert (=> b!281026 m!295451))

(push 1)

