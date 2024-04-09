; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69182 () Bool)

(assert start!69182)

(declare-fun b!806339 () Bool)

(declare-fun res!550636 () Bool)

(declare-fun e!446560 () Bool)

(assert (=> b!806339 (=> (not res!550636) (not e!446560))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806339 (= res!550636 (validKeyInArray!0 k!2044))))

(declare-fun b!806340 () Bool)

(declare-fun e!446558 () Bool)

(declare-fun e!446559 () Bool)

(assert (=> b!806340 (= e!446558 e!446559)))

(declare-fun res!550641 () Bool)

(assert (=> b!806340 (=> (not res!550641) (not e!446559))))

(declare-datatypes ((SeekEntryResult!8588 0))(
  ( (MissingZero!8588 (index!36719 (_ BitVec 32))) (Found!8588 (index!36720 (_ BitVec 32))) (Intermediate!8588 (undefined!9400 Bool) (index!36721 (_ BitVec 32)) (x!67561 (_ BitVec 32))) (Undefined!8588) (MissingVacant!8588 (index!36722 (_ BitVec 32))) )
))
(declare-fun lt!361125 () SeekEntryResult!8588)

(declare-fun lt!361128 () SeekEntryResult!8588)

(assert (=> b!806340 (= res!550641 (= lt!361125 lt!361128))))

(declare-datatypes ((array!43833 0))(
  ( (array!43834 (arr!20990 (Array (_ BitVec 32) (_ BitVec 64))) (size!21411 (_ BitVec 32))) )
))
(declare-fun lt!361123 () array!43833)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!361127 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43833 (_ BitVec 32)) SeekEntryResult!8588)

