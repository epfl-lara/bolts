; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26468 () Bool)

(assert start!26468)

(declare-fun b!274594 () Bool)

(declare-fun e!175792 () Bool)

(declare-fun e!175791 () Bool)

(assert (=> b!274594 (= e!175792 e!175791)))

(declare-fun res!138622 () Bool)

(assert (=> b!274594 (=> (not res!138622) (not e!175791))))

(declare-datatypes ((SeekEntryResult!1595 0))(
  ( (MissingZero!1595 (index!8550 (_ BitVec 32))) (Found!1595 (index!8551 (_ BitVec 32))) (Intermediate!1595 (undefined!2407 Bool) (index!8552 (_ BitVec 32)) (x!26808 (_ BitVec 32))) (Undefined!1595) (MissingVacant!1595 (index!8553 (_ BitVec 32))) )
))
(declare-fun lt!137089 () SeekEntryResult!1595)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274594 (= res!138622 (or (= lt!137089 (MissingZero!1595 i!1267)) (= lt!137089 (MissingVacant!1595 i!1267))))))

(declare-datatypes ((array!13554 0))(
  ( (array!13555 (arr!6426 (Array (_ BitVec 32) (_ BitVec 64))) (size!6778 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13554)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13554 (_ BitVec 32)) SeekEntryResult!1595)

(assert (=> b!274594 (= lt!137089 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274595 () Bool)

(declare-fun e!175789 () Bool)

(assert (=> b!274595 (= e!175791 e!175789)))

(declare-fun res!138624 () Bool)

(assert (=> b!274595 (=> (not res!138624) (not e!175789))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274595 (= res!138624 (not (= startIndex!26 i!1267)))))

(declare-fun lt!137087 () array!13554)

(assert (=> b!274595 (= lt!137087 (array!13555 (store (arr!6426 a!3325) i!1267 k!2581) (size!6778 a!3325)))))

(declare-fun b!274596 () Bool)

(declare-fun res!138623 () Bool)

(assert (=> b!274596 (=> (not res!138623) (not e!175792))))

(declare-fun arrayContainsKey!0 (array!13554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274596 (= res!138623 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274597 () Bool)

(assert (=> b!274597 (= e!175789 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13554 (_ BitVec 32)) Bool)

(assert (=> b!274597 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8656 0))(
  ( (Unit!8657) )
))
(declare-fun lt!137086 () Unit!8656)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8656)

(assert (=> b!274597 (= lt!137086 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!274597 (= (seekEntryOrOpen!0 (select (arr!6426 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6426 a!3325) i!1267 k!2581) startIndex!26) lt!137087 mask!3868))))

(declare-fun lt!137088 () Unit!8656)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13554 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8656)

(assert (=> b!274597 (= lt!137088 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4255 0))(
  ( (Nil!4252) (Cons!4251 (h!4918 (_ BitVec 64)) (t!9345 List!4255)) )
))
(declare-fun arrayNoDuplicates!0 (array!13554 (_ BitVec 32) List!4255) Bool)

(assert (=> b!274597 (arrayNoDuplicates!0 lt!137087 #b00000000000000000000000000000000 Nil!4252)))

(declare-fun lt!137090 () Unit!8656)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13554 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4255) Unit!8656)

(assert (=> b!274597 (= lt!137090 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4252))))

(declare-fun b!274598 () Bool)

(declare-fun res!138629 () Bool)

(assert (=> b!274598 (=> (not res!138629) (not e!175792))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274598 (= res!138629 (validKeyInArray!0 k!2581))))

(declare-fun b!274599 () Bool)

(declare-fun res!138627 () Bool)

(assert (=> b!274599 (=> (not res!138627) (not e!175792))))

(assert (=> b!274599 (= res!138627 (and (= (size!6778 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6778 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6778 a!3325))))))

(declare-fun b!274600 () Bool)

(declare-fun res!138630 () Bool)

(assert (=> b!274600 (=> (not res!138630) (not e!175791))))

(assert (=> b!274600 (= res!138630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274601 () Bool)

(declare-fun res!138626 () Bool)

(assert (=> b!274601 (=> (not res!138626) (not e!175789))))

(assert (=> b!274601 (= res!138626 (validKeyInArray!0 (select (arr!6426 a!3325) startIndex!26)))))

(declare-fun res!138628 () Bool)

(assert (=> start!26468 (=> (not res!138628) (not e!175792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26468 (= res!138628 (validMask!0 mask!3868))))

(assert (=> start!26468 e!175792))

(declare-fun array_inv!4380 (array!13554) Bool)

(assert (=> start!26468 (array_inv!4380 a!3325)))

(assert (=> start!26468 true))

(declare-fun b!274602 () Bool)

(declare-fun res!138625 () Bool)

(assert (=> b!274602 (=> (not res!138625) (not e!175792))))

(assert (=> b!274602 (= res!138625 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4252))))

(assert (= (and start!26468 res!138628) b!274599))

(assert (= (and b!274599 res!138627) b!274598))

(assert (= (and b!274598 res!138629) b!274602))

(assert (= (and b!274602 res!138625) b!274596))

(assert (= (and b!274596 res!138623) b!274594))

(assert (= (and b!274594 res!138622) b!274600))

(assert (= (and b!274600 res!138630) b!274595))

(assert (= (and b!274595 res!138624) b!274601))

(assert (= (and b!274601 res!138626) b!274597))

(declare-fun m!290227 () Bool)

(assert (=> b!274594 m!290227))

(declare-fun m!290229 () Bool)

(assert (=> b!274596 m!290229))

(declare-fun m!290231 () Bool)

(assert (=> b!274600 m!290231))

(declare-fun m!290233 () Bool)

(assert (=> b!274595 m!290233))

(declare-fun m!290235 () Bool)

(assert (=> start!26468 m!290235))

(declare-fun m!290237 () Bool)

(assert (=> start!26468 m!290237))

(declare-fun m!290239 () Bool)

(assert (=> b!274602 m!290239))

(declare-fun m!290241 () Bool)

(assert (=> b!274601 m!290241))

(assert (=> b!274601 m!290241))

(declare-fun m!290243 () Bool)

(assert (=> b!274601 m!290243))

(declare-fun m!290245 () Bool)

(assert (=> b!274598 m!290245))

(declare-fun m!290247 () Bool)

(assert (=> b!274597 m!290247))

(declare-fun m!290249 () Bool)

(assert (=> b!274597 m!290249))

(declare-fun m!290251 () Bool)

(assert (=> b!274597 m!290251))

(assert (=> b!274597 m!290233))

(declare-fun m!290253 () Bool)

(assert (=> b!274597 m!290253))

(assert (=> b!274597 m!290241))

(declare-fun m!290255 () Bool)

(assert (=> b!274597 m!290255))

(assert (=> b!274597 m!290251))

(declare-fun m!290257 () Bool)

(assert (=> b!274597 m!290257))

(declare-fun m!290259 () Bool)

(assert (=> b!274597 m!290259))

(assert (=> b!274597 m!290241))

(declare-fun m!290261 () Bool)

(assert (=> b!274597 m!290261))

(push 1)

