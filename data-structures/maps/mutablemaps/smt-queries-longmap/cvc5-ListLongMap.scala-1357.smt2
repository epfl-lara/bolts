; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26710 () Bool)

(assert start!26710)

(declare-fun b!277134 () Bool)

(declare-fun res!141124 () Bool)

(declare-fun e!176928 () Bool)

(assert (=> b!277134 (=> (not res!141124) (not e!176928))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277134 (= res!141124 (validKeyInArray!0 k!2581))))

(declare-fun b!277135 () Bool)

(declare-fun res!141128 () Bool)

(assert (=> b!277135 (=> (not res!141128) (not e!176928))))

(declare-datatypes ((array!13796 0))(
  ( (array!13797 (arr!6547 (Array (_ BitVec 32) (_ BitVec 64))) (size!6899 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13796)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!277135 (= res!141128 (and (= (size!6899 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6899 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6899 a!3325))))))

(declare-fun b!277136 () Bool)

(declare-fun res!141123 () Bool)

(declare-fun e!176929 () Bool)

(assert (=> b!277136 (=> (not res!141123) (not e!176929))))

(assert (=> b!277136 (= res!141123 (= startIndex!26 i!1267))))

(declare-fun b!277137 () Bool)

(declare-datatypes ((Unit!8718 0))(
  ( (Unit!8719) )
))
(declare-fun e!176926 () Unit!8718)

(declare-fun lt!137882 () Unit!8718)

(assert (=> b!277137 (= e!176926 lt!137882)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13796 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8718)

(assert (=> b!277137 (= lt!137882 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13796 (_ BitVec 32)) Bool)

(assert (=> b!277137 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13797 (store (arr!6547 a!3325) i!1267 k!2581) (size!6899 a!3325)) mask!3868)))

(declare-fun b!277138 () Bool)

(assert (=> b!277138 (= e!176928 e!176929)))

(declare-fun res!141126 () Bool)

(assert (=> b!277138 (=> (not res!141126) (not e!176929))))

(declare-datatypes ((SeekEntryResult!1716 0))(
  ( (MissingZero!1716 (index!9034 (_ BitVec 32))) (Found!1716 (index!9035 (_ BitVec 32))) (Intermediate!1716 (undefined!2528 Bool) (index!9036 (_ BitVec 32)) (x!27257 (_ BitVec 32))) (Undefined!1716) (MissingVacant!1716 (index!9037 (_ BitVec 32))) )
))
(declare-fun lt!137881 () SeekEntryResult!1716)

(assert (=> b!277138 (= res!141126 (or (= lt!137881 (MissingZero!1716 i!1267)) (= lt!137881 (MissingVacant!1716 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13796 (_ BitVec 32)) SeekEntryResult!1716)

(assert (=> b!277138 (= lt!137881 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277139 () Bool)

(declare-fun res!141127 () Bool)

(assert (=> b!277139 (=> (not res!141127) (not e!176928))))

(declare-fun arrayContainsKey!0 (array!13796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277139 (= res!141127 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277140 () Bool)

(declare-fun res!141125 () Bool)

(assert (=> b!277140 (=> (not res!141125) (not e!176928))))

(declare-datatypes ((List!4376 0))(
  ( (Nil!4373) (Cons!4372 (h!5039 (_ BitVec 64)) (t!9466 List!4376)) )
))
(declare-fun arrayNoDuplicates!0 (array!13796 (_ BitVec 32) List!4376) Bool)

(assert (=> b!277140 (= res!141125 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4373))))

(declare-fun b!277141 () Bool)

(declare-fun res!141122 () Bool)

(assert (=> b!277141 (=> (not res!141122) (not e!176929))))

(assert (=> b!277141 (= res!141122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!141129 () Bool)

(assert (=> start!26710 (=> (not res!141129) (not e!176928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26710 (= res!141129 (validMask!0 mask!3868))))

(assert (=> start!26710 e!176928))

(declare-fun array_inv!4501 (array!13796) Bool)

(assert (=> start!26710 (array_inv!4501 a!3325)))

(assert (=> start!26710 true))

(declare-fun b!277142 () Bool)

(assert (=> b!277142 (= e!176929 false)))

(declare-fun lt!137880 () Unit!8718)

(assert (=> b!277142 (= lt!137880 e!176926)))

(declare-fun c!45557 () Bool)

(assert (=> b!277142 (= c!45557 (bvslt startIndex!26 (bvsub (size!6899 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277143 () Bool)

(declare-fun Unit!8720 () Unit!8718)

(assert (=> b!277143 (= e!176926 Unit!8720)))

(assert (= (and start!26710 res!141129) b!277135))

(assert (= (and b!277135 res!141128) b!277134))

(assert (= (and b!277134 res!141124) b!277140))

(assert (= (and b!277140 res!141125) b!277139))

(assert (= (and b!277139 res!141127) b!277138))

(assert (= (and b!277138 res!141126) b!277141))

(assert (= (and b!277141 res!141122) b!277136))

(assert (= (and b!277136 res!141123) b!277142))

(assert (= (and b!277142 c!45557) b!277137))

(assert (= (and b!277142 (not c!45557)) b!277143))

(declare-fun m!292309 () Bool)

(assert (=> b!277141 m!292309))

(declare-fun m!292311 () Bool)

(assert (=> start!26710 m!292311))

(declare-fun m!292313 () Bool)

(assert (=> start!26710 m!292313))

(declare-fun m!292315 () Bool)

(assert (=> b!277139 m!292315))

(declare-fun m!292317 () Bool)

(assert (=> b!277138 m!292317))

(declare-fun m!292319 () Bool)

(assert (=> b!277140 m!292319))

(declare-fun m!292321 () Bool)

(assert (=> b!277134 m!292321))

(declare-fun m!292323 () Bool)

(assert (=> b!277137 m!292323))

(declare-fun m!292325 () Bool)

(assert (=> b!277137 m!292325))

(declare-fun m!292327 () Bool)

(assert (=> b!277137 m!292327))

(push 1)

