; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27292 () Bool)

(assert start!27292)

(declare-fun b!282589 () Bool)

(declare-fun res!145702 () Bool)

(declare-fun e!179380 () Bool)

(assert (=> b!282589 (=> (not res!145702) (not e!179380))))

(declare-datatypes ((array!14099 0))(
  ( (array!14100 (arr!6691 (Array (_ BitVec 32) (_ BitVec 64))) (size!7043 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14099)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282589 (= res!145702 (validKeyInArray!0 (select (arr!6691 a!3325) startIndex!26)))))

(declare-fun b!282590 () Bool)

(assert (=> b!282590 (= e!179380 (not true))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14099 (_ BitVec 32)) Bool)

(assert (=> b!282590 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8983 0))(
  ( (Unit!8984) )
))
(declare-fun lt!139677 () Unit!8983)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14099 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8983)

(assert (=> b!282590 (= lt!139677 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!139679 () array!14099)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1860 0))(
  ( (MissingZero!1860 (index!9610 (_ BitVec 32))) (Found!1860 (index!9611 (_ BitVec 32))) (Intermediate!1860 (undefined!2672 Bool) (index!9612 (_ BitVec 32)) (x!27794 (_ BitVec 32))) (Undefined!1860) (MissingVacant!1860 (index!9613 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14099 (_ BitVec 32)) SeekEntryResult!1860)

(assert (=> b!282590 (= (seekEntryOrOpen!0 (select (arr!6691 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6691 a!3325) i!1267 k!2581) startIndex!26) lt!139679 mask!3868))))

(declare-fun lt!139675 () Unit!8983)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14099 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8983)

(assert (=> b!282590 (= lt!139675 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4520 0))(
  ( (Nil!4517) (Cons!4516 (h!5186 (_ BitVec 64)) (t!9610 List!4520)) )
))
(declare-fun arrayNoDuplicates!0 (array!14099 (_ BitVec 32) List!4520) Bool)

(assert (=> b!282590 (arrayNoDuplicates!0 lt!139679 #b00000000000000000000000000000000 Nil!4517)))

(declare-fun lt!139678 () Unit!8983)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14099 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4520) Unit!8983)

(assert (=> b!282590 (= lt!139678 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4517))))

(declare-fun b!282591 () Bool)

(declare-fun res!145704 () Bool)

(declare-fun e!179383 () Bool)

(assert (=> b!282591 (=> (not res!145704) (not e!179383))))

(assert (=> b!282591 (= res!145704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282592 () Bool)

(declare-fun e!179382 () Bool)

(assert (=> b!282592 (= e!179382 e!179383)))

(declare-fun res!145697 () Bool)

(assert (=> b!282592 (=> (not res!145697) (not e!179383))))

(declare-fun lt!139676 () SeekEntryResult!1860)

(assert (=> b!282592 (= res!145697 (or (= lt!139676 (MissingZero!1860 i!1267)) (= lt!139676 (MissingVacant!1860 i!1267))))))

(assert (=> b!282592 (= lt!139676 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282593 () Bool)

(assert (=> b!282593 (= e!179383 e!179380)))

(declare-fun res!145698 () Bool)

(assert (=> b!282593 (=> (not res!145698) (not e!179380))))

(assert (=> b!282593 (= res!145698 (not (= startIndex!26 i!1267)))))

(assert (=> b!282593 (= lt!139679 (array!14100 (store (arr!6691 a!3325) i!1267 k!2581) (size!7043 a!3325)))))

(declare-fun b!282594 () Bool)

(declare-fun res!145703 () Bool)

(assert (=> b!282594 (=> (not res!145703) (not e!179382))))

(assert (=> b!282594 (= res!145703 (validKeyInArray!0 k!2581))))

(declare-fun b!282595 () Bool)

(declare-fun res!145701 () Bool)

(assert (=> b!282595 (=> (not res!145701) (not e!179382))))

(assert (=> b!282595 (= res!145701 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4517))))

(declare-fun res!145699 () Bool)

(assert (=> start!27292 (=> (not res!145699) (not e!179382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27292 (= res!145699 (validMask!0 mask!3868))))

(assert (=> start!27292 e!179382))

(declare-fun array_inv!4645 (array!14099) Bool)

(assert (=> start!27292 (array_inv!4645 a!3325)))

(assert (=> start!27292 true))

(declare-fun b!282596 () Bool)

(declare-fun res!145696 () Bool)

(assert (=> b!282596 (=> (not res!145696) (not e!179382))))

(declare-fun arrayContainsKey!0 (array!14099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282596 (= res!145696 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282597 () Bool)

(declare-fun res!145700 () Bool)

(assert (=> b!282597 (=> (not res!145700) (not e!179382))))

(assert (=> b!282597 (= res!145700 (and (= (size!7043 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7043 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7043 a!3325))))))

(assert (= (and start!27292 res!145699) b!282597))

(assert (= (and b!282597 res!145700) b!282594))

(assert (= (and b!282594 res!145703) b!282595))

(assert (= (and b!282595 res!145701) b!282596))

(assert (= (and b!282596 res!145696) b!282592))

(assert (= (and b!282592 res!145697) b!282591))

(assert (= (and b!282591 res!145704) b!282593))

(assert (= (and b!282593 res!145698) b!282589))

(assert (= (and b!282589 res!145702) b!282590))

(declare-fun m!297265 () Bool)

(assert (=> b!282594 m!297265))

(declare-fun m!297267 () Bool)

(assert (=> b!282591 m!297267))

(declare-fun m!297269 () Bool)

(assert (=> b!282593 m!297269))

(declare-fun m!297271 () Bool)

(assert (=> start!27292 m!297271))

(declare-fun m!297273 () Bool)

(assert (=> start!27292 m!297273))

(declare-fun m!297275 () Bool)

(assert (=> b!282595 m!297275))

(declare-fun m!297277 () Bool)

(assert (=> b!282589 m!297277))

(assert (=> b!282589 m!297277))

(declare-fun m!297279 () Bool)

(assert (=> b!282589 m!297279))

(declare-fun m!297281 () Bool)

(assert (=> b!282596 m!297281))

(declare-fun m!297283 () Bool)

(assert (=> b!282590 m!297283))

(declare-fun m!297285 () Bool)

(assert (=> b!282590 m!297285))

(declare-fun m!297287 () Bool)

(assert (=> b!282590 m!297287))

(assert (=> b!282590 m!297269))

(declare-fun m!297289 () Bool)

(assert (=> b!282590 m!297289))

(assert (=> b!282590 m!297277))

(declare-fun m!297291 () Bool)

(assert (=> b!282590 m!297291))

(declare-fun m!297293 () Bool)

(assert (=> b!282590 m!297293))

(assert (=> b!282590 m!297277))

(declare-fun m!297295 () Bool)

(assert (=> b!282590 m!297295))

(assert (=> b!282590 m!297287))

(declare-fun m!297297 () Bool)

(assert (=> b!282590 m!297297))

(declare-fun m!297299 () Bool)

(assert (=> b!282592 m!297299))

(push 1)

