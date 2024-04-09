; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69204 () Bool)

(assert start!69204)

(declare-fun b!806707 () Bool)

(declare-fun e!446728 () Bool)

(declare-fun e!446730 () Bool)

(assert (=> b!806707 (= e!446728 e!446730)))

(declare-fun res!551006 () Bool)

(assert (=> b!806707 (=> (not res!551006) (not e!446730))))

(declare-datatypes ((SeekEntryResult!8599 0))(
  ( (MissingZero!8599 (index!36763 (_ BitVec 32))) (Found!8599 (index!36764 (_ BitVec 32))) (Intermediate!8599 (undefined!9411 Bool) (index!36765 (_ BitVec 32)) (x!67604 (_ BitVec 32))) (Undefined!8599) (MissingVacant!8599 (index!36766 (_ BitVec 32))) )
))
(declare-fun lt!361362 () SeekEntryResult!8599)

(declare-fun lt!361359 () SeekEntryResult!8599)

(declare-datatypes ((array!43855 0))(
  ( (array!43856 (arr!21001 (Array (_ BitVec 32) (_ BitVec 64))) (size!21422 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43855)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806707 (= res!551006 (and (= lt!361359 lt!361362) (= (select (arr!21001 a!3170) index!1236) (select (arr!21001 a!3170) j!153))))))

(assert (=> b!806707 (= lt!361362 (Found!8599 j!153))))

(declare-fun b!806708 () Bool)

(declare-fun res!551003 () Bool)

(declare-fun e!446727 () Bool)

(assert (=> b!806708 (=> (not res!551003) (not e!446727))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!806708 (= res!551003 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21422 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21001 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21422 a!3170)) (= (select (arr!21001 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806709 () Bool)

(declare-fun res!551002 () Bool)

(declare-fun e!446729 () Bool)

(assert (=> b!806709 (=> (not res!551002) (not e!446729))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806709 (= res!551002 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806710 () Bool)

(declare-fun lt!361361 () SeekEntryResult!8599)

(assert (=> b!806710 (= e!446730 (not (or (not (= lt!361361 lt!361362)) (= lt!361361 lt!361359))))))

(assert (=> b!806710 (= lt!361361 (Found!8599 index!1236))))

(declare-fun b!806711 () Bool)

(declare-fun e!446726 () Bool)

(assert (=> b!806711 (= e!446726 e!446728)))

(declare-fun res!551005 () Bool)

(assert (=> b!806711 (=> (not res!551005) (not e!446728))))

(declare-fun lt!361363 () SeekEntryResult!8599)

(assert (=> b!806711 (= res!551005 (= lt!361363 lt!361359))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43855 (_ BitVec 32)) SeekEntryResult!8599)

(assert (=> b!806711 (= lt!361359 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21001 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43855 (_ BitVec 32)) SeekEntryResult!8599)

(assert (=> b!806711 (= lt!361363 (seekEntryOrOpen!0 (select (arr!21001 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806712 () Bool)

(declare-fun res!551011 () Bool)

(assert (=> b!806712 (=> (not res!551011) (not e!446727))))

(declare-datatypes ((List!15017 0))(
  ( (Nil!15014) (Cons!15013 (h!16142 (_ BitVec 64)) (t!21340 List!15017)) )
))
(declare-fun arrayNoDuplicates!0 (array!43855 (_ BitVec 32) List!15017) Bool)

(assert (=> b!806712 (= res!551011 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15014))))

(declare-fun b!806714 () Bool)

(assert (=> b!806714 (= e!446729 e!446727)))

(declare-fun res!551007 () Bool)

(assert (=> b!806714 (=> (not res!551007) (not e!446727))))

(declare-fun lt!361360 () SeekEntryResult!8599)

(assert (=> b!806714 (= res!551007 (or (= lt!361360 (MissingZero!8599 i!1163)) (= lt!361360 (MissingVacant!8599 i!1163))))))

(assert (=> b!806714 (= lt!361360 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!806715 () Bool)

(declare-fun res!551010 () Bool)

(assert (=> b!806715 (=> (not res!551010) (not e!446729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806715 (= res!551010 (validKeyInArray!0 (select (arr!21001 a!3170) j!153)))))

(declare-fun b!806716 () Bool)

(assert (=> b!806716 (= e!446727 e!446726)))

(declare-fun res!551001 () Bool)

(assert (=> b!806716 (=> (not res!551001) (not e!446726))))

(declare-fun lt!361366 () SeekEntryResult!8599)

(assert (=> b!806716 (= res!551001 (= lt!361366 lt!361361))))

(declare-fun lt!361364 () array!43855)

(declare-fun lt!361365 () (_ BitVec 64))

(assert (=> b!806716 (= lt!361361 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361365 lt!361364 mask!3266))))

(assert (=> b!806716 (= lt!361366 (seekEntryOrOpen!0 lt!361365 lt!361364 mask!3266))))

(assert (=> b!806716 (= lt!361365 (select (store (arr!21001 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!806716 (= lt!361364 (array!43856 (store (arr!21001 a!3170) i!1163 k0!2044) (size!21422 a!3170)))))

(declare-fun b!806717 () Bool)

(declare-fun res!551000 () Bool)

(assert (=> b!806717 (=> (not res!551000) (not e!446727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43855 (_ BitVec 32)) Bool)

(assert (=> b!806717 (= res!551000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806718 () Bool)

(declare-fun res!551009 () Bool)

(assert (=> b!806718 (=> (not res!551009) (not e!446729))))

(assert (=> b!806718 (= res!551009 (and (= (size!21422 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21422 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21422 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!551004 () Bool)

(assert (=> start!69204 (=> (not res!551004) (not e!446729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69204 (= res!551004 (validMask!0 mask!3266))))

(assert (=> start!69204 e!446729))

(assert (=> start!69204 true))

(declare-fun array_inv!16775 (array!43855) Bool)

(assert (=> start!69204 (array_inv!16775 a!3170)))

(declare-fun b!806713 () Bool)

(declare-fun res!551008 () Bool)

(assert (=> b!806713 (=> (not res!551008) (not e!446729))))

(assert (=> b!806713 (= res!551008 (validKeyInArray!0 k0!2044))))

(assert (= (and start!69204 res!551004) b!806718))

(assert (= (and b!806718 res!551009) b!806715))

(assert (= (and b!806715 res!551010) b!806713))

(assert (= (and b!806713 res!551008) b!806709))

(assert (= (and b!806709 res!551002) b!806714))

(assert (= (and b!806714 res!551007) b!806717))

(assert (= (and b!806717 res!551000) b!806712))

(assert (= (and b!806712 res!551011) b!806708))

(assert (= (and b!806708 res!551003) b!806716))

(assert (= (and b!806716 res!551001) b!806711))

(assert (= (and b!806711 res!551005) b!806707))

(assert (= (and b!806707 res!551006) b!806710))

(declare-fun m!748759 () Bool)

(assert (=> b!806716 m!748759))

(declare-fun m!748761 () Bool)

(assert (=> b!806716 m!748761))

(declare-fun m!748763 () Bool)

(assert (=> b!806716 m!748763))

(declare-fun m!748765 () Bool)

(assert (=> b!806716 m!748765))

(declare-fun m!748767 () Bool)

(assert (=> b!806709 m!748767))

(declare-fun m!748769 () Bool)

(assert (=> b!806712 m!748769))

(declare-fun m!748771 () Bool)

(assert (=> b!806717 m!748771))

(declare-fun m!748773 () Bool)

(assert (=> b!806714 m!748773))

(declare-fun m!748775 () Bool)

(assert (=> b!806713 m!748775))

(declare-fun m!748777 () Bool)

(assert (=> b!806707 m!748777))

(declare-fun m!748779 () Bool)

(assert (=> b!806707 m!748779))

(declare-fun m!748781 () Bool)

(assert (=> b!806708 m!748781))

(declare-fun m!748783 () Bool)

(assert (=> b!806708 m!748783))

(assert (=> b!806711 m!748779))

(assert (=> b!806711 m!748779))

(declare-fun m!748785 () Bool)

(assert (=> b!806711 m!748785))

(assert (=> b!806711 m!748779))

(declare-fun m!748787 () Bool)

(assert (=> b!806711 m!748787))

(assert (=> b!806715 m!748779))

(assert (=> b!806715 m!748779))

(declare-fun m!748789 () Bool)

(assert (=> b!806715 m!748789))

(declare-fun m!748791 () Bool)

(assert (=> start!69204 m!748791))

(declare-fun m!748793 () Bool)

(assert (=> start!69204 m!748793))

(check-sat (not b!806716) (not b!806715) (not start!69204) (not b!806713) (not b!806712) (not b!806714) (not b!806717) (not b!806709) (not b!806711))
(check-sat)
