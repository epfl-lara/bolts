; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26046 () Bool)

(assert start!26046)

(declare-fun b!268549 () Bool)

(declare-fun res!132868 () Bool)

(declare-fun e!173442 () Bool)

(assert (=> b!268549 (=> (not res!132868) (not e!173442))))

(declare-datatypes ((array!13132 0))(
  ( (array!13133 (arr!6215 (Array (_ BitVec 32) (_ BitVec 64))) (size!6567 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13132)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268549 (= res!132868 (and (= (size!6567 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6567 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6567 a!3325))))))

(declare-fun res!132869 () Bool)

(assert (=> start!26046 (=> (not res!132869) (not e!173442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26046 (= res!132869 (validMask!0 mask!3868))))

(assert (=> start!26046 e!173442))

(declare-fun array_inv!4169 (array!13132) Bool)

(assert (=> start!26046 (array_inv!4169 a!3325)))

(assert (=> start!26046 true))

(declare-fun b!268550 () Bool)

(declare-fun res!132865 () Bool)

(assert (=> b!268550 (=> (not res!132865) (not e!173442))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268550 (= res!132865 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268551 () Bool)

(declare-fun e!173441 () Bool)

(assert (=> b!268551 (= e!173441 false)))

(declare-fun lt!134951 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13132 (_ BitVec 32)) Bool)

(assert (=> b!268551 (= lt!134951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268552 () Bool)

(declare-fun res!132866 () Bool)

(assert (=> b!268552 (=> (not res!132866) (not e!173442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268552 (= res!132866 (validKeyInArray!0 k0!2581))))

(declare-fun b!268553 () Bool)

(assert (=> b!268553 (= e!173442 e!173441)))

(declare-fun res!132870 () Bool)

(assert (=> b!268553 (=> (not res!132870) (not e!173441))))

(declare-datatypes ((SeekEntryResult!1384 0))(
  ( (MissingZero!1384 (index!7706 (_ BitVec 32))) (Found!1384 (index!7707 (_ BitVec 32))) (Intermediate!1384 (undefined!2196 Bool) (index!7708 (_ BitVec 32)) (x!26037 (_ BitVec 32))) (Undefined!1384) (MissingVacant!1384 (index!7709 (_ BitVec 32))) )
))
(declare-fun lt!134950 () SeekEntryResult!1384)

(assert (=> b!268553 (= res!132870 (or (= lt!134950 (MissingZero!1384 i!1267)) (= lt!134950 (MissingVacant!1384 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13132 (_ BitVec 32)) SeekEntryResult!1384)

(assert (=> b!268553 (= lt!134950 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268554 () Bool)

(declare-fun res!132867 () Bool)

(assert (=> b!268554 (=> (not res!132867) (not e!173442))))

(declare-datatypes ((List!4044 0))(
  ( (Nil!4041) (Cons!4040 (h!4707 (_ BitVec 64)) (t!9134 List!4044)) )
))
(declare-fun arrayNoDuplicates!0 (array!13132 (_ BitVec 32) List!4044) Bool)

(assert (=> b!268554 (= res!132867 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4041))))

(assert (= (and start!26046 res!132869) b!268549))

(assert (= (and b!268549 res!132868) b!268552))

(assert (= (and b!268552 res!132866) b!268554))

(assert (= (and b!268554 res!132867) b!268550))

(assert (= (and b!268550 res!132865) b!268553))

(assert (= (and b!268553 res!132870) b!268551))

(declare-fun m!284685 () Bool)

(assert (=> b!268552 m!284685))

(declare-fun m!284687 () Bool)

(assert (=> b!268553 m!284687))

(declare-fun m!284689 () Bool)

(assert (=> start!26046 m!284689))

(declare-fun m!284691 () Bool)

(assert (=> start!26046 m!284691))

(declare-fun m!284693 () Bool)

(assert (=> b!268554 m!284693))

(declare-fun m!284695 () Bool)

(assert (=> b!268550 m!284695))

(declare-fun m!284697 () Bool)

(assert (=> b!268551 m!284697))

(check-sat (not b!268551) (not b!268553) (not b!268550) (not start!26046) (not b!268554) (not b!268552))
(check-sat)
