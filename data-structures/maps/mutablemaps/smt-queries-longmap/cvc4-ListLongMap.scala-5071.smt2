; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68960 () Bool)

(assert start!68960)

(declare-fun b!804057 () Bool)

(declare-fun res!548752 () Bool)

(declare-fun e!445497 () Bool)

(assert (=> b!804057 (=> (not res!548752) (not e!445497))))

(declare-datatypes ((array!43701 0))(
  ( (array!43702 (arr!20927 (Array (_ BitVec 32) (_ BitVec 64))) (size!21348 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43701)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43701 (_ BitVec 32)) Bool)

(assert (=> b!804057 (= res!548752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804058 () Bool)

(assert (=> b!804058 (= e!445497 false)))

(declare-fun lt!360037 () Bool)

(declare-datatypes ((List!14943 0))(
  ( (Nil!14940) (Cons!14939 (h!16068 (_ BitVec 64)) (t!21266 List!14943)) )
))
(declare-fun arrayNoDuplicates!0 (array!43701 (_ BitVec 32) List!14943) Bool)

(assert (=> b!804058 (= lt!360037 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14940))))

(declare-fun b!804059 () Bool)

(declare-fun res!548746 () Bool)

(declare-fun e!445496 () Bool)

(assert (=> b!804059 (=> (not res!548746) (not e!445496))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804059 (= res!548746 (validKeyInArray!0 (select (arr!20927 a!3170) j!153)))))

(declare-fun b!804060 () Bool)

(declare-fun res!548747 () Bool)

(assert (=> b!804060 (=> (not res!548747) (not e!445496))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43701 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804060 (= res!548747 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804061 () Bool)

(assert (=> b!804061 (= e!445496 e!445497)))

(declare-fun res!548748 () Bool)

(assert (=> b!804061 (=> (not res!548748) (not e!445497))))

(declare-datatypes ((SeekEntryResult!8525 0))(
  ( (MissingZero!8525 (index!36467 (_ BitVec 32))) (Found!8525 (index!36468 (_ BitVec 32))) (Intermediate!8525 (undefined!9337 Bool) (index!36469 (_ BitVec 32)) (x!67324 (_ BitVec 32))) (Undefined!8525) (MissingVacant!8525 (index!36470 (_ BitVec 32))) )
))
(declare-fun lt!360036 () SeekEntryResult!8525)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804061 (= res!548748 (or (= lt!360036 (MissingZero!8525 i!1163)) (= lt!360036 (MissingVacant!8525 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43701 (_ BitVec 32)) SeekEntryResult!8525)

(assert (=> b!804061 (= lt!360036 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!548751 () Bool)

(assert (=> start!68960 (=> (not res!548751) (not e!445496))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68960 (= res!548751 (validMask!0 mask!3266))))

(assert (=> start!68960 e!445496))

(assert (=> start!68960 true))

(declare-fun array_inv!16701 (array!43701) Bool)

(assert (=> start!68960 (array_inv!16701 a!3170)))

(declare-fun b!804062 () Bool)

(declare-fun res!548750 () Bool)

(assert (=> b!804062 (=> (not res!548750) (not e!445496))))

(assert (=> b!804062 (= res!548750 (and (= (size!21348 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21348 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21348 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804063 () Bool)

(declare-fun res!548749 () Bool)

(assert (=> b!804063 (=> (not res!548749) (not e!445496))))

(assert (=> b!804063 (= res!548749 (validKeyInArray!0 k!2044))))

(assert (= (and start!68960 res!548751) b!804062))

(assert (= (and b!804062 res!548750) b!804059))

(assert (= (and b!804059 res!548746) b!804063))

(assert (= (and b!804063 res!548749) b!804060))

(assert (= (and b!804060 res!548747) b!804061))

(assert (= (and b!804061 res!548748) b!804057))

(assert (= (and b!804057 res!548752) b!804058))

(declare-fun m!746059 () Bool)

(assert (=> b!804059 m!746059))

(assert (=> b!804059 m!746059))

(declare-fun m!746061 () Bool)

(assert (=> b!804059 m!746061))

(declare-fun m!746063 () Bool)

(assert (=> start!68960 m!746063))

(declare-fun m!746065 () Bool)

(assert (=> start!68960 m!746065))

(declare-fun m!746067 () Bool)

(assert (=> b!804058 m!746067))

(declare-fun m!746069 () Bool)

(assert (=> b!804060 m!746069))

(declare-fun m!746071 () Bool)

(assert (=> b!804061 m!746071))

(declare-fun m!746073 () Bool)

(assert (=> b!804063 m!746073))

(declare-fun m!746075 () Bool)

(assert (=> b!804057 m!746075))

(push 1)

(assert (not b!804060))

(assert (not b!804057))

(assert (not b!804063))

(assert (not b!804061))

