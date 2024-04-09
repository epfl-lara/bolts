; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27290 () Bool)

(assert start!27290)

(declare-fun b!282562 () Bool)

(declare-fun e!179370 () Bool)

(assert (=> b!282562 (= e!179370 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14097 0))(
  ( (array!14098 (arr!6690 (Array (_ BitVec 32) (_ BitVec 64))) (size!7042 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14097)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14097 (_ BitVec 32)) Bool)

(assert (=> b!282562 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8981 0))(
  ( (Unit!8982) )
))
(declare-fun lt!139663 () Unit!8981)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14097 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8981)

(assert (=> b!282562 (= lt!139663 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139662 () array!14097)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1859 0))(
  ( (MissingZero!1859 (index!9606 (_ BitVec 32))) (Found!1859 (index!9607 (_ BitVec 32))) (Intermediate!1859 (undefined!2671 Bool) (index!9608 (_ BitVec 32)) (x!27785 (_ BitVec 32))) (Undefined!1859) (MissingVacant!1859 (index!9609 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14097 (_ BitVec 32)) SeekEntryResult!1859)

(assert (=> b!282562 (= (seekEntryOrOpen!0 (select (arr!6690 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6690 a!3325) i!1267 k!2581) startIndex!26) lt!139662 mask!3868))))

(declare-fun lt!139664 () Unit!8981)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14097 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8981)

(assert (=> b!282562 (= lt!139664 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4519 0))(
  ( (Nil!4516) (Cons!4515 (h!5185 (_ BitVec 64)) (t!9609 List!4519)) )
))
(declare-fun arrayNoDuplicates!0 (array!14097 (_ BitVec 32) List!4519) Bool)

(assert (=> b!282562 (arrayNoDuplicates!0 lt!139662 #b00000000000000000000000000000000 Nil!4516)))

(declare-fun lt!139661 () Unit!8981)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14097 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4519) Unit!8981)

(assert (=> b!282562 (= lt!139661 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4516))))

(declare-fun b!282563 () Bool)

(declare-fun res!145676 () Bool)

(assert (=> b!282563 (=> (not res!145676) (not e!179370))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282563 (= res!145676 (validKeyInArray!0 (select (arr!6690 a!3325) startIndex!26)))))

(declare-fun res!145672 () Bool)

(declare-fun e!179368 () Bool)

(assert (=> start!27290 (=> (not res!145672) (not e!179368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27290 (= res!145672 (validMask!0 mask!3868))))

(assert (=> start!27290 e!179368))

(declare-fun array_inv!4644 (array!14097) Bool)

(assert (=> start!27290 (array_inv!4644 a!3325)))

(assert (=> start!27290 true))

(declare-fun b!282564 () Bool)

(declare-fun res!145670 () Bool)

(assert (=> b!282564 (=> (not res!145670) (not e!179368))))

(assert (=> b!282564 (= res!145670 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4516))))

(declare-fun b!282565 () Bool)

(declare-fun e!179369 () Bool)

(assert (=> b!282565 (= e!179368 e!179369)))

(declare-fun res!145675 () Bool)

(assert (=> b!282565 (=> (not res!145675) (not e!179369))))

(declare-fun lt!139660 () SeekEntryResult!1859)

(assert (=> b!282565 (= res!145675 (or (= lt!139660 (MissingZero!1859 i!1267)) (= lt!139660 (MissingVacant!1859 i!1267))))))

(assert (=> b!282565 (= lt!139660 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282566 () Bool)

(declare-fun res!145673 () Bool)

(assert (=> b!282566 (=> (not res!145673) (not e!179369))))

(assert (=> b!282566 (= res!145673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282567 () Bool)

(declare-fun res!145674 () Bool)

(assert (=> b!282567 (=> (not res!145674) (not e!179368))))

(assert (=> b!282567 (= res!145674 (validKeyInArray!0 k!2581))))

(declare-fun b!282568 () Bool)

(declare-fun res!145669 () Bool)

(assert (=> b!282568 (=> (not res!145669) (not e!179368))))

(assert (=> b!282568 (= res!145669 (and (= (size!7042 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7042 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7042 a!3325))))))

(declare-fun b!282569 () Bool)

(declare-fun res!145677 () Bool)

(assert (=> b!282569 (=> (not res!145677) (not e!179368))))

(declare-fun arrayContainsKey!0 (array!14097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282569 (= res!145677 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282570 () Bool)

(assert (=> b!282570 (= e!179369 e!179370)))

(declare-fun res!145671 () Bool)

(assert (=> b!282570 (=> (not res!145671) (not e!179370))))

(assert (=> b!282570 (= res!145671 (not (= startIndex!26 i!1267)))))

(assert (=> b!282570 (= lt!139662 (array!14098 (store (arr!6690 a!3325) i!1267 k!2581) (size!7042 a!3325)))))

(assert (= (and start!27290 res!145672) b!282568))

(assert (= (and b!282568 res!145669) b!282567))

(assert (= (and b!282567 res!145674) b!282564))

(assert (= (and b!282564 res!145670) b!282569))

(assert (= (and b!282569 res!145677) b!282565))

(assert (= (and b!282565 res!145675) b!282566))

(assert (= (and b!282566 res!145673) b!282570))

(assert (= (and b!282570 res!145671) b!282563))

(assert (= (and b!282563 res!145676) b!282562))

(declare-fun m!297229 () Bool)

(assert (=> b!282567 m!297229))

(declare-fun m!297231 () Bool)

(assert (=> b!282564 m!297231))

(declare-fun m!297233 () Bool)

(assert (=> b!282569 m!297233))

(declare-fun m!297235 () Bool)

(assert (=> b!282570 m!297235))

(declare-fun m!297237 () Bool)

(assert (=> b!282563 m!297237))

(assert (=> b!282563 m!297237))

(declare-fun m!297239 () Bool)

(assert (=> b!282563 m!297239))

(declare-fun m!297241 () Bool)

(assert (=> start!27290 m!297241))

(declare-fun m!297243 () Bool)

(assert (=> start!27290 m!297243))

(declare-fun m!297245 () Bool)

(assert (=> b!282562 m!297245))

(declare-fun m!297247 () Bool)

(assert (=> b!282562 m!297247))

(assert (=> b!282562 m!297235))

(assert (=> b!282562 m!297237))

(declare-fun m!297249 () Bool)

(assert (=> b!282562 m!297249))

(assert (=> b!282562 m!297237))

(declare-fun m!297251 () Bool)

(assert (=> b!282562 m!297251))

(declare-fun m!297253 () Bool)

(assert (=> b!282562 m!297253))

(assert (=> b!282562 m!297247))

(declare-fun m!297255 () Bool)

(assert (=> b!282562 m!297255))

(declare-fun m!297257 () Bool)

(assert (=> b!282562 m!297257))

(declare-fun m!297259 () Bool)

(assert (=> b!282562 m!297259))

(declare-fun m!297261 () Bool)

(assert (=> b!282566 m!297261))

(declare-fun m!297263 () Bool)

(assert (=> b!282565 m!297263))

(push 1)