(assert (=> b!806340 (= lt!361128 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361127 lt!361123 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43833 (_ BitVec 32)) SeekEntryResult!8588)

(assert (=> b!806340 (= lt!361125 (seekEntryOrOpen!0 lt!361127 lt!361123 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43833)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!806340 (= lt!361127 (select (store (arr!20990 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806340 (= lt!361123 (array!43834 (store (arr!20990 a!3170) i!1163 k!2044) (size!21411 a!3170)))))

(declare-fun res!550635 () Bool)

(assert (=> start!69182 (=> (not res!550635) (not e!446560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69182 (= res!550635 (validMask!0 mask!3266))))

(assert (=> start!69182 e!446560))

(assert (=> start!69182 true))

(declare-fun array_inv!16764 (array!43833) Bool)

(assert (=> start!69182 (array_inv!16764 a!3170)))

(declare-fun b!806341 () Bool)

(declare-fun res!550638 () Bool)

(assert (=> b!806341 (=> (not res!550638) (not e!446560))))

(assert (=> b!806341 (= res!550638 (validKeyInArray!0 (select (arr!20990 a!3170) j!153)))))

(declare-fun b!806342 () Bool)

(declare-fun res!550634 () Bool)

(assert (=> b!806342 (=> (not res!550634) (not e!446560))))

(declare-fun arrayContainsKey!0 (array!43833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806342 (= res!550634 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806343 () Bool)

(declare-fun res!550633 () Bool)

(assert (=> b!806343 (=> (not res!550633) (not e!446560))))

(assert (=> b!806343 (= res!550633 (and (= (size!21411 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21411 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21411 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806344 () Bool)

(declare-fun e!446556 () Bool)

(assert (=> b!806344 (= e!446559 e!446556)))

(declare-fun res!550637 () Bool)

(assert (=> b!806344 (=> (not res!550637) (not e!446556))))

(declare-fun lt!361129 () SeekEntryResult!8588)

(declare-fun lt!361126 () SeekEntryResult!8588)

(assert (=> b!806344 (= res!550637 (and (= lt!361129 lt!361126) (= lt!361126 (Found!8588 j!153)) (= (select (arr!20990 a!3170) index!1236) (select (arr!20990 a!3170) j!153))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!806344 (= lt!361126 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20990 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806344 (= lt!361129 (seekEntryOrOpen!0 (select (arr!20990 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806345 () Bool)

(declare-fun res!550632 () Bool)

(assert (=> b!806345 (=> (not res!550632) (not e!446558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43833 (_ BitVec 32)) Bool)

(assert (=> b!806345 (= res!550632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806346 () Bool)

(assert (=> b!806346 (= e!446556 (not true))))

(assert (=> b!806346 (= lt!361128 (Found!8588 index!1236))))

(declare-fun b!806347 () Bool)

(assert (=> b!806347 (= e!446560 e!446558)))

(declare-fun res!550640 () Bool)

(assert (=> b!806347 (=> (not res!550640) (not e!446558))))

(declare-fun lt!361124 () SeekEntryResult!8588)

(assert (=> b!806347 (= res!550640 (or (= lt!361124 (MissingZero!8588 i!1163)) (= lt!361124 (MissingVacant!8588 i!1163))))))

(assert (=> b!806347 (= lt!361124 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806348 () Bool)

(declare-fun res!550639 () Bool)

(assert (=> b!806348 (=> (not res!550639) (not e!446558))))

(declare-datatypes ((List!15006 0))(
  ( (Nil!15003) (Cons!15002 (h!16131 (_ BitVec 64)) (t!21329 List!15006)) )
))
(declare-fun arrayNoDuplicates!0 (array!43833 (_ BitVec 32) List!15006) Bool)

(assert (=> b!806348 (= res!550639 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15003))))

(declare-fun b!806349 () Bool)

(declare-fun res!550642 () Bool)

(assert (=> b!806349 (=> (not res!550642) (not e!446558))))

(assert (=> b!806349 (= res!550642 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21411 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20990 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21411 a!3170)) (= (select (arr!20990 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!69182 res!550635) b!806343))

(assert (= (and b!806343 res!550633) b!806341))

(assert (= (and b!806341 res!550638) b!806339))

(assert (= (and b!806339 res!550636) b!806342))

(assert (= (and b!806342 res!550634) b!806347))

(assert (= (and b!806347 res!550640) b!806345))

(assert (= (and b!806345 res!550632) b!806348))

(assert (= (and b!806348 res!550639) b!806349))

(assert (= (and b!806349 res!550642) b!806340))

(assert (= (and b!806340 res!550641) b!806344))

(assert (= (and b!806344 res!550637) b!806346))

(declare-fun m!748363 () Bool)

(assert (=> b!806347 m!748363))

(declare-fun m!748365 () Bool)

(assert (=> start!69182 m!748365))

(declare-fun m!748367 () Bool)

(assert (=> start!69182 m!748367))

(declare-fun m!748369 () Bool)

(assert (=> b!806342 m!748369))

(declare-fun m!748371 () Bool)

(assert (=> b!806340 m!748371))

(declare-fun m!748373 () Bool)

(assert (=> b!806340 m!748373))

(declare-fun m!748375 () Bool)

(assert (=> b!806340 m!748375))

(declare-fun m!748377 () Bool)

(assert (=> b!806340 m!748377))

(declare-fun m!748379 () Bool)

(assert (=> b!806341 m!748379))

(assert (=> b!806341 m!748379))

(declare-fun m!748381 () Bool)

(assert (=> b!806341 m!748381))

(declare-fun m!748383 () Bool)

(assert (=> b!806339 m!748383))

(declare-fun m!748385 () Bool)

(assert (=> b!806349 m!748385))

(declare-fun m!748387 () Bool)

(assert (=> b!806349 m!748387))

(declare-fun m!748389 () Bool)

(assert (=> b!806344 m!748389))

(assert (=> b!806344 m!748379))

(assert (=> b!806344 m!748379))

(declare-fun m!748391 () Bool)

(assert (=> b!806344 m!748391))

(assert (=> b!806344 m!748379))

(declare-fun m!748393 () Bool)

(assert (=> b!806344 m!748393))

(declare-fun m!748395 () Bool)

(assert (=> b!806348 m!748395))

(declare-fun m!748397 () Bool)

(assert (=> b!806345 m!748397))

(push 1)

