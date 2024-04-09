; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69008 () Bool)

(assert start!69008)

(declare-fun b!804595 () Bool)

(declare-fun res!549288 () Bool)

(declare-fun e!445712 () Bool)

(assert (=> b!804595 (=> (not res!549288) (not e!445712))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43749 0))(
  ( (array!43750 (arr!20951 (Array (_ BitVec 32) (_ BitVec 64))) (size!21372 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43749)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!804595 (= res!549288 (and (= (size!21372 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21372 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21372 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804596 () Bool)

(declare-fun res!549286 () Bool)

(assert (=> b!804596 (=> (not res!549286) (not e!445712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804596 (= res!549286 (validKeyInArray!0 (select (arr!20951 a!3170) j!153)))))

(declare-fun b!804597 () Bool)

(declare-fun res!549287 () Bool)

(declare-fun e!445714 () Bool)

(assert (=> b!804597 (=> (not res!549287) (not e!445714))))

(declare-datatypes ((List!14967 0))(
  ( (Nil!14964) (Cons!14963 (h!16092 (_ BitVec 64)) (t!21290 List!14967)) )
))
(declare-fun arrayNoDuplicates!0 (array!43749 (_ BitVec 32) List!14967) Bool)

(assert (=> b!804597 (= res!549287 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14964))))

(declare-fun b!804598 () Bool)

(assert (=> b!804598 (= e!445714 false)))

(declare-fun lt!360233 () array!43749)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8549 0))(
  ( (MissingZero!8549 (index!36563 (_ BitVec 32))) (Found!8549 (index!36564 (_ BitVec 32))) (Intermediate!8549 (undefined!9361 Bool) (index!36565 (_ BitVec 32)) (x!67412 (_ BitVec 32))) (Undefined!8549) (MissingVacant!8549 (index!36566 (_ BitVec 32))) )
))
(declare-fun lt!360235 () SeekEntryResult!8549)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!360231 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43749 (_ BitVec 32)) SeekEntryResult!8549)

(assert (=> b!804598 (= lt!360235 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360231 lt!360233 mask!3266))))

(declare-fun lt!360234 () SeekEntryResult!8549)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43749 (_ BitVec 32)) SeekEntryResult!8549)

(assert (=> b!804598 (= lt!360234 (seekEntryOrOpen!0 lt!360231 lt!360233 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!804598 (= lt!360231 (select (store (arr!20951 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804598 (= lt!360233 (array!43750 (store (arr!20951 a!3170) i!1163 k!2044) (size!21372 a!3170)))))

(declare-fun b!804599 () Bool)

(assert (=> b!804599 (= e!445712 e!445714)))

(declare-fun res!549289 () Bool)

(assert (=> b!804599 (=> (not res!549289) (not e!445714))))

(declare-fun lt!360232 () SeekEntryResult!8549)

(assert (=> b!804599 (= res!549289 (or (= lt!360232 (MissingZero!8549 i!1163)) (= lt!360232 (MissingVacant!8549 i!1163))))))

(assert (=> b!804599 (= lt!360232 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804600 () Bool)

(declare-fun res!549292 () Bool)

(assert (=> b!804600 (=> (not res!549292) (not e!445712))))

(assert (=> b!804600 (= res!549292 (validKeyInArray!0 k!2044))))

(declare-fun res!549290 () Bool)

(assert (=> start!69008 (=> (not res!549290) (not e!445712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69008 (= res!549290 (validMask!0 mask!3266))))

(assert (=> start!69008 e!445712))

(assert (=> start!69008 true))

(declare-fun array_inv!16725 (array!43749) Bool)

(assert (=> start!69008 (array_inv!16725 a!3170)))

(declare-fun b!804601 () Bool)

(declare-fun res!549291 () Bool)

(assert (=> b!804601 (=> (not res!549291) (not e!445712))))

(declare-fun arrayContainsKey!0 (array!43749 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804601 (= res!549291 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804602 () Bool)

(declare-fun res!549284 () Bool)

(assert (=> b!804602 (=> (not res!549284) (not e!445714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43749 (_ BitVec 32)) Bool)

(assert (=> b!804602 (= res!549284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804603 () Bool)

(declare-fun res!549285 () Bool)

(assert (=> b!804603 (=> (not res!549285) (not e!445714))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!804603 (= res!549285 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21372 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20951 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21372 a!3170)) (= (select (arr!20951 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69008 res!549290) b!804595))

(assert (= (and b!804595 res!549288) b!804596))

(assert (= (and b!804596 res!549286) b!804600))

(assert (= (and b!804600 res!549292) b!804601))

(assert (= (and b!804601 res!549291) b!804599))

(assert (= (and b!804599 res!549289) b!804602))

(assert (= (and b!804602 res!549284) b!804597))

(assert (= (and b!804597 res!549287) b!804603))

(assert (= (and b!804603 res!549285) b!804598))

(declare-fun m!746551 () Bool)

(assert (=> b!804601 m!746551))

(declare-fun m!746553 () Bool)

(assert (=> b!804602 m!746553))

(declare-fun m!746555 () Bool)

(assert (=> b!804600 m!746555))

(declare-fun m!746557 () Bool)

(assert (=> start!69008 m!746557))

(declare-fun m!746559 () Bool)

(assert (=> start!69008 m!746559))

(declare-fun m!746561 () Bool)

(assert (=> b!804597 m!746561))

(declare-fun m!746563 () Bool)

(assert (=> b!804599 m!746563))

(declare-fun m!746565 () Bool)

(assert (=> b!804598 m!746565))

(declare-fun m!746567 () Bool)

(assert (=> b!804598 m!746567))

(declare-fun m!746569 () Bool)

(assert (=> b!804598 m!746569))

(declare-fun m!746571 () Bool)

(assert (=> b!804598 m!746571))

(declare-fun m!746573 () Bool)

(assert (=> b!804596 m!746573))

(assert (=> b!804596 m!746573))

(declare-fun m!746575 () Bool)

(assert (=> b!804596 m!746575))

(declare-fun m!746577 () Bool)

(assert (=> b!804603 m!746577))

(declare-fun m!746579 () Bool)

(assert (=> b!804603 m!746579))

(push 1)

