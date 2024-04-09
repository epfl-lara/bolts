; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68640 () Bool)

(assert start!68640)

(declare-fun b!798345 () Bool)

(declare-fun res!543038 () Bool)

(declare-fun e!442857 () Bool)

(assert (=> b!798345 (=> (not res!543038) (not e!442857))))

(declare-datatypes ((array!43381 0))(
  ( (array!43382 (arr!20767 (Array (_ BitVec 32) (_ BitVec 64))) (size!21188 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43381)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798345 (= res!543038 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798346 () Bool)

(declare-fun res!543034 () Bool)

(declare-fun e!442856 () Bool)

(assert (=> b!798346 (=> (not res!543034) (not e!442856))))

(declare-datatypes ((List!14783 0))(
  ( (Nil!14780) (Cons!14779 (h!15908 (_ BitVec 64)) (t!21106 List!14783)) )
))
(declare-fun arrayNoDuplicates!0 (array!43381 (_ BitVec 32) List!14783) Bool)

(assert (=> b!798346 (= res!543034 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14780))))

(declare-fun b!798347 () Bool)

(declare-fun res!543036 () Bool)

(assert (=> b!798347 (=> (not res!543036) (not e!442856))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798347 (= res!543036 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21188 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20767 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21188 a!3170)) (= (select (arr!20767 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798349 () Bool)

(declare-fun res!543037 () Bool)

(assert (=> b!798349 (=> (not res!543037) (not e!442857))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798349 (= res!543037 (validKeyInArray!0 k0!2044))))

(declare-fun b!798350 () Bool)

(declare-fun res!543040 () Bool)

(assert (=> b!798350 (=> (not res!543040) (not e!442857))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798350 (= res!543040 (validKeyInArray!0 (select (arr!20767 a!3170) j!153)))))

(declare-fun b!798351 () Bool)

(declare-fun res!543041 () Bool)

(assert (=> b!798351 (=> (not res!543041) (not e!442856))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43381 (_ BitVec 32)) Bool)

(assert (=> b!798351 (= res!543041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798352 () Bool)

(declare-fun e!442855 () Bool)

(assert (=> b!798352 (= e!442855 false)))

(declare-datatypes ((SeekEntryResult!8365 0))(
  ( (MissingZero!8365 (index!35827 (_ BitVec 32))) (Found!8365 (index!35828 (_ BitVec 32))) (Intermediate!8365 (undefined!9177 Bool) (index!35829 (_ BitVec 32)) (x!66740 (_ BitVec 32))) (Undefined!8365) (MissingVacant!8365 (index!35830 (_ BitVec 32))) )
))
(declare-fun lt!356402 () SeekEntryResult!8365)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43381 (_ BitVec 32)) SeekEntryResult!8365)

(assert (=> b!798352 (= lt!356402 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20767 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!356403 () SeekEntryResult!8365)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43381 (_ BitVec 32)) SeekEntryResult!8365)

(assert (=> b!798352 (= lt!356403 (seekEntryOrOpen!0 (select (arr!20767 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798353 () Bool)

(declare-fun res!543043 () Bool)

(assert (=> b!798353 (=> (not res!543043) (not e!442857))))

(assert (=> b!798353 (= res!543043 (and (= (size!21188 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21188 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21188 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798354 () Bool)

(assert (=> b!798354 (= e!442857 e!442856)))

(declare-fun res!543039 () Bool)

(assert (=> b!798354 (=> (not res!543039) (not e!442856))))

(declare-fun lt!356400 () SeekEntryResult!8365)

(assert (=> b!798354 (= res!543039 (or (= lt!356400 (MissingZero!8365 i!1163)) (= lt!356400 (MissingVacant!8365 i!1163))))))

(assert (=> b!798354 (= lt!356400 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!543035 () Bool)

(assert (=> start!68640 (=> (not res!543035) (not e!442857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68640 (= res!543035 (validMask!0 mask!3266))))

(assert (=> start!68640 e!442857))

(assert (=> start!68640 true))

(declare-fun array_inv!16541 (array!43381) Bool)

(assert (=> start!68640 (array_inv!16541 a!3170)))

(declare-fun b!798348 () Bool)

(assert (=> b!798348 (= e!442856 e!442855)))

(declare-fun res!543042 () Bool)

(assert (=> b!798348 (=> (not res!543042) (not e!442855))))

(declare-fun lt!356401 () (_ BitVec 64))

(declare-fun lt!356404 () array!43381)

(assert (=> b!798348 (= res!543042 (= (seekEntryOrOpen!0 lt!356401 lt!356404 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356401 lt!356404 mask!3266)))))

(assert (=> b!798348 (= lt!356401 (select (store (arr!20767 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!798348 (= lt!356404 (array!43382 (store (arr!20767 a!3170) i!1163 k0!2044) (size!21188 a!3170)))))

(assert (= (and start!68640 res!543035) b!798353))

(assert (= (and b!798353 res!543043) b!798350))

(assert (= (and b!798350 res!543040) b!798349))

(assert (= (and b!798349 res!543037) b!798345))

(assert (= (and b!798345 res!543038) b!798354))

(assert (= (and b!798354 res!543039) b!798351))

(assert (= (and b!798351 res!543041) b!798346))

(assert (= (and b!798346 res!543034) b!798347))

(assert (= (and b!798347 res!543036) b!798348))

(assert (= (and b!798348 res!543042) b!798352))

(declare-fun m!739355 () Bool)

(assert (=> b!798349 m!739355))

(declare-fun m!739357 () Bool)

(assert (=> b!798350 m!739357))

(assert (=> b!798350 m!739357))

(declare-fun m!739359 () Bool)

(assert (=> b!798350 m!739359))

(declare-fun m!739361 () Bool)

(assert (=> b!798351 m!739361))

(declare-fun m!739363 () Bool)

(assert (=> b!798347 m!739363))

(declare-fun m!739365 () Bool)

(assert (=> b!798347 m!739365))

(assert (=> b!798352 m!739357))

(assert (=> b!798352 m!739357))

(declare-fun m!739367 () Bool)

(assert (=> b!798352 m!739367))

(assert (=> b!798352 m!739357))

(declare-fun m!739369 () Bool)

(assert (=> b!798352 m!739369))

(declare-fun m!739371 () Bool)

(assert (=> b!798348 m!739371))

(declare-fun m!739373 () Bool)

(assert (=> b!798348 m!739373))

(declare-fun m!739375 () Bool)

(assert (=> b!798348 m!739375))

(declare-fun m!739377 () Bool)

(assert (=> b!798348 m!739377))

(declare-fun m!739379 () Bool)

(assert (=> b!798345 m!739379))

(declare-fun m!739381 () Bool)

(assert (=> start!68640 m!739381))

(declare-fun m!739383 () Bool)

(assert (=> start!68640 m!739383))

(declare-fun m!739385 () Bool)

(assert (=> b!798346 m!739385))

(declare-fun m!739387 () Bool)

(assert (=> b!798354 m!739387))

(check-sat (not b!798351) (not b!798348) (not b!798352) (not b!798345) (not b!798350) (not b!798349) (not b!798346) (not start!68640) (not b!798354))
(check-sat)
