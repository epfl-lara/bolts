; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27272 () Bool)

(assert start!27272)

(declare-fun res!145432 () Bool)

(declare-fun e!179262 () Bool)

(assert (=> start!27272 (=> (not res!145432) (not e!179262))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27272 (= res!145432 (validMask!0 mask!3868))))

(assert (=> start!27272 e!179262))

(declare-datatypes ((array!14079 0))(
  ( (array!14080 (arr!6681 (Array (_ BitVec 32) (_ BitVec 64))) (size!7033 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14079)

(declare-fun array_inv!4635 (array!14079) Bool)

(assert (=> start!27272 (array_inv!4635 a!3325)))

(assert (=> start!27272 true))

(declare-fun b!282319 () Bool)

(declare-fun res!145434 () Bool)

(declare-fun e!179263 () Bool)

(assert (=> b!282319 (=> (not res!145434) (not e!179263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14079 (_ BitVec 32)) Bool)

(assert (=> b!282319 (= res!145434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282320 () Bool)

(declare-fun res!145428 () Bool)

(assert (=> b!282320 (=> (not res!145428) (not e!179262))))

(declare-datatypes ((List!4510 0))(
  ( (Nil!4507) (Cons!4506 (h!5176 (_ BitVec 64)) (t!9600 List!4510)) )
))
(declare-fun arrayNoDuplicates!0 (array!14079 (_ BitVec 32) List!4510) Bool)

(assert (=> b!282320 (= res!145428 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4507))))

(declare-fun b!282321 () Bool)

(declare-fun res!145431 () Bool)

(assert (=> b!282321 (=> (not res!145431) (not e!179262))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282321 (= res!145431 (validKeyInArray!0 k!2581))))

(declare-fun b!282322 () Bool)

(declare-fun res!145429 () Bool)

(assert (=> b!282322 (=> (not res!145429) (not e!179262))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282322 (= res!145429 (and (= (size!7033 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7033 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7033 a!3325))))))

(declare-fun b!282323 () Bool)

(declare-fun res!145426 () Bool)

(assert (=> b!282323 (=> (not res!145426) (not e!179262))))

(declare-fun arrayContainsKey!0 (array!14079 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282323 (= res!145426 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282324 () Bool)

(declare-fun e!179261 () Bool)

(assert (=> b!282324 (= e!179261 (not true))))

(assert (=> b!282324 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8963 0))(
  ( (Unit!8964) )
))
(declare-fun lt!139525 () Unit!8963)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14079 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8963)

(assert (=> b!282324 (= lt!139525 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139526 () array!14079)

(declare-datatypes ((SeekEntryResult!1850 0))(
  ( (MissingZero!1850 (index!9570 (_ BitVec 32))) (Found!1850 (index!9571 (_ BitVec 32))) (Intermediate!1850 (undefined!2662 Bool) (index!9572 (_ BitVec 32)) (x!27752 (_ BitVec 32))) (Undefined!1850) (MissingVacant!1850 (index!9573 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14079 (_ BitVec 32)) SeekEntryResult!1850)

(assert (=> b!282324 (= (seekEntryOrOpen!0 (select (arr!6681 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6681 a!3325) i!1267 k!2581) startIndex!26) lt!139526 mask!3868))))

(declare-fun lt!139527 () Unit!8963)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14079 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8963)

(assert (=> b!282324 (= lt!139527 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!282324 (arrayNoDuplicates!0 lt!139526 #b00000000000000000000000000000000 Nil!4507)))

(declare-fun lt!139528 () Unit!8963)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14079 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4510) Unit!8963)

(assert (=> b!282324 (= lt!139528 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4507))))

(declare-fun b!282325 () Bool)

(declare-fun res!145430 () Bool)

(assert (=> b!282325 (=> (not res!145430) (not e!179261))))

(assert (=> b!282325 (= res!145430 (validKeyInArray!0 (select (arr!6681 a!3325) startIndex!26)))))

(declare-fun b!282326 () Bool)

(assert (=> b!282326 (= e!179263 e!179261)))

(declare-fun res!145433 () Bool)

(assert (=> b!282326 (=> (not res!145433) (not e!179261))))

(assert (=> b!282326 (= res!145433 (not (= startIndex!26 i!1267)))))

(assert (=> b!282326 (= lt!139526 (array!14080 (store (arr!6681 a!3325) i!1267 k!2581) (size!7033 a!3325)))))

(declare-fun b!282327 () Bool)

(assert (=> b!282327 (= e!179262 e!179263)))

(declare-fun res!145427 () Bool)

(assert (=> b!282327 (=> (not res!145427) (not e!179263))))

(declare-fun lt!139529 () SeekEntryResult!1850)

(assert (=> b!282327 (= res!145427 (or (= lt!139529 (MissingZero!1850 i!1267)) (= lt!139529 (MissingVacant!1850 i!1267))))))

(assert (=> b!282327 (= lt!139529 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27272 res!145432) b!282322))

(assert (= (and b!282322 res!145429) b!282321))

(assert (= (and b!282321 res!145431) b!282320))

(assert (= (and b!282320 res!145428) b!282323))

(assert (= (and b!282323 res!145426) b!282327))

(assert (= (and b!282327 res!145427) b!282319))

(assert (= (and b!282319 res!145434) b!282326))

(assert (= (and b!282326 res!145433) b!282325))

(assert (= (and b!282325 res!145430) b!282324))

(declare-fun m!296905 () Bool)

(assert (=> b!282323 m!296905))

(declare-fun m!296907 () Bool)

(assert (=> b!282319 m!296907))

(declare-fun m!296909 () Bool)

(assert (=> b!282324 m!296909))

(declare-fun m!296911 () Bool)

(assert (=> b!282324 m!296911))

(declare-fun m!296913 () Bool)

(assert (=> b!282324 m!296913))

(assert (=> b!282324 m!296911))

(declare-fun m!296915 () Bool)

(assert (=> b!282324 m!296915))

(declare-fun m!296917 () Bool)

(assert (=> b!282324 m!296917))

(declare-fun m!296919 () Bool)

(assert (=> b!282324 m!296919))

(declare-fun m!296921 () Bool)

(assert (=> b!282324 m!296921))

(assert (=> b!282324 m!296919))

(declare-fun m!296923 () Bool)

(assert (=> b!282324 m!296923))

(declare-fun m!296925 () Bool)

(assert (=> b!282324 m!296925))

(declare-fun m!296927 () Bool)

(assert (=> b!282324 m!296927))

(declare-fun m!296929 () Bool)

(assert (=> start!27272 m!296929))

(declare-fun m!296931 () Bool)

(assert (=> start!27272 m!296931))

(declare-fun m!296933 () Bool)

(assert (=> b!282321 m!296933))

(declare-fun m!296935 () Bool)

(assert (=> b!282320 m!296935))

(declare-fun m!296937 () Bool)

(assert (=> b!282327 m!296937))

(assert (=> b!282326 m!296915))

(assert (=> b!282325 m!296919))

(assert (=> b!282325 m!296919))

(declare-fun m!296939 () Bool)

(assert (=> b!282325 m!296939))

(push 1)

