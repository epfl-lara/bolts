; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68986 () Bool)

(assert start!68986)

(declare-fun b!804330 () Bool)

(declare-fun res!549022 () Bool)

(declare-fun e!445614 () Bool)

(assert (=> b!804330 (=> (not res!549022) (not e!445614))))

(declare-datatypes ((array!43727 0))(
  ( (array!43728 (arr!20940 (Array (_ BitVec 32) (_ BitVec 64))) (size!21361 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43727)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804330 (= res!549022 (validKeyInArray!0 (select (arr!20940 a!3170) j!153)))))

(declare-fun b!804331 () Bool)

(declare-fun e!445615 () Bool)

(assert (=> b!804331 (= e!445614 e!445615)))

(declare-fun res!549021 () Bool)

(assert (=> b!804331 (=> (not res!549021) (not e!445615))))

(declare-datatypes ((SeekEntryResult!8538 0))(
  ( (MissingZero!8538 (index!36519 (_ BitVec 32))) (Found!8538 (index!36520 (_ BitVec 32))) (Intermediate!8538 (undefined!9350 Bool) (index!36521 (_ BitVec 32)) (x!67377 (_ BitVec 32))) (Undefined!8538) (MissingVacant!8538 (index!36522 (_ BitVec 32))) )
))
(declare-fun lt!360115 () SeekEntryResult!8538)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804331 (= res!549021 (or (= lt!360115 (MissingZero!8538 i!1163)) (= lt!360115 (MissingVacant!8538 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43727 (_ BitVec 32)) SeekEntryResult!8538)

(assert (=> b!804331 (= lt!360115 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!549024 () Bool)

(assert (=> start!68986 (=> (not res!549024) (not e!445614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68986 (= res!549024 (validMask!0 mask!3266))))

(assert (=> start!68986 e!445614))

(assert (=> start!68986 true))

(declare-fun array_inv!16714 (array!43727) Bool)

(assert (=> start!68986 (array_inv!16714 a!3170)))

(declare-fun b!804332 () Bool)

(declare-fun res!549019 () Bool)

(assert (=> b!804332 (=> (not res!549019) (not e!445614))))

(assert (=> b!804332 (= res!549019 (validKeyInArray!0 k!2044))))

(declare-fun b!804333 () Bool)

(declare-fun res!549020 () Bool)

(assert (=> b!804333 (=> (not res!549020) (not e!445615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43727 (_ BitVec 32)) Bool)

(assert (=> b!804333 (= res!549020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804334 () Bool)

(declare-fun res!549025 () Bool)

(assert (=> b!804334 (=> (not res!549025) (not e!445614))))

(declare-fun arrayContainsKey!0 (array!43727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804334 (= res!549025 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804335 () Bool)

(declare-fun res!549023 () Bool)

(assert (=> b!804335 (=> (not res!549023) (not e!445614))))

(assert (=> b!804335 (= res!549023 (and (= (size!21361 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21361 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21361 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804336 () Bool)

(assert (=> b!804336 (= e!445615 false)))

(declare-fun lt!360114 () Bool)

(declare-datatypes ((List!14956 0))(
  ( (Nil!14953) (Cons!14952 (h!16081 (_ BitVec 64)) (t!21279 List!14956)) )
))
(declare-fun arrayNoDuplicates!0 (array!43727 (_ BitVec 32) List!14956) Bool)

(assert (=> b!804336 (= lt!360114 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14953))))

(assert (= (and start!68986 res!549024) b!804335))

(assert (= (and b!804335 res!549023) b!804330))

(assert (= (and b!804330 res!549022) b!804332))

(assert (= (and b!804332 res!549019) b!804334))

(assert (= (and b!804334 res!549025) b!804331))

(assert (= (and b!804331 res!549021) b!804333))

(assert (= (and b!804333 res!549020) b!804336))

(declare-fun m!746293 () Bool)

(assert (=> b!804331 m!746293))

(declare-fun m!746295 () Bool)

(assert (=> b!804332 m!746295))

(declare-fun m!746297 () Bool)

(assert (=> b!804334 m!746297))

(declare-fun m!746299 () Bool)

(assert (=> start!68986 m!746299))

(declare-fun m!746301 () Bool)

(assert (=> start!68986 m!746301))

(declare-fun m!746303 () Bool)

(assert (=> b!804333 m!746303))

(declare-fun m!746305 () Bool)

(assert (=> b!804336 m!746305))

(declare-fun m!746307 () Bool)

(assert (=> b!804330 m!746307))

(assert (=> b!804330 m!746307))

(declare-fun m!746309 () Bool)

(assert (=> b!804330 m!746309))

(push 1)

