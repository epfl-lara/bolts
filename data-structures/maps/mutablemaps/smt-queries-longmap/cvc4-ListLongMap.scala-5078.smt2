; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69002 () Bool)

(assert start!69002)

(declare-fun b!804514 () Bool)

(declare-fun e!445687 () Bool)

(assert (=> b!804514 (= e!445687 false)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!360189 () (_ BitVec 64))

(declare-datatypes ((array!43743 0))(
  ( (array!43744 (arr!20948 (Array (_ BitVec 32) (_ BitVec 64))) (size!21369 (_ BitVec 32))) )
))
(declare-fun lt!360187 () array!43743)

(declare-datatypes ((SeekEntryResult!8546 0))(
  ( (MissingZero!8546 (index!36551 (_ BitVec 32))) (Found!8546 (index!36552 (_ BitVec 32))) (Intermediate!8546 (undefined!9358 Bool) (index!36553 (_ BitVec 32)) (x!67401 (_ BitVec 32))) (Undefined!8546) (MissingVacant!8546 (index!36554 (_ BitVec 32))) )
))
(declare-fun lt!360188 () SeekEntryResult!8546)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43743 (_ BitVec 32)) SeekEntryResult!8546)

(assert (=> b!804514 (= lt!360188 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360189 lt!360187 mask!3266))))

(declare-fun lt!360190 () SeekEntryResult!8546)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43743 (_ BitVec 32)) SeekEntryResult!8546)

(assert (=> b!804514 (= lt!360190 (seekEntryOrOpen!0 lt!360189 lt!360187 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43743)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804514 (= lt!360189 (select (store (arr!20948 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804514 (= lt!360187 (array!43744 (store (arr!20948 a!3170) i!1163 k!2044) (size!21369 a!3170)))))

(declare-fun b!804515 () Bool)

(declare-fun res!549210 () Bool)

(declare-fun e!445686 () Bool)

(assert (=> b!804515 (=> (not res!549210) (not e!445686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804515 (= res!549210 (validKeyInArray!0 k!2044))))

(declare-fun b!804516 () Bool)

(declare-fun res!549209 () Bool)

(assert (=> b!804516 (=> (not res!549209) (not e!445686))))

(assert (=> b!804516 (= res!549209 (validKeyInArray!0 (select (arr!20948 a!3170) j!153)))))

(declare-fun b!804517 () Bool)

(declare-fun res!549211 () Bool)

(assert (=> b!804517 (=> (not res!549211) (not e!445687))))

(declare-datatypes ((List!14964 0))(
  ( (Nil!14961) (Cons!14960 (h!16089 (_ BitVec 64)) (t!21287 List!14964)) )
))
(declare-fun arrayNoDuplicates!0 (array!43743 (_ BitVec 32) List!14964) Bool)

(assert (=> b!804517 (= res!549211 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14961))))

(declare-fun b!804518 () Bool)

(declare-fun res!549207 () Bool)

(assert (=> b!804518 (=> (not res!549207) (not e!445687))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!804518 (= res!549207 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21369 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20948 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21369 a!3170)) (= (select (arr!20948 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!549204 () Bool)

(assert (=> start!69002 (=> (not res!549204) (not e!445686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69002 (= res!549204 (validMask!0 mask!3266))))

(assert (=> start!69002 e!445686))

(assert (=> start!69002 true))

(declare-fun array_inv!16722 (array!43743) Bool)

(assert (=> start!69002 (array_inv!16722 a!3170)))

(declare-fun b!804519 () Bool)

(declare-fun res!549206 () Bool)

(assert (=> b!804519 (=> (not res!549206) (not e!445687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43743 (_ BitVec 32)) Bool)

(assert (=> b!804519 (= res!549206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804520 () Bool)

(assert (=> b!804520 (= e!445686 e!445687)))

(declare-fun res!549208 () Bool)

(assert (=> b!804520 (=> (not res!549208) (not e!445687))))

(declare-fun lt!360186 () SeekEntryResult!8546)

(assert (=> b!804520 (= res!549208 (or (= lt!360186 (MissingZero!8546 i!1163)) (= lt!360186 (MissingVacant!8546 i!1163))))))

(assert (=> b!804520 (= lt!360186 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804521 () Bool)

(declare-fun res!549205 () Bool)

(assert (=> b!804521 (=> (not res!549205) (not e!445686))))

(assert (=> b!804521 (= res!549205 (and (= (size!21369 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21369 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21369 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804522 () Bool)

(declare-fun res!549203 () Bool)

(assert (=> b!804522 (=> (not res!549203) (not e!445686))))

(declare-fun arrayContainsKey!0 (array!43743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804522 (= res!549203 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69002 res!549204) b!804521))

(assert (= (and b!804521 res!549205) b!804516))

(assert (= (and b!804516 res!549209) b!804515))

(assert (= (and b!804515 res!549210) b!804522))

(assert (= (and b!804522 res!549203) b!804520))

(assert (= (and b!804520 res!549208) b!804519))

(assert (= (and b!804519 res!549206) b!804517))

(assert (= (and b!804517 res!549211) b!804518))

(assert (= (and b!804518 res!549207) b!804514))

(declare-fun m!746461 () Bool)

(assert (=> b!804522 m!746461))

(declare-fun m!746463 () Bool)

(assert (=> b!804515 m!746463))

(declare-fun m!746465 () Bool)

(assert (=> b!804514 m!746465))

(declare-fun m!746467 () Bool)

(assert (=> b!804514 m!746467))

(declare-fun m!746469 () Bool)

(assert (=> b!804514 m!746469))

(declare-fun m!746471 () Bool)

(assert (=> b!804514 m!746471))

(declare-fun m!746473 () Bool)

(assert (=> b!804520 m!746473))

(declare-fun m!746475 () Bool)

(assert (=> b!804519 m!746475))

(declare-fun m!746477 () Bool)

(assert (=> b!804518 m!746477))

(declare-fun m!746479 () Bool)

(assert (=> b!804518 m!746479))

(declare-fun m!746481 () Bool)

(assert (=> b!804516 m!746481))

(assert (=> b!804516 m!746481))

(declare-fun m!746483 () Bool)

(assert (=> b!804516 m!746483))

(declare-fun m!746485 () Bool)

(assert (=> b!804517 m!746485))

(declare-fun m!746487 () Bool)

(assert (=> start!69002 m!746487))

(declare-fun m!746489 () Bool)

(assert (=> start!69002 m!746489))

(push 1)

(assert (not b!804514))

(assert (not b!804522))

(assert (not b!804517))

