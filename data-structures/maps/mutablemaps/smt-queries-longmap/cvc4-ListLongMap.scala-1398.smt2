; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27254 () Bool)

(assert start!27254)

(declare-fun res!145186 () Bool)

(declare-fun e!179153 () Bool)

(assert (=> start!27254 (=> (not res!145186) (not e!179153))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27254 (= res!145186 (validMask!0 mask!3868))))

(assert (=> start!27254 e!179153))

(declare-datatypes ((array!14061 0))(
  ( (array!14062 (arr!6672 (Array (_ BitVec 32) (_ BitVec 64))) (size!7024 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14061)

(declare-fun array_inv!4626 (array!14061) Bool)

(assert (=> start!27254 (array_inv!4626 a!3325)))

(assert (=> start!27254 true))

(declare-fun b!282076 () Bool)

(declare-fun e!179152 () Bool)

(assert (=> b!282076 (= e!179152 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14061 (_ BitVec 32)) Bool)

(assert (=> b!282076 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8945 0))(
  ( (Unit!8946) )
))
(declare-fun lt!139393 () Unit!8945)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14061 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8945)

(assert (=> b!282076 (= lt!139393 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!139394 () array!14061)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1841 0))(
  ( (MissingZero!1841 (index!9534 (_ BitVec 32))) (Found!1841 (index!9535 (_ BitVec 32))) (Intermediate!1841 (undefined!2653 Bool) (index!9536 (_ BitVec 32)) (x!27719 (_ BitVec 32))) (Undefined!1841) (MissingVacant!1841 (index!9537 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14061 (_ BitVec 32)) SeekEntryResult!1841)

(assert (=> b!282076 (= (seekEntryOrOpen!0 (select (arr!6672 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6672 a!3325) i!1267 k!2581) startIndex!26) lt!139394 mask!3868))))

(declare-fun lt!139390 () Unit!8945)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14061 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8945)

(assert (=> b!282076 (= lt!139390 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4501 0))(
  ( (Nil!4498) (Cons!4497 (h!5167 (_ BitVec 64)) (t!9591 List!4501)) )
))
(declare-fun arrayNoDuplicates!0 (array!14061 (_ BitVec 32) List!4501) Bool)

(assert (=> b!282076 (arrayNoDuplicates!0 lt!139394 #b00000000000000000000000000000000 Nil!4498)))

(declare-fun lt!139392 () Unit!8945)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14061 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4501) Unit!8945)

(assert (=> b!282076 (= lt!139392 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4498))))

(declare-fun b!282077 () Bool)

(declare-fun res!145187 () Bool)

(assert (=> b!282077 (=> (not res!145187) (not e!179153))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282077 (= res!145187 (validKeyInArray!0 k!2581))))

(declare-fun b!282078 () Bool)

(declare-fun res!145185 () Bool)

(assert (=> b!282078 (=> (not res!145185) (not e!179152))))

(assert (=> b!282078 (= res!145185 (validKeyInArray!0 (select (arr!6672 a!3325) startIndex!26)))))

(declare-fun b!282079 () Bool)

(declare-fun res!145183 () Bool)

(declare-fun e!179154 () Bool)

(assert (=> b!282079 (=> (not res!145183) (not e!179154))))

(assert (=> b!282079 (= res!145183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282080 () Bool)

(declare-fun res!145191 () Bool)

(assert (=> b!282080 (=> (not res!145191) (not e!179153))))

(declare-fun arrayContainsKey!0 (array!14061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282080 (= res!145191 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282081 () Bool)

(declare-fun res!145189 () Bool)

(assert (=> b!282081 (=> (not res!145189) (not e!179153))))

(assert (=> b!282081 (= res!145189 (and (= (size!7024 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7024 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7024 a!3325))))))

(declare-fun b!282082 () Bool)

(assert (=> b!282082 (= e!179154 e!179152)))

(declare-fun res!145188 () Bool)

(assert (=> b!282082 (=> (not res!145188) (not e!179152))))

(assert (=> b!282082 (= res!145188 (not (= startIndex!26 i!1267)))))

(assert (=> b!282082 (= lt!139394 (array!14062 (store (arr!6672 a!3325) i!1267 k!2581) (size!7024 a!3325)))))

(declare-fun b!282083 () Bool)

(declare-fun res!145190 () Bool)

(assert (=> b!282083 (=> (not res!145190) (not e!179153))))

(assert (=> b!282083 (= res!145190 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4498))))

(declare-fun b!282084 () Bool)

(assert (=> b!282084 (= e!179153 e!179154)))

(declare-fun res!145184 () Bool)

(assert (=> b!282084 (=> (not res!145184) (not e!179154))))

(declare-fun lt!139391 () SeekEntryResult!1841)

(assert (=> b!282084 (= res!145184 (or (= lt!139391 (MissingZero!1841 i!1267)) (= lt!139391 (MissingVacant!1841 i!1267))))))

(assert (=> b!282084 (= lt!139391 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27254 res!145186) b!282081))

(assert (= (and b!282081 res!145189) b!282077))

(assert (= (and b!282077 res!145187) b!282083))

(assert (= (and b!282083 res!145190) b!282080))

(assert (= (and b!282080 res!145191) b!282084))

(assert (= (and b!282084 res!145184) b!282079))

(assert (= (and b!282079 res!145183) b!282082))

(assert (= (and b!282082 res!145188) b!282078))

(assert (= (and b!282078 res!145185) b!282076))

(declare-fun m!296581 () Bool)

(assert (=> b!282080 m!296581))

(declare-fun m!296583 () Bool)

(assert (=> b!282083 m!296583))

(declare-fun m!296585 () Bool)

(assert (=> b!282082 m!296585))

(declare-fun m!296587 () Bool)

(assert (=> b!282076 m!296587))

(declare-fun m!296589 () Bool)

(assert (=> b!282076 m!296589))

(declare-fun m!296591 () Bool)

(assert (=> b!282076 m!296591))

(assert (=> b!282076 m!296585))

(declare-fun m!296593 () Bool)

(assert (=> b!282076 m!296593))

(declare-fun m!296595 () Bool)

(assert (=> b!282076 m!296595))

(declare-fun m!296597 () Bool)

(assert (=> b!282076 m!296597))

(declare-fun m!296599 () Bool)

(assert (=> b!282076 m!296599))

(assert (=> b!282076 m!296595))

(declare-fun m!296601 () Bool)

(assert (=> b!282076 m!296601))

(assert (=> b!282076 m!296591))

(declare-fun m!296603 () Bool)

(assert (=> b!282076 m!296603))

(declare-fun m!296605 () Bool)

(assert (=> start!27254 m!296605))

(declare-fun m!296607 () Bool)

(assert (=> start!27254 m!296607))

(assert (=> b!282078 m!296595))

(assert (=> b!282078 m!296595))

(declare-fun m!296609 () Bool)

(assert (=> b!282078 m!296609))

(declare-fun m!296611 () Bool)

(assert (=> b!282077 m!296611))

(declare-fun m!296613 () Bool)

(assert (=> b!282079 m!296613))

(declare-fun m!296615 () Bool)

(assert (=> b!282084 m!296615))

(push 1)

