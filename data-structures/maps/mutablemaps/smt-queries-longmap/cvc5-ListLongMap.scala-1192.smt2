; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25630 () Bool)

(assert start!25630)

(declare-fun b!265672 () Bool)

(declare-fun res!130007 () Bool)

(declare-fun e!172040 () Bool)

(assert (=> b!265672 (=> (not res!130007) (not e!172040))))

(declare-datatypes ((array!12796 0))(
  ( (array!12797 (arr!6052 (Array (_ BitVec 32) (_ BitVec 64))) (size!6404 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12796)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265672 (= res!130007 (and (= (size!6404 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6404 a!3436))))))

(declare-fun b!265673 () Bool)

(declare-fun res!130009 () Bool)

(assert (=> b!265673 (=> (not res!130009) (not e!172040))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265673 (= res!130009 (validKeyInArray!0 k!2698))))

(declare-fun b!265674 () Bool)

(declare-fun res!130006 () Bool)

(declare-fun e!172042 () Bool)

(assert (=> b!265674 (=> (not res!130006) (not e!172042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12796 (_ BitVec 32)) Bool)

(assert (=> b!265674 (= res!130006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265675 () Bool)

(assert (=> b!265675 (= e!172042 false)))

(declare-fun lt!134221 () Bool)

(declare-datatypes ((List!3887 0))(
  ( (Nil!3884) (Cons!3883 (h!4550 (_ BitVec 64)) (t!8977 List!3887)) )
))
(declare-fun arrayNoDuplicates!0 (array!12796 (_ BitVec 32) List!3887) Bool)

(assert (=> b!265675 (= lt!134221 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3884))))

(declare-fun b!265676 () Bool)

(assert (=> b!265676 (= e!172040 e!172042)))

(declare-fun res!130008 () Bool)

(assert (=> b!265676 (=> (not res!130008) (not e!172042))))

(declare-datatypes ((SeekEntryResult!1254 0))(
  ( (MissingZero!1254 (index!7186 (_ BitVec 32))) (Found!1254 (index!7187 (_ BitVec 32))) (Intermediate!1254 (undefined!2066 Bool) (index!7188 (_ BitVec 32)) (x!25475 (_ BitVec 32))) (Undefined!1254) (MissingVacant!1254 (index!7189 (_ BitVec 32))) )
))
(declare-fun lt!134222 () SeekEntryResult!1254)

(assert (=> b!265676 (= res!130008 (or (= lt!134222 (MissingZero!1254 i!1355)) (= lt!134222 (MissingVacant!1254 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12796 (_ BitVec 32)) SeekEntryResult!1254)

(assert (=> b!265676 (= lt!134222 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265677 () Bool)

(declare-fun res!130010 () Bool)

(assert (=> b!265677 (=> (not res!130010) (not e!172040))))

(declare-fun arrayContainsKey!0 (array!12796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265677 (= res!130010 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun res!130011 () Bool)

(assert (=> start!25630 (=> (not res!130011) (not e!172040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25630 (= res!130011 (validMask!0 mask!4002))))

(assert (=> start!25630 e!172040))

(assert (=> start!25630 true))

(declare-fun array_inv!4006 (array!12796) Bool)

(assert (=> start!25630 (array_inv!4006 a!3436)))

(assert (= (and start!25630 res!130011) b!265672))

(assert (= (and b!265672 res!130007) b!265673))

(assert (= (and b!265673 res!130009) b!265677))

(assert (= (and b!265677 res!130010) b!265676))

(assert (= (and b!265676 res!130008) b!265674))

(assert (= (and b!265674 res!130006) b!265675))

(declare-fun m!282461 () Bool)

(assert (=> start!25630 m!282461))

(declare-fun m!282463 () Bool)

(assert (=> start!25630 m!282463))

(declare-fun m!282465 () Bool)

(assert (=> b!265674 m!282465))

(declare-fun m!282467 () Bool)

(assert (=> b!265677 m!282467))

(declare-fun m!282469 () Bool)

(assert (=> b!265676 m!282469))

(declare-fun m!282471 () Bool)

(assert (=> b!265675 m!282471))

(declare-fun m!282473 () Bool)

(assert (=> b!265673 m!282473))

(push 1)

