; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69180 () Bool)

(assert start!69180)

(declare-fun b!806306 () Bool)

(declare-fun e!446545 () Bool)

(declare-fun e!446544 () Bool)

(assert (=> b!806306 (= e!446545 e!446544)))

(declare-fun res!550608 () Bool)

(assert (=> b!806306 (=> (not res!550608) (not e!446544))))

(declare-datatypes ((SeekEntryResult!8587 0))(
  ( (MissingZero!8587 (index!36715 (_ BitVec 32))) (Found!8587 (index!36716 (_ BitVec 32))) (Intermediate!8587 (undefined!9399 Bool) (index!36717 (_ BitVec 32)) (x!67560 (_ BitVec 32))) (Undefined!8587) (MissingVacant!8587 (index!36718 (_ BitVec 32))) )
))
(declare-fun lt!361104 () SeekEntryResult!8587)

(declare-datatypes ((array!43831 0))(
  ( (array!43832 (arr!20989 (Array (_ BitVec 32) (_ BitVec 64))) (size!21410 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43831)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!361105 () SeekEntryResult!8587)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806306 (= res!550608 (and (= lt!361105 lt!361104) (= lt!361104 (Found!8587 j!153)) (= (select (arr!20989 a!3170) index!1236) (select (arr!20989 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43831 (_ BitVec 32)) SeekEntryResult!8587)

(assert (=> b!806306 (= lt!361104 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20989 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43831 (_ BitVec 32)) SeekEntryResult!8587)

(assert (=> b!806306 (= lt!361105 (seekEntryOrOpen!0 (select (arr!20989 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806307 () Bool)

(declare-fun res!550607 () Bool)

(declare-fun e!446543 () Bool)

(assert (=> b!806307 (=> (not res!550607) (not e!446543))))

(declare-datatypes ((List!15005 0))(
  ( (Nil!15002) (Cons!15001 (h!16130 (_ BitVec 64)) (t!21328 List!15005)) )
))
(declare-fun arrayNoDuplicates!0 (array!43831 (_ BitVec 32) List!15005) Bool)

(assert (=> b!806307 (= res!550607 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15002))))

(declare-fun b!806308 () Bool)

(declare-fun res!550606 () Bool)

(assert (=> b!806308 (=> (not res!550606) (not e!446543))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43831 (_ BitVec 32)) Bool)

(assert (=> b!806308 (= res!550606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806309 () Bool)

(declare-fun res!550599 () Bool)

(declare-fun e!446541 () Bool)

(assert (=> b!806309 (=> (not res!550599) (not e!446541))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!806309 (= res!550599 (and (= (size!21410 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21410 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21410 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806310 () Bool)

(declare-fun res!550604 () Bool)

(assert (=> b!806310 (=> (not res!550604) (not e!446543))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!806310 (= res!550604 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21410 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20989 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21410 a!3170)) (= (select (arr!20989 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806311 () Bool)

(assert (=> b!806311 (= e!446544 (not true))))

(declare-fun lt!361103 () SeekEntryResult!8587)

(assert (=> b!806311 (= lt!361103 (Found!8587 index!1236))))

(declare-fun b!806312 () Bool)

(declare-fun res!550601 () Bool)

(assert (=> b!806312 (=> (not res!550601) (not e!446541))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806312 (= res!550601 (validKeyInArray!0 k0!2044))))

(declare-fun b!806313 () Bool)

(assert (=> b!806313 (= e!446543 e!446545)))

(declare-fun res!550609 () Bool)

(assert (=> b!806313 (=> (not res!550609) (not e!446545))))

(declare-fun lt!361107 () SeekEntryResult!8587)

(assert (=> b!806313 (= res!550609 (= lt!361107 lt!361103))))

(declare-fun lt!361106 () (_ BitVec 64))

(declare-fun lt!361102 () array!43831)

(assert (=> b!806313 (= lt!361103 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361106 lt!361102 mask!3266))))

(assert (=> b!806313 (= lt!361107 (seekEntryOrOpen!0 lt!361106 lt!361102 mask!3266))))

(assert (=> b!806313 (= lt!361106 (select (store (arr!20989 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!806313 (= lt!361102 (array!43832 (store (arr!20989 a!3170) i!1163 k0!2044) (size!21410 a!3170)))))

(declare-fun b!806314 () Bool)

(assert (=> b!806314 (= e!446541 e!446543)))

(declare-fun res!550603 () Bool)

(assert (=> b!806314 (=> (not res!550603) (not e!446543))))

(declare-fun lt!361108 () SeekEntryResult!8587)

(assert (=> b!806314 (= res!550603 (or (= lt!361108 (MissingZero!8587 i!1163)) (= lt!361108 (MissingVacant!8587 i!1163))))))

(assert (=> b!806314 (= lt!361108 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!550605 () Bool)

(assert (=> start!69180 (=> (not res!550605) (not e!446541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69180 (= res!550605 (validMask!0 mask!3266))))

(assert (=> start!69180 e!446541))

(assert (=> start!69180 true))

(declare-fun array_inv!16763 (array!43831) Bool)

(assert (=> start!69180 (array_inv!16763 a!3170)))

(declare-fun b!806315 () Bool)

(declare-fun res!550600 () Bool)

(assert (=> b!806315 (=> (not res!550600) (not e!446541))))

(declare-fun arrayContainsKey!0 (array!43831 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806315 (= res!550600 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806316 () Bool)

(declare-fun res!550602 () Bool)

(assert (=> b!806316 (=> (not res!550602) (not e!446541))))

(assert (=> b!806316 (= res!550602 (validKeyInArray!0 (select (arr!20989 a!3170) j!153)))))

(assert (= (and start!69180 res!550605) b!806309))

(assert (= (and b!806309 res!550599) b!806316))

(assert (= (and b!806316 res!550602) b!806312))

(assert (= (and b!806312 res!550601) b!806315))

(assert (= (and b!806315 res!550600) b!806314))

(assert (= (and b!806314 res!550603) b!806308))

(assert (= (and b!806308 res!550606) b!806307))

(assert (= (and b!806307 res!550607) b!806310))

(assert (= (and b!806310 res!550604) b!806313))

(assert (= (and b!806313 res!550609) b!806306))

(assert (= (and b!806306 res!550608) b!806311))

(declare-fun m!748327 () Bool)

(assert (=> b!806307 m!748327))

(declare-fun m!748329 () Bool)

(assert (=> b!806308 m!748329))

(declare-fun m!748331 () Bool)

(assert (=> b!806310 m!748331))

(declare-fun m!748333 () Bool)

(assert (=> b!806310 m!748333))

(declare-fun m!748335 () Bool)

(assert (=> b!806313 m!748335))

(declare-fun m!748337 () Bool)

(assert (=> b!806313 m!748337))

(declare-fun m!748339 () Bool)

(assert (=> b!806313 m!748339))

(declare-fun m!748341 () Bool)

(assert (=> b!806313 m!748341))

(declare-fun m!748343 () Bool)

(assert (=> b!806314 m!748343))

(declare-fun m!748345 () Bool)

(assert (=> start!69180 m!748345))

(declare-fun m!748347 () Bool)

(assert (=> start!69180 m!748347))

(declare-fun m!748349 () Bool)

(assert (=> b!806312 m!748349))

(declare-fun m!748351 () Bool)

(assert (=> b!806306 m!748351))

(declare-fun m!748353 () Bool)

(assert (=> b!806306 m!748353))

(assert (=> b!806306 m!748353))

(declare-fun m!748355 () Bool)

(assert (=> b!806306 m!748355))

(assert (=> b!806306 m!748353))

(declare-fun m!748357 () Bool)

(assert (=> b!806306 m!748357))

(assert (=> b!806316 m!748353))

(assert (=> b!806316 m!748353))

(declare-fun m!748359 () Bool)

(assert (=> b!806316 m!748359))

(declare-fun m!748361 () Bool)

(assert (=> b!806315 m!748361))

(check-sat (not b!806308) (not b!806314) (not b!806315) (not b!806306) (not b!806307) (not b!806313) (not start!69180) (not b!806316) (not b!806312))
(check-sat)
