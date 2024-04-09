; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68490 () Bool)

(assert start!68490)

(declare-fun b!795785 () Bool)

(declare-fun e!441649 () Bool)

(declare-fun lt!354774 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795785 (= e!441649 (not (validKeyInArray!0 lt!354774)))))

(declare-fun b!795786 () Bool)

(declare-fun res!540483 () Bool)

(declare-fun e!441646 () Bool)

(assert (=> b!795786 (=> (not res!540483) (not e!441646))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43231 0))(
  ( (array!43232 (arr!20692 (Array (_ BitVec 32) (_ BitVec 64))) (size!21113 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43231)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795786 (= res!540483 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21113 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20692 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21113 a!3170)) (= (select (arr!20692 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795787 () Bool)

(declare-fun e!441645 () Bool)

(assert (=> b!795787 (= e!441646 e!441645)))

(declare-fun res!540477 () Bool)

(assert (=> b!795787 (=> (not res!540477) (not e!441645))))

(declare-fun lt!354775 () array!43231)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8290 0))(
  ( (MissingZero!8290 (index!35527 (_ BitVec 32))) (Found!8290 (index!35528 (_ BitVec 32))) (Intermediate!8290 (undefined!9102 Bool) (index!35529 (_ BitVec 32)) (x!66465 (_ BitVec 32))) (Undefined!8290) (MissingVacant!8290 (index!35530 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43231 (_ BitVec 32)) SeekEntryResult!8290)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43231 (_ BitVec 32)) SeekEntryResult!8290)

(assert (=> b!795787 (= res!540477 (= (seekEntryOrOpen!0 lt!354774 lt!354775 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354774 lt!354775 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795787 (= lt!354774 (select (store (arr!20692 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795787 (= lt!354775 (array!43232 (store (arr!20692 a!3170) i!1163 k0!2044) (size!21113 a!3170)))))

(declare-fun b!795789 () Bool)

(declare-fun res!540481 () Bool)

(declare-fun e!441647 () Bool)

(assert (=> b!795789 (=> (not res!540481) (not e!441647))))

(assert (=> b!795789 (= res!540481 (validKeyInArray!0 (select (arr!20692 a!3170) j!153)))))

(declare-fun b!795790 () Bool)

(declare-fun res!540480 () Bool)

(assert (=> b!795790 (=> (not res!540480) (not e!441646))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43231 (_ BitVec 32)) Bool)

(assert (=> b!795790 (= res!540480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795791 () Bool)

(declare-fun res!540478 () Bool)

(assert (=> b!795791 (=> (not res!540478) (not e!441647))))

(assert (=> b!795791 (= res!540478 (and (= (size!21113 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21113 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21113 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795792 () Bool)

(declare-fun res!540475 () Bool)

(assert (=> b!795792 (=> (not res!540475) (not e!441647))))

(declare-fun arrayContainsKey!0 (array!43231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795792 (= res!540475 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795793 () Bool)

(declare-fun res!540474 () Bool)

(assert (=> b!795793 (=> (not res!540474) (not e!441647))))

(assert (=> b!795793 (= res!540474 (validKeyInArray!0 k0!2044))))

(declare-fun res!540479 () Bool)

(assert (=> start!68490 (=> (not res!540479) (not e!441647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68490 (= res!540479 (validMask!0 mask!3266))))

(assert (=> start!68490 e!441647))

(assert (=> start!68490 true))

(declare-fun array_inv!16466 (array!43231) Bool)

(assert (=> start!68490 (array_inv!16466 a!3170)))

(declare-fun b!795788 () Bool)

(declare-fun res!540482 () Bool)

(assert (=> b!795788 (=> (not res!540482) (not e!441646))))

(declare-datatypes ((List!14708 0))(
  ( (Nil!14705) (Cons!14704 (h!15833 (_ BitVec 64)) (t!21031 List!14708)) )
))
(declare-fun arrayNoDuplicates!0 (array!43231 (_ BitVec 32) List!14708) Bool)

(assert (=> b!795788 (= res!540482 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14705))))

(declare-fun b!795794 () Bool)

(assert (=> b!795794 (= e!441647 e!441646)))

(declare-fun res!540484 () Bool)

(assert (=> b!795794 (=> (not res!540484) (not e!441646))))

(declare-fun lt!354773 () SeekEntryResult!8290)

(assert (=> b!795794 (= res!540484 (or (= lt!354773 (MissingZero!8290 i!1163)) (= lt!354773 (MissingVacant!8290 i!1163))))))

(assert (=> b!795794 (= lt!354773 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!795795 () Bool)

(assert (=> b!795795 (= e!441645 e!441649)))

(declare-fun res!540476 () Bool)

(assert (=> b!795795 (=> (not res!540476) (not e!441649))))

(declare-fun lt!354771 () SeekEntryResult!8290)

(declare-fun lt!354772 () SeekEntryResult!8290)

(assert (=> b!795795 (= res!540476 (and (= lt!354771 lt!354772) (= lt!354772 (Found!8290 j!153)) (= (select (arr!20692 a!3170) index!1236) (select (arr!20692 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20692 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!795795 (= lt!354772 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20692 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795795 (= lt!354771 (seekEntryOrOpen!0 (select (arr!20692 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68490 res!540479) b!795791))

(assert (= (and b!795791 res!540478) b!795789))

(assert (= (and b!795789 res!540481) b!795793))

(assert (= (and b!795793 res!540474) b!795792))

(assert (= (and b!795792 res!540475) b!795794))

(assert (= (and b!795794 res!540484) b!795790))

(assert (= (and b!795790 res!540480) b!795788))

(assert (= (and b!795788 res!540482) b!795786))

(assert (= (and b!795786 res!540483) b!795787))

(assert (= (and b!795787 res!540477) b!795795))

(assert (= (and b!795795 res!540476) b!795785))

(declare-fun m!736613 () Bool)

(assert (=> b!795789 m!736613))

(assert (=> b!795789 m!736613))

(declare-fun m!736615 () Bool)

(assert (=> b!795789 m!736615))

(declare-fun m!736617 () Bool)

(assert (=> b!795790 m!736617))

(declare-fun m!736619 () Bool)

(assert (=> b!795793 m!736619))

(declare-fun m!736621 () Bool)

(assert (=> b!795794 m!736621))

(declare-fun m!736623 () Bool)

(assert (=> b!795787 m!736623))

(declare-fun m!736625 () Bool)

(assert (=> b!795787 m!736625))

(declare-fun m!736627 () Bool)

(assert (=> b!795787 m!736627))

(declare-fun m!736629 () Bool)

(assert (=> b!795787 m!736629))

(assert (=> b!795795 m!736613))

(declare-fun m!736631 () Bool)

(assert (=> b!795795 m!736631))

(declare-fun m!736633 () Bool)

(assert (=> b!795795 m!736633))

(assert (=> b!795795 m!736613))

(declare-fun m!736635 () Bool)

(assert (=> b!795795 m!736635))

(assert (=> b!795795 m!736613))

(declare-fun m!736637 () Bool)

(assert (=> b!795795 m!736637))

(assert (=> b!795795 m!736627))

(declare-fun m!736639 () Bool)

(assert (=> b!795792 m!736639))

(declare-fun m!736641 () Bool)

(assert (=> b!795786 m!736641))

(declare-fun m!736643 () Bool)

(assert (=> b!795786 m!736643))

(declare-fun m!736645 () Bool)

(assert (=> b!795788 m!736645))

(declare-fun m!736647 () Bool)

(assert (=> start!68490 m!736647))

(declare-fun m!736649 () Bool)

(assert (=> start!68490 m!736649))

(declare-fun m!736651 () Bool)

(assert (=> b!795785 m!736651))

(check-sat (not b!795785) (not b!795790) (not b!795793) (not b!795787) (not start!68490) (not b!795788) (not b!795792) (not b!795795) (not b!795789) (not b!795794))
