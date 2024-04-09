; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27278 () Bool)

(assert start!27278)

(declare-fun b!282400 () Bool)

(declare-fun e!179298 () Bool)

(assert (=> b!282400 (= e!179298 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14085 0))(
  ( (array!14086 (arr!6684 (Array (_ BitVec 32) (_ BitVec 64))) (size!7036 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14085)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14085 (_ BitVec 32)) Bool)

(assert (=> b!282400 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8969 0))(
  ( (Unit!8970) )
))
(declare-fun lt!139570 () Unit!8969)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14085 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8969)

(assert (=> b!282400 (= lt!139570 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!139574 () array!14085)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1853 0))(
  ( (MissingZero!1853 (index!9582 (_ BitVec 32))) (Found!1853 (index!9583 (_ BitVec 32))) (Intermediate!1853 (undefined!2665 Bool) (index!9584 (_ BitVec 32)) (x!27763 (_ BitVec 32))) (Undefined!1853) (MissingVacant!1853 (index!9585 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14085 (_ BitVec 32)) SeekEntryResult!1853)

(assert (=> b!282400 (= (seekEntryOrOpen!0 (select (arr!6684 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6684 a!3325) i!1267 k!2581) startIndex!26) lt!139574 mask!3868))))

(declare-fun lt!139571 () Unit!8969)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14085 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8969)

(assert (=> b!282400 (= lt!139571 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4513 0))(
  ( (Nil!4510) (Cons!4509 (h!5179 (_ BitVec 64)) (t!9603 List!4513)) )
))
(declare-fun arrayNoDuplicates!0 (array!14085 (_ BitVec 32) List!4513) Bool)

(assert (=> b!282400 (arrayNoDuplicates!0 lt!139574 #b00000000000000000000000000000000 Nil!4510)))

(declare-fun lt!139573 () Unit!8969)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14085 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4513) Unit!8969)

(assert (=> b!282400 (= lt!139573 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4510))))

(declare-fun b!282401 () Bool)

(declare-fun res!145509 () Bool)

(declare-fun e!179297 () Bool)

(assert (=> b!282401 (=> (not res!145509) (not e!179297))))

(assert (=> b!282401 (= res!145509 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4510))))

(declare-fun b!282402 () Bool)

(declare-fun res!145508 () Bool)

(declare-fun e!179296 () Bool)

(assert (=> b!282402 (=> (not res!145508) (not e!179296))))

(assert (=> b!282402 (= res!145508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282404 () Bool)

(assert (=> b!282404 (= e!179297 e!179296)))

(declare-fun res!145512 () Bool)

(assert (=> b!282404 (=> (not res!145512) (not e!179296))))

(declare-fun lt!139572 () SeekEntryResult!1853)

(assert (=> b!282404 (= res!145512 (or (= lt!139572 (MissingZero!1853 i!1267)) (= lt!139572 (MissingVacant!1853 i!1267))))))

(assert (=> b!282404 (= lt!139572 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282405 () Bool)

(assert (=> b!282405 (= e!179296 e!179298)))

(declare-fun res!145514 () Bool)

(assert (=> b!282405 (=> (not res!145514) (not e!179298))))

(assert (=> b!282405 (= res!145514 (not (= startIndex!26 i!1267)))))

(assert (=> b!282405 (= lt!139574 (array!14086 (store (arr!6684 a!3325) i!1267 k!2581) (size!7036 a!3325)))))

(declare-fun b!282406 () Bool)

(declare-fun res!145513 () Bool)

(assert (=> b!282406 (=> (not res!145513) (not e!179297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282406 (= res!145513 (validKeyInArray!0 k!2581))))

(declare-fun res!145515 () Bool)

(assert (=> start!27278 (=> (not res!145515) (not e!179297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27278 (= res!145515 (validMask!0 mask!3868))))

(assert (=> start!27278 e!179297))

(declare-fun array_inv!4638 (array!14085) Bool)

(assert (=> start!27278 (array_inv!4638 a!3325)))

(assert (=> start!27278 true))

(declare-fun b!282403 () Bool)

(declare-fun res!145510 () Bool)

(assert (=> b!282403 (=> (not res!145510) (not e!179298))))

(assert (=> b!282403 (= res!145510 (validKeyInArray!0 (select (arr!6684 a!3325) startIndex!26)))))

(declare-fun b!282407 () Bool)

(declare-fun res!145507 () Bool)

(assert (=> b!282407 (=> (not res!145507) (not e!179297))))

(declare-fun arrayContainsKey!0 (array!14085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282407 (= res!145507 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282408 () Bool)

(declare-fun res!145511 () Bool)

(assert (=> b!282408 (=> (not res!145511) (not e!179297))))

(assert (=> b!282408 (= res!145511 (and (= (size!7036 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7036 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7036 a!3325))))))

(assert (= (and start!27278 res!145515) b!282408))

(assert (= (and b!282408 res!145511) b!282406))

(assert (= (and b!282406 res!145513) b!282401))

(assert (= (and b!282401 res!145509) b!282407))

(assert (= (and b!282407 res!145507) b!282404))

(assert (= (and b!282404 res!145512) b!282402))

(assert (= (and b!282402 res!145508) b!282405))

(assert (= (and b!282405 res!145514) b!282403))

(assert (= (and b!282403 res!145510) b!282400))

(declare-fun m!297013 () Bool)

(assert (=> b!282406 m!297013))

(declare-fun m!297015 () Bool)

(assert (=> b!282400 m!297015))

(declare-fun m!297017 () Bool)

(assert (=> b!282400 m!297017))

(declare-fun m!297019 () Bool)

(assert (=> b!282400 m!297019))

(declare-fun m!297021 () Bool)

(assert (=> b!282400 m!297021))

(declare-fun m!297023 () Bool)

(assert (=> b!282400 m!297023))

(declare-fun m!297025 () Bool)

(assert (=> b!282400 m!297025))

(declare-fun m!297027 () Bool)

(assert (=> b!282400 m!297027))

(declare-fun m!297029 () Bool)

(assert (=> b!282400 m!297029))

(assert (=> b!282400 m!297025))

(declare-fun m!297031 () Bool)

(assert (=> b!282400 m!297031))

(declare-fun m!297033 () Bool)

(assert (=> b!282400 m!297033))

(assert (=> b!282400 m!297017))

(declare-fun m!297035 () Bool)

(assert (=> b!282401 m!297035))

(declare-fun m!297037 () Bool)

(assert (=> b!282402 m!297037))

(assert (=> b!282405 m!297021))

(declare-fun m!297039 () Bool)

(assert (=> b!282407 m!297039))

(declare-fun m!297041 () Bool)

(assert (=> start!27278 m!297041))

(declare-fun m!297043 () Bool)

(assert (=> start!27278 m!297043))

(assert (=> b!282403 m!297025))

(assert (=> b!282403 m!297025))

(declare-fun m!297045 () Bool)

(assert (=> b!282403 m!297045))

(declare-fun m!297047 () Bool)

(assert (=> b!282404 m!297047))

(push 1)

(assert (not start!27278))

(assert (not b!282406))

