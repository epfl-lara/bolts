; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25986 () Bool)

(assert start!25986)

(declare-fun b!268022 () Bool)

(declare-fun res!132341 () Bool)

(declare-fun e!173193 () Bool)

(assert (=> b!268022 (=> (not res!132341) (not e!173193))))

(declare-datatypes ((array!13072 0))(
  ( (array!13073 (arr!6185 (Array (_ BitVec 32) (_ BitVec 64))) (size!6537 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13072)

(declare-datatypes ((List!4014 0))(
  ( (Nil!4011) (Cons!4010 (h!4677 (_ BitVec 64)) (t!9104 List!4014)) )
))
(declare-fun arrayNoDuplicates!0 (array!13072 (_ BitVec 32) List!4014) Bool)

(assert (=> b!268022 (= res!132341 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4011))))

(declare-fun b!268023 () Bool)

(declare-fun res!132342 () Bool)

(assert (=> b!268023 (=> (not res!132342) (not e!173193))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268023 (= res!132342 (and (= (size!6537 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6537 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6537 a!3325))))))

(declare-fun b!268024 () Bool)

(assert (=> b!268024 (= e!173193 false)))

(declare-datatypes ((SeekEntryResult!1354 0))(
  ( (MissingZero!1354 (index!7586 (_ BitVec 32))) (Found!1354 (index!7587 (_ BitVec 32))) (Intermediate!1354 (undefined!2166 Bool) (index!7588 (_ BitVec 32)) (x!25927 (_ BitVec 32))) (Undefined!1354) (MissingVacant!1354 (index!7589 (_ BitVec 32))) )
))
(declare-fun lt!134801 () SeekEntryResult!1354)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13072 (_ BitVec 32)) SeekEntryResult!1354)

(assert (=> b!268024 (= lt!134801 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!268025 () Bool)

(declare-fun res!132338 () Bool)

(assert (=> b!268025 (=> (not res!132338) (not e!173193))))

(declare-fun arrayContainsKey!0 (array!13072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268025 (= res!132338 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!132339 () Bool)

(assert (=> start!25986 (=> (not res!132339) (not e!173193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25986 (= res!132339 (validMask!0 mask!3868))))

(assert (=> start!25986 e!173193))

(declare-fun array_inv!4139 (array!13072) Bool)

(assert (=> start!25986 (array_inv!4139 a!3325)))

(assert (=> start!25986 true))

(declare-fun b!268026 () Bool)

(declare-fun res!132340 () Bool)

(assert (=> b!268026 (=> (not res!132340) (not e!173193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268026 (= res!132340 (validKeyInArray!0 k0!2581))))

(assert (= (and start!25986 res!132339) b!268023))

(assert (= (and b!268023 res!132342) b!268026))

(assert (= (and b!268026 res!132340) b!268022))

(assert (= (and b!268022 res!132341) b!268025))

(assert (= (and b!268025 res!132338) b!268024))

(declare-fun m!284281 () Bool)

(assert (=> b!268026 m!284281))

(declare-fun m!284283 () Bool)

(assert (=> b!268022 m!284283))

(declare-fun m!284285 () Bool)

(assert (=> b!268025 m!284285))

(declare-fun m!284287 () Bool)

(assert (=> start!25986 m!284287))

(declare-fun m!284289 () Bool)

(assert (=> start!25986 m!284289))

(declare-fun m!284291 () Bool)

(assert (=> b!268024 m!284291))

(check-sat (not b!268025) (not b!268026) (not start!25986) (not b!268022) (not b!268024))
