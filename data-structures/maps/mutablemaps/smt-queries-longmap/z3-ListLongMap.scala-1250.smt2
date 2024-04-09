; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26070 () Bool)

(assert start!26070)

(declare-fun b!268765 () Bool)

(declare-fun res!133086 () Bool)

(declare-fun e!173550 () Bool)

(assert (=> b!268765 (=> (not res!133086) (not e!173550))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268765 (= res!133086 (validKeyInArray!0 k0!2581))))

(declare-fun res!133081 () Bool)

(assert (=> start!26070 (=> (not res!133081) (not e!173550))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26070 (= res!133081 (validMask!0 mask!3868))))

(assert (=> start!26070 e!173550))

(declare-datatypes ((array!13156 0))(
  ( (array!13157 (arr!6227 (Array (_ BitVec 32) (_ BitVec 64))) (size!6579 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13156)

(declare-fun array_inv!4181 (array!13156) Bool)

(assert (=> start!26070 (array_inv!4181 a!3325)))

(assert (=> start!26070 true))

(declare-fun b!268766 () Bool)

(declare-fun res!133082 () Bool)

(assert (=> b!268766 (=> (not res!133082) (not e!173550))))

(declare-fun arrayContainsKey!0 (array!13156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268766 (= res!133082 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268767 () Bool)

(declare-fun res!133083 () Bool)

(assert (=> b!268767 (=> (not res!133083) (not e!173550))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268767 (= res!133083 (and (= (size!6579 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6579 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6579 a!3325))))))

(declare-fun b!268768 () Bool)

(declare-fun e!173549 () Bool)

(assert (=> b!268768 (= e!173549 false)))

(declare-fun lt!135022 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13156 (_ BitVec 32)) Bool)

(assert (=> b!268768 (= lt!135022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268769 () Bool)

(assert (=> b!268769 (= e!173550 e!173549)))

(declare-fun res!133085 () Bool)

(assert (=> b!268769 (=> (not res!133085) (not e!173549))))

(declare-datatypes ((SeekEntryResult!1396 0))(
  ( (MissingZero!1396 (index!7754 (_ BitVec 32))) (Found!1396 (index!7755 (_ BitVec 32))) (Intermediate!1396 (undefined!2208 Bool) (index!7756 (_ BitVec 32)) (x!26081 (_ BitVec 32))) (Undefined!1396) (MissingVacant!1396 (index!7757 (_ BitVec 32))) )
))
(declare-fun lt!135023 () SeekEntryResult!1396)

(assert (=> b!268769 (= res!133085 (or (= lt!135023 (MissingZero!1396 i!1267)) (= lt!135023 (MissingVacant!1396 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13156 (_ BitVec 32)) SeekEntryResult!1396)

(assert (=> b!268769 (= lt!135023 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268770 () Bool)

(declare-fun res!133084 () Bool)

(assert (=> b!268770 (=> (not res!133084) (not e!173550))))

(declare-datatypes ((List!4056 0))(
  ( (Nil!4053) (Cons!4052 (h!4719 (_ BitVec 64)) (t!9146 List!4056)) )
))
(declare-fun arrayNoDuplicates!0 (array!13156 (_ BitVec 32) List!4056) Bool)

(assert (=> b!268770 (= res!133084 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4053))))

(assert (= (and start!26070 res!133081) b!268767))

(assert (= (and b!268767 res!133083) b!268765))

(assert (= (and b!268765 res!133086) b!268770))

(assert (= (and b!268770 res!133084) b!268766))

(assert (= (and b!268766 res!133082) b!268769))

(assert (= (and b!268769 res!133085) b!268768))

(declare-fun m!284853 () Bool)

(assert (=> b!268766 m!284853))

(declare-fun m!284855 () Bool)

(assert (=> b!268770 m!284855))

(declare-fun m!284857 () Bool)

(assert (=> b!268769 m!284857))

(declare-fun m!284859 () Bool)

(assert (=> b!268765 m!284859))

(declare-fun m!284861 () Bool)

(assert (=> start!26070 m!284861))

(declare-fun m!284863 () Bool)

(assert (=> start!26070 m!284863))

(declare-fun m!284865 () Bool)

(assert (=> b!268768 m!284865))

(check-sat (not b!268768) (not b!268766) (not b!268770) (not start!26070) (not b!268769) (not b!268765))
(check-sat)
