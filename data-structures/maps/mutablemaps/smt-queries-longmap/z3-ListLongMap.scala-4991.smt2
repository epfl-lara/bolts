; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68478 () Bool)

(assert start!68478)

(declare-fun b!795600 () Bool)

(declare-fun res!540291 () Bool)

(declare-fun e!441571 () Bool)

(assert (=> b!795600 (=> (not res!540291) (not e!441571))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43219 0))(
  ( (array!43220 (arr!20686 (Array (_ BitVec 32) (_ BitVec 64))) (size!21107 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43219)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795600 (= res!540291 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21107 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20686 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21107 a!3170)) (= (select (arr!20686 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795601 () Bool)

(declare-fun res!540297 () Bool)

(assert (=> b!795601 (=> (not res!540297) (not e!441571))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43219 (_ BitVec 32)) Bool)

(assert (=> b!795601 (= res!540297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!540295 () Bool)

(declare-fun e!441570 () Bool)

(assert (=> start!68478 (=> (not res!540295) (not e!441570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68478 (= res!540295 (validMask!0 mask!3266))))

(assert (=> start!68478 e!441570))

(assert (=> start!68478 true))

(declare-fun array_inv!16460 (array!43219) Bool)

(assert (=> start!68478 (array_inv!16460 a!3170)))

(declare-fun b!795602 () Bool)

(declare-fun res!540296 () Bool)

(assert (=> b!795602 (=> (not res!540296) (not e!441570))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795602 (= res!540296 (validKeyInArray!0 k0!2044))))

(declare-fun b!795603 () Bool)

(declare-fun res!540292 () Bool)

(assert (=> b!795603 (=> (not res!540292) (not e!441571))))

(declare-datatypes ((List!14702 0))(
  ( (Nil!14699) (Cons!14698 (h!15827 (_ BitVec 64)) (t!21025 List!14702)) )
))
(declare-fun arrayNoDuplicates!0 (array!43219 (_ BitVec 32) List!14702) Bool)

(assert (=> b!795603 (= res!540292 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14699))))

(declare-fun b!795604 () Bool)

(declare-fun e!441569 () Bool)

(assert (=> b!795604 (= e!441571 e!441569)))

(declare-fun res!540293 () Bool)

(assert (=> b!795604 (=> (not res!540293) (not e!441569))))

(declare-fun lt!354682 () array!43219)

(declare-fun lt!354685 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8284 0))(
  ( (MissingZero!8284 (index!35503 (_ BitVec 32))) (Found!8284 (index!35504 (_ BitVec 32))) (Intermediate!8284 (undefined!9096 Bool) (index!35505 (_ BitVec 32)) (x!66443 (_ BitVec 32))) (Undefined!8284) (MissingVacant!8284 (index!35506 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43219 (_ BitVec 32)) SeekEntryResult!8284)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43219 (_ BitVec 32)) SeekEntryResult!8284)

(assert (=> b!795604 (= res!540293 (= (seekEntryOrOpen!0 lt!354685 lt!354682 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354685 lt!354682 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795604 (= lt!354685 (select (store (arr!20686 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795604 (= lt!354682 (array!43220 (store (arr!20686 a!3170) i!1163 k0!2044) (size!21107 a!3170)))))

(declare-fun b!795605 () Bool)

(declare-fun res!540298 () Bool)

(assert (=> b!795605 (=> (not res!540298) (not e!441570))))

(declare-fun arrayContainsKey!0 (array!43219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795605 (= res!540298 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795606 () Bool)

(declare-fun res!540290 () Bool)

(assert (=> b!795606 (=> (not res!540290) (not e!441570))))

(assert (=> b!795606 (= res!540290 (and (= (size!21107 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21107 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21107 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795607 () Bool)

(declare-fun res!540289 () Bool)

(assert (=> b!795607 (=> (not res!540289) (not e!441570))))

(assert (=> b!795607 (= res!540289 (validKeyInArray!0 (select (arr!20686 a!3170) j!153)))))

(declare-fun b!795608 () Bool)

(assert (=> b!795608 (= e!441570 e!441571)))

(declare-fun res!540294 () Bool)

(assert (=> b!795608 (=> (not res!540294) (not e!441571))))

(declare-fun lt!354683 () SeekEntryResult!8284)

(assert (=> b!795608 (= res!540294 (or (= lt!354683 (MissingZero!8284 i!1163)) (= lt!354683 (MissingVacant!8284 i!1163))))))

(assert (=> b!795608 (= lt!354683 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun lt!354681 () SeekEntryResult!8284)

(declare-fun b!795609 () Bool)

(declare-fun lt!354684 () SeekEntryResult!8284)

(assert (=> b!795609 (= e!441569 (and (= lt!354684 lt!354681) (= lt!354681 (Found!8284 j!153)) (= (select (arr!20686 a!3170) index!1236) (select (arr!20686 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(assert (=> b!795609 (= lt!354681 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20686 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795609 (= lt!354684 (seekEntryOrOpen!0 (select (arr!20686 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68478 res!540295) b!795606))

(assert (= (and b!795606 res!540290) b!795607))

(assert (= (and b!795607 res!540289) b!795602))

(assert (= (and b!795602 res!540296) b!795605))

(assert (= (and b!795605 res!540298) b!795608))

(assert (= (and b!795608 res!540294) b!795601))

(assert (= (and b!795601 res!540297) b!795603))

(assert (= (and b!795603 res!540292) b!795600))

(assert (= (and b!795600 res!540291) b!795604))

(assert (= (and b!795604 res!540293) b!795609))

(declare-fun m!736387 () Bool)

(assert (=> b!795604 m!736387))

(declare-fun m!736389 () Bool)

(assert (=> b!795604 m!736389))

(declare-fun m!736391 () Bool)

(assert (=> b!795604 m!736391))

(declare-fun m!736393 () Bool)

(assert (=> b!795604 m!736393))

(declare-fun m!736395 () Bool)

(assert (=> b!795608 m!736395))

(declare-fun m!736397 () Bool)

(assert (=> b!795605 m!736397))

(declare-fun m!736399 () Bool)

(assert (=> b!795600 m!736399))

(declare-fun m!736401 () Bool)

(assert (=> b!795600 m!736401))

(declare-fun m!736403 () Bool)

(assert (=> b!795607 m!736403))

(assert (=> b!795607 m!736403))

(declare-fun m!736405 () Bool)

(assert (=> b!795607 m!736405))

(declare-fun m!736407 () Bool)

(assert (=> b!795603 m!736407))

(declare-fun m!736409 () Bool)

(assert (=> b!795602 m!736409))

(declare-fun m!736411 () Bool)

(assert (=> b!795609 m!736411))

(assert (=> b!795609 m!736403))

(assert (=> b!795609 m!736403))

(declare-fun m!736413 () Bool)

(assert (=> b!795609 m!736413))

(assert (=> b!795609 m!736403))

(declare-fun m!736415 () Bool)

(assert (=> b!795609 m!736415))

(declare-fun m!736417 () Bool)

(assert (=> b!795601 m!736417))

(declare-fun m!736419 () Bool)

(assert (=> start!68478 m!736419))

(declare-fun m!736421 () Bool)

(assert (=> start!68478 m!736421))

(check-sat (not b!795602) (not b!795604) (not b!795607) (not b!795609) (not b!795601) (not start!68478) (not b!795605) (not b!795603) (not b!795608))
(check-sat)
