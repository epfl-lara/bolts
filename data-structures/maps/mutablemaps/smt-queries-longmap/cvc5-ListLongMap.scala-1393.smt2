; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27220 () Bool)

(assert start!27220)

(declare-fun b!281617 () Bool)

(declare-fun res!144728 () Bool)

(declare-fun e!178950 () Bool)

(assert (=> b!281617 (=> (not res!144728) (not e!178950))))

(declare-datatypes ((array!14027 0))(
  ( (array!14028 (arr!6655 (Array (_ BitVec 32) (_ BitVec 64))) (size!7007 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14027)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14027 (_ BitVec 32)) Bool)

(assert (=> b!281617 (= res!144728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281618 () Bool)

(declare-fun e!178949 () Bool)

(assert (=> b!281618 (= e!178949 e!178950)))

(declare-fun res!144729 () Bool)

(assert (=> b!281618 (=> (not res!144729) (not e!178950))))

(declare-datatypes ((SeekEntryResult!1824 0))(
  ( (MissingZero!1824 (index!9466 (_ BitVec 32))) (Found!1824 (index!9467 (_ BitVec 32))) (Intermediate!1824 (undefined!2636 Bool) (index!9468 (_ BitVec 32)) (x!27662 (_ BitVec 32))) (Undefined!1824) (MissingVacant!1824 (index!9469 (_ BitVec 32))) )
))
(declare-fun lt!139161 () SeekEntryResult!1824)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281618 (= res!144729 (or (= lt!139161 (MissingZero!1824 i!1267)) (= lt!139161 (MissingVacant!1824 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14027 (_ BitVec 32)) SeekEntryResult!1824)

(assert (=> b!281618 (= lt!139161 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281619 () Bool)

(declare-fun res!144724 () Bool)

(assert (=> b!281619 (=> (not res!144724) (not e!178949))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281619 (= res!144724 (and (= (size!7007 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7007 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7007 a!3325))))))

(declare-fun b!281620 () Bool)

(declare-fun e!178948 () Bool)

(assert (=> b!281620 (= e!178950 e!178948)))

(declare-fun res!144730 () Bool)

(assert (=> b!281620 (=> (not res!144730) (not e!178948))))

(assert (=> b!281620 (= res!144730 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139160 () array!14027)

(assert (=> b!281620 (= lt!139160 (array!14028 (store (arr!6655 a!3325) i!1267 k!2581) (size!7007 a!3325)))))

(declare-fun res!144726 () Bool)

(assert (=> start!27220 (=> (not res!144726) (not e!178949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27220 (= res!144726 (validMask!0 mask!3868))))

(assert (=> start!27220 e!178949))

(declare-fun array_inv!4609 (array!14027) Bool)

(assert (=> start!27220 (array_inv!4609 a!3325)))

(assert (=> start!27220 true))

(declare-fun b!281621 () Bool)

(declare-fun res!144727 () Bool)

(assert (=> b!281621 (=> (not res!144727) (not e!178949))))

(declare-datatypes ((List!4484 0))(
  ( (Nil!4481) (Cons!4480 (h!5150 (_ BitVec 64)) (t!9574 List!4484)) )
))
(declare-fun arrayNoDuplicates!0 (array!14027 (_ BitVec 32) List!4484) Bool)

(assert (=> b!281621 (= res!144727 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4481))))

(declare-fun b!281622 () Bool)

(declare-fun res!144731 () Bool)

(assert (=> b!281622 (=> (not res!144731) (not e!178949))))

(declare-fun arrayContainsKey!0 (array!14027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281622 (= res!144731 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281623 () Bool)

(assert (=> b!281623 (= e!178948 (not (bvsle #b00000000000000000000000000000000 (size!7007 a!3325))))))

(assert (=> b!281623 (= (seekEntryOrOpen!0 (select (arr!6655 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6655 a!3325) i!1267 k!2581) startIndex!26) lt!139160 mask!3868))))

(declare-datatypes ((Unit!8911 0))(
  ( (Unit!8912) )
))
(declare-fun lt!139163 () Unit!8911)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14027 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8911)

(assert (=> b!281623 (= lt!139163 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!281623 (arrayNoDuplicates!0 lt!139160 #b00000000000000000000000000000000 Nil!4481)))

(declare-fun lt!139162 () Unit!8911)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14027 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4484) Unit!8911)

(assert (=> b!281623 (= lt!139162 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4481))))

(declare-fun b!281624 () Bool)

(declare-fun res!144732 () Bool)

(assert (=> b!281624 (=> (not res!144732) (not e!178949))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281624 (= res!144732 (validKeyInArray!0 k!2581))))

(declare-fun b!281625 () Bool)

(declare-fun res!144725 () Bool)

(assert (=> b!281625 (=> (not res!144725) (not e!178948))))

(assert (=> b!281625 (= res!144725 (validKeyInArray!0 (select (arr!6655 a!3325) startIndex!26)))))

(assert (= (and start!27220 res!144726) b!281619))

(assert (= (and b!281619 res!144724) b!281624))

(assert (= (and b!281624 res!144732) b!281621))

(assert (= (and b!281621 res!144727) b!281622))

(assert (= (and b!281622 res!144731) b!281618))

(assert (= (and b!281618 res!144729) b!281617))

(assert (= (and b!281617 res!144728) b!281620))

(assert (= (and b!281620 res!144730) b!281625))

(assert (= (and b!281625 res!144725) b!281623))

(declare-fun m!296005 () Bool)

(assert (=> start!27220 m!296005))

(declare-fun m!296007 () Bool)

(assert (=> start!27220 m!296007))

(declare-fun m!296009 () Bool)

(assert (=> b!281618 m!296009))

(declare-fun m!296011 () Bool)

(assert (=> b!281625 m!296011))

(assert (=> b!281625 m!296011))

(declare-fun m!296013 () Bool)

(assert (=> b!281625 m!296013))

(declare-fun m!296015 () Bool)

(assert (=> b!281624 m!296015))

(declare-fun m!296017 () Bool)

(assert (=> b!281623 m!296017))

(declare-fun m!296019 () Bool)

(assert (=> b!281623 m!296019))

(assert (=> b!281623 m!296017))

(declare-fun m!296021 () Bool)

(assert (=> b!281623 m!296021))

(declare-fun m!296023 () Bool)

(assert (=> b!281623 m!296023))

(assert (=> b!281623 m!296011))

(declare-fun m!296025 () Bool)

(assert (=> b!281623 m!296025))

(declare-fun m!296027 () Bool)

(assert (=> b!281623 m!296027))

(assert (=> b!281623 m!296011))

(declare-fun m!296029 () Bool)

(assert (=> b!281623 m!296029))

(assert (=> b!281620 m!296021))

(declare-fun m!296031 () Bool)

(assert (=> b!281617 m!296031))

(declare-fun m!296033 () Bool)

(assert (=> b!281622 m!296033))

(declare-fun m!296035 () Bool)

(assert (=> b!281621 m!296035))

(push 1)

