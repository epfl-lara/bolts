; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27260 () Bool)

(assert start!27260)

(declare-fun b!282157 () Bool)

(declare-fun e!179189 () Bool)

(declare-fun e!179191 () Bool)

(assert (=> b!282157 (= e!179189 e!179191)))

(declare-fun res!145272 () Bool)

(assert (=> b!282157 (=> (not res!145272) (not e!179191))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282157 (= res!145272 (not (= startIndex!26 i!1267)))))

(declare-datatypes ((array!14067 0))(
  ( (array!14068 (arr!6675 (Array (_ BitVec 32) (_ BitVec 64))) (size!7027 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14067)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!139438 () array!14067)

(assert (=> b!282157 (= lt!139438 (array!14068 (store (arr!6675 a!3325) i!1267 k!2581) (size!7027 a!3325)))))

(declare-fun b!282158 () Bool)

(declare-fun res!145265 () Bool)

(declare-fun e!179188 () Bool)

(assert (=> b!282158 (=> (not res!145265) (not e!179188))))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!282158 (= res!145265 (and (= (size!7027 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7027 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7027 a!3325))))))

(declare-fun b!282159 () Bool)

(declare-fun res!145270 () Bool)

(assert (=> b!282159 (=> (not res!145270) (not e!179188))))

(declare-fun arrayContainsKey!0 (array!14067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282159 (= res!145270 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282160 () Bool)

(assert (=> b!282160 (= e!179188 e!179189)))

(declare-fun res!145269 () Bool)

(assert (=> b!282160 (=> (not res!145269) (not e!179189))))

(declare-datatypes ((SeekEntryResult!1844 0))(
  ( (MissingZero!1844 (index!9546 (_ BitVec 32))) (Found!1844 (index!9547 (_ BitVec 32))) (Intermediate!1844 (undefined!2656 Bool) (index!9548 (_ BitVec 32)) (x!27730 (_ BitVec 32))) (Undefined!1844) (MissingVacant!1844 (index!9549 (_ BitVec 32))) )
))
(declare-fun lt!139439 () SeekEntryResult!1844)

(assert (=> b!282160 (= res!145269 (or (= lt!139439 (MissingZero!1844 i!1267)) (= lt!139439 (MissingVacant!1844 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14067 (_ BitVec 32)) SeekEntryResult!1844)

(assert (=> b!282160 (= lt!139439 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282161 () Bool)

(declare-fun res!145267 () Bool)

(assert (=> b!282161 (=> (not res!145267) (not e!179189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14067 (_ BitVec 32)) Bool)

(assert (=> b!282161 (= res!145267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282162 () Bool)

(declare-fun res!145266 () Bool)

(assert (=> b!282162 (=> (not res!145266) (not e!179188))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282162 (= res!145266 (validKeyInArray!0 k!2581))))

(declare-fun b!282163 () Bool)

(declare-fun res!145268 () Bool)

(assert (=> b!282163 (=> (not res!145268) (not e!179191))))

(assert (=> b!282163 (= res!145268 (validKeyInArray!0 (select (arr!6675 a!3325) startIndex!26)))))

(declare-fun b!282164 () Bool)

(assert (=> b!282164 (= e!179191 (not true))))

(assert (=> b!282164 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8951 0))(
  ( (Unit!8952) )
))
(declare-fun lt!139437 () Unit!8951)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14067 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8951)

(assert (=> b!282164 (= lt!139437 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!282164 (= (seekEntryOrOpen!0 (select (arr!6675 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6675 a!3325) i!1267 k!2581) startIndex!26) lt!139438 mask!3868))))

(declare-fun lt!139435 () Unit!8951)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14067 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8951)

(assert (=> b!282164 (= lt!139435 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4504 0))(
  ( (Nil!4501) (Cons!4500 (h!5170 (_ BitVec 64)) (t!9594 List!4504)) )
))
(declare-fun arrayNoDuplicates!0 (array!14067 (_ BitVec 32) List!4504) Bool)

(assert (=> b!282164 (arrayNoDuplicates!0 lt!139438 #b00000000000000000000000000000000 Nil!4501)))

(declare-fun lt!139436 () Unit!8951)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14067 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4504) Unit!8951)

(assert (=> b!282164 (= lt!139436 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4501))))

(declare-fun b!282165 () Bool)

(declare-fun res!145264 () Bool)

(assert (=> b!282165 (=> (not res!145264) (not e!179188))))

(assert (=> b!282165 (= res!145264 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4501))))

(declare-fun res!145271 () Bool)

(assert (=> start!27260 (=> (not res!145271) (not e!179188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27260 (= res!145271 (validMask!0 mask!3868))))

(assert (=> start!27260 e!179188))

(declare-fun array_inv!4629 (array!14067) Bool)

(assert (=> start!27260 (array_inv!4629 a!3325)))

(assert (=> start!27260 true))

(assert (= (and start!27260 res!145271) b!282158))

(assert (= (and b!282158 res!145265) b!282162))

(assert (= (and b!282162 res!145266) b!282165))

(assert (= (and b!282165 res!145264) b!282159))

(assert (= (and b!282159 res!145270) b!282160))

(assert (= (and b!282160 res!145269) b!282161))

(assert (= (and b!282161 res!145267) b!282157))

(assert (= (and b!282157 res!145272) b!282163))

(assert (= (and b!282163 res!145268) b!282164))

(declare-fun m!296689 () Bool)

(assert (=> b!282159 m!296689))

(declare-fun m!296691 () Bool)

(assert (=> b!282161 m!296691))

(declare-fun m!296693 () Bool)

(assert (=> b!282165 m!296693))

(declare-fun m!296695 () Bool)

(assert (=> b!282162 m!296695))

(declare-fun m!296697 () Bool)

(assert (=> b!282160 m!296697))

(declare-fun m!296699 () Bool)

(assert (=> b!282164 m!296699))

(declare-fun m!296701 () Bool)

(assert (=> b!282164 m!296701))

(declare-fun m!296703 () Bool)

(assert (=> b!282164 m!296703))

(declare-fun m!296705 () Bool)

(assert (=> b!282164 m!296705))

(declare-fun m!296707 () Bool)

(assert (=> b!282164 m!296707))

(declare-fun m!296709 () Bool)

(assert (=> b!282164 m!296709))

(declare-fun m!296711 () Bool)

(assert (=> b!282164 m!296711))

(declare-fun m!296713 () Bool)

(assert (=> b!282164 m!296713))

(assert (=> b!282164 m!296701))

(declare-fun m!296715 () Bool)

(assert (=> b!282164 m!296715))

(declare-fun m!296717 () Bool)

(assert (=> b!282164 m!296717))

(assert (=> b!282164 m!296711))

(assert (=> b!282157 m!296703))

(declare-fun m!296719 () Bool)

(assert (=> start!27260 m!296719))

(declare-fun m!296721 () Bool)

(assert (=> start!27260 m!296721))

(assert (=> b!282163 m!296711))

(assert (=> b!282163 m!296711))

(declare-fun m!296723 () Bool)

(assert (=> b!282163 m!296723))

(push 1)

