; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27252 () Bool)

(assert start!27252)

(declare-fun b!282049 () Bool)

(declare-fun e!179140 () Bool)

(declare-fun e!179143 () Bool)

(assert (=> b!282049 (= e!179140 e!179143)))

(declare-fun res!145158 () Bool)

(assert (=> b!282049 (=> (not res!145158) (not e!179143))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282049 (= res!145158 (not (= startIndex!26 i!1267)))))

(declare-datatypes ((array!14059 0))(
  ( (array!14060 (arr!6671 (Array (_ BitVec 32) (_ BitVec 64))) (size!7023 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14059)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!139376 () array!14059)

(assert (=> b!282049 (= lt!139376 (array!14060 (store (arr!6671 a!3325) i!1267 k0!2581) (size!7023 a!3325)))))

(declare-fun b!282050 () Bool)

(declare-fun res!145156 () Bool)

(declare-fun e!179142 () Bool)

(assert (=> b!282050 (=> (not res!145156) (not e!179142))))

(declare-datatypes ((List!4500 0))(
  ( (Nil!4497) (Cons!4496 (h!5166 (_ BitVec 64)) (t!9590 List!4500)) )
))
(declare-fun arrayNoDuplicates!0 (array!14059 (_ BitVec 32) List!4500) Bool)

(assert (=> b!282050 (= res!145156 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4497))))

(declare-fun b!282051 () Bool)

(declare-fun res!145157 () Bool)

(assert (=> b!282051 (=> (not res!145157) (not e!179142))))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!282051 (= res!145157 (and (= (size!7023 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7023 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7023 a!3325))))))

(declare-fun res!145162 () Bool)

(assert (=> start!27252 (=> (not res!145162) (not e!179142))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27252 (= res!145162 (validMask!0 mask!3868))))

(assert (=> start!27252 e!179142))

(declare-fun array_inv!4625 (array!14059) Bool)

(assert (=> start!27252 (array_inv!4625 a!3325)))

(assert (=> start!27252 true))

(declare-fun b!282052 () Bool)

(assert (=> b!282052 (= e!179142 e!179140)))

(declare-fun res!145164 () Bool)

(assert (=> b!282052 (=> (not res!145164) (not e!179140))))

(declare-datatypes ((SeekEntryResult!1840 0))(
  ( (MissingZero!1840 (index!9530 (_ BitVec 32))) (Found!1840 (index!9531 (_ BitVec 32))) (Intermediate!1840 (undefined!2652 Bool) (index!9532 (_ BitVec 32)) (x!27718 (_ BitVec 32))) (Undefined!1840) (MissingVacant!1840 (index!9533 (_ BitVec 32))) )
))
(declare-fun lt!139378 () SeekEntryResult!1840)

(assert (=> b!282052 (= res!145164 (or (= lt!139378 (MissingZero!1840 i!1267)) (= lt!139378 (MissingVacant!1840 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14059 (_ BitVec 32)) SeekEntryResult!1840)

(assert (=> b!282052 (= lt!139378 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282053 () Bool)

(declare-fun res!145160 () Bool)

(assert (=> b!282053 (=> (not res!145160) (not e!179143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282053 (= res!145160 (validKeyInArray!0 (select (arr!6671 a!3325) startIndex!26)))))

(declare-fun b!282054 () Bool)

(declare-fun res!145161 () Bool)

(assert (=> b!282054 (=> (not res!145161) (not e!179142))))

(declare-fun arrayContainsKey!0 (array!14059 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282054 (= res!145161 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282055 () Bool)

(declare-fun res!145159 () Bool)

(assert (=> b!282055 (=> (not res!145159) (not e!179140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14059 (_ BitVec 32)) Bool)

(assert (=> b!282055 (= res!145159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282056 () Bool)

(assert (=> b!282056 (= e!179143 (not true))))

(assert (=> b!282056 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8943 0))(
  ( (Unit!8944) )
))
(declare-fun lt!139379 () Unit!8943)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8943)

(assert (=> b!282056 (= lt!139379 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!282056 (= (seekEntryOrOpen!0 (select (arr!6671 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6671 a!3325) i!1267 k0!2581) startIndex!26) lt!139376 mask!3868))))

(declare-fun lt!139377 () Unit!8943)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14059 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8943)

(assert (=> b!282056 (= lt!139377 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!282056 (arrayNoDuplicates!0 lt!139376 #b00000000000000000000000000000000 Nil!4497)))

(declare-fun lt!139375 () Unit!8943)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14059 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4500) Unit!8943)

(assert (=> b!282056 (= lt!139375 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4497))))

(declare-fun b!282057 () Bool)

(declare-fun res!145163 () Bool)

(assert (=> b!282057 (=> (not res!145163) (not e!179142))))

(assert (=> b!282057 (= res!145163 (validKeyInArray!0 k0!2581))))

(assert (= (and start!27252 res!145162) b!282051))

(assert (= (and b!282051 res!145157) b!282057))

(assert (= (and b!282057 res!145163) b!282050))

(assert (= (and b!282050 res!145156) b!282054))

(assert (= (and b!282054 res!145161) b!282052))

(assert (= (and b!282052 res!145164) b!282055))

(assert (= (and b!282055 res!145159) b!282049))

(assert (= (and b!282049 res!145158) b!282053))

(assert (= (and b!282053 res!145160) b!282056))

(declare-fun m!296545 () Bool)

(assert (=> b!282056 m!296545))

(declare-fun m!296547 () Bool)

(assert (=> b!282056 m!296547))

(declare-fun m!296549 () Bool)

(assert (=> b!282056 m!296549))

(declare-fun m!296551 () Bool)

(assert (=> b!282056 m!296551))

(assert (=> b!282056 m!296549))

(declare-fun m!296553 () Bool)

(assert (=> b!282056 m!296553))

(declare-fun m!296555 () Bool)

(assert (=> b!282056 m!296555))

(declare-fun m!296557 () Bool)

(assert (=> b!282056 m!296557))

(declare-fun m!296559 () Bool)

(assert (=> b!282056 m!296559))

(declare-fun m!296561 () Bool)

(assert (=> b!282056 m!296561))

(assert (=> b!282056 m!296557))

(declare-fun m!296563 () Bool)

(assert (=> b!282056 m!296563))

(declare-fun m!296565 () Bool)

(assert (=> b!282055 m!296565))

(declare-fun m!296567 () Bool)

(assert (=> b!282050 m!296567))

(assert (=> b!282049 m!296553))

(declare-fun m!296569 () Bool)

(assert (=> start!27252 m!296569))

(declare-fun m!296571 () Bool)

(assert (=> start!27252 m!296571))

(declare-fun m!296573 () Bool)

(assert (=> b!282054 m!296573))

(declare-fun m!296575 () Bool)

(assert (=> b!282057 m!296575))

(assert (=> b!282053 m!296557))

(assert (=> b!282053 m!296557))

(declare-fun m!296577 () Bool)

(assert (=> b!282053 m!296577))

(declare-fun m!296579 () Bool)

(assert (=> b!282052 m!296579))

(check-sat (not b!282054) (not b!282056) (not start!27252) (not b!282055) (not b!282050) (not b!282053) (not b!282052) (not b!282057))
(check-sat)
