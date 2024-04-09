; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68622 () Bool)

(assert start!68622)

(declare-fun b!798049 () Bool)

(declare-fun e!442721 () Bool)

(declare-fun e!442725 () Bool)

(assert (=> b!798049 (= e!442721 e!442725)))

(declare-fun res!542746 () Bool)

(assert (=> b!798049 (=> (not res!542746) (not e!442725))))

(declare-datatypes ((SeekEntryResult!8356 0))(
  ( (MissingZero!8356 (index!35791 (_ BitVec 32))) (Found!8356 (index!35792 (_ BitVec 32))) (Intermediate!8356 (undefined!9168 Bool) (index!35793 (_ BitVec 32)) (x!66707 (_ BitVec 32))) (Undefined!8356) (MissingVacant!8356 (index!35794 (_ BitVec 32))) )
))
(declare-fun lt!356219 () SeekEntryResult!8356)

(declare-fun lt!356217 () SeekEntryResult!8356)

(assert (=> b!798049 (= res!542746 (= lt!356219 lt!356217))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43363 0))(
  ( (array!43364 (arr!20758 (Array (_ BitVec 32) (_ BitVec 64))) (size!21179 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43363)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43363 (_ BitVec 32)) SeekEntryResult!8356)

(assert (=> b!798049 (= lt!356217 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20758 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43363 (_ BitVec 32)) SeekEntryResult!8356)

(assert (=> b!798049 (= lt!356219 (seekEntryOrOpen!0 (select (arr!20758 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798050 () Bool)

(declare-fun res!542743 () Bool)

(declare-fun e!442722 () Bool)

(assert (=> b!798050 (=> (not res!542743) (not e!442722))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798050 (= res!542743 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21179 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20758 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21179 a!3170)) (= (select (arr!20758 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798051 () Bool)

(declare-fun e!442724 () Bool)

(assert (=> b!798051 (= e!442724 e!442722)))

(declare-fun res!542740 () Bool)

(assert (=> b!798051 (=> (not res!542740) (not e!442722))))

(declare-fun lt!356224 () SeekEntryResult!8356)

(assert (=> b!798051 (= res!542740 (or (= lt!356224 (MissingZero!8356 i!1163)) (= lt!356224 (MissingVacant!8356 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!798051 (= lt!356224 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun lt!356220 () SeekEntryResult!8356)

(declare-fun b!798052 () Bool)

(declare-fun lt!356222 () SeekEntryResult!8356)

(declare-fun e!442723 () Bool)

(assert (=> b!798052 (= e!442723 (not (or (not (= lt!356222 lt!356220)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (and (bvsge vacantBefore!23 #b00000000000000000000000000000000) (bvslt vacantBefore!23 (bvadd #b00000000000000000000000000000001 mask!3266))))))))

(assert (=> b!798052 (= lt!356222 (Found!8356 index!1236))))

(declare-fun b!798053 () Bool)

(declare-fun res!542744 () Bool)

(assert (=> b!798053 (=> (not res!542744) (not e!442724))))

(assert (=> b!798053 (= res!542744 (and (= (size!21179 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21179 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21179 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!542748 () Bool)

(assert (=> start!68622 (=> (not res!542748) (not e!442724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68622 (= res!542748 (validMask!0 mask!3266))))

(assert (=> start!68622 e!442724))

(assert (=> start!68622 true))

(declare-fun array_inv!16532 (array!43363) Bool)

(assert (=> start!68622 (array_inv!16532 a!3170)))

(declare-fun b!798054 () Bool)

(declare-fun res!542749 () Bool)

(assert (=> b!798054 (=> (not res!542749) (not e!442724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798054 (= res!542749 (validKeyInArray!0 (select (arr!20758 a!3170) j!153)))))

(declare-fun b!798055 () Bool)

(assert (=> b!798055 (= e!442725 e!442723)))

(declare-fun res!542745 () Bool)

(assert (=> b!798055 (=> (not res!542745) (not e!442723))))

(assert (=> b!798055 (= res!542745 (and (= lt!356217 lt!356220) (= (select (arr!20758 a!3170) index!1236) (select (arr!20758 a!3170) j!153))))))

(assert (=> b!798055 (= lt!356220 (Found!8356 j!153))))

(declare-fun b!798056 () Bool)

(declare-fun res!542742 () Bool)

(assert (=> b!798056 (=> (not res!542742) (not e!442722))))

(declare-datatypes ((List!14774 0))(
  ( (Nil!14771) (Cons!14770 (h!15899 (_ BitVec 64)) (t!21097 List!14774)) )
))
(declare-fun arrayNoDuplicates!0 (array!43363 (_ BitVec 32) List!14774) Bool)

(assert (=> b!798056 (= res!542742 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14771))))

(declare-fun b!798057 () Bool)

(declare-fun res!542747 () Bool)

(assert (=> b!798057 (=> (not res!542747) (not e!442724))))

(assert (=> b!798057 (= res!542747 (validKeyInArray!0 k0!2044))))

(declare-fun b!798058 () Bool)

(assert (=> b!798058 (= e!442722 e!442721)))

(declare-fun res!542741 () Bool)

(assert (=> b!798058 (=> (not res!542741) (not e!442721))))

(declare-fun lt!356221 () SeekEntryResult!8356)

(assert (=> b!798058 (= res!542741 (= lt!356221 lt!356222))))

(declare-fun lt!356223 () array!43363)

(declare-fun lt!356218 () (_ BitVec 64))

(assert (=> b!798058 (= lt!356222 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356218 lt!356223 mask!3266))))

(assert (=> b!798058 (= lt!356221 (seekEntryOrOpen!0 lt!356218 lt!356223 mask!3266))))

(assert (=> b!798058 (= lt!356218 (select (store (arr!20758 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!798058 (= lt!356223 (array!43364 (store (arr!20758 a!3170) i!1163 k0!2044) (size!21179 a!3170)))))

(declare-fun b!798059 () Bool)

(declare-fun res!542739 () Bool)

(assert (=> b!798059 (=> (not res!542739) (not e!442724))))

(declare-fun arrayContainsKey!0 (array!43363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798059 (= res!542739 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798060 () Bool)

(declare-fun res!542738 () Bool)

(assert (=> b!798060 (=> (not res!542738) (not e!442722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43363 (_ BitVec 32)) Bool)

(assert (=> b!798060 (= res!542738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68622 res!542748) b!798053))

(assert (= (and b!798053 res!542744) b!798054))

(assert (= (and b!798054 res!542749) b!798057))

(assert (= (and b!798057 res!542747) b!798059))

(assert (= (and b!798059 res!542739) b!798051))

(assert (= (and b!798051 res!542740) b!798060))

(assert (= (and b!798060 res!542738) b!798056))

(assert (= (and b!798056 res!542742) b!798050))

(assert (= (and b!798050 res!542743) b!798058))

(assert (= (and b!798058 res!542741) b!798049))

(assert (= (and b!798049 res!542746) b!798055))

(assert (= (and b!798055 res!542745) b!798052))

(declare-fun m!739033 () Bool)

(assert (=> b!798050 m!739033))

(declare-fun m!739035 () Bool)

(assert (=> b!798050 m!739035))

(declare-fun m!739037 () Bool)

(assert (=> b!798055 m!739037))

(declare-fun m!739039 () Bool)

(assert (=> b!798055 m!739039))

(declare-fun m!739041 () Bool)

(assert (=> start!68622 m!739041))

(declare-fun m!739043 () Bool)

(assert (=> start!68622 m!739043))

(assert (=> b!798049 m!739039))

(assert (=> b!798049 m!739039))

(declare-fun m!739045 () Bool)

(assert (=> b!798049 m!739045))

(assert (=> b!798049 m!739039))

(declare-fun m!739047 () Bool)

(assert (=> b!798049 m!739047))

(declare-fun m!739049 () Bool)

(assert (=> b!798058 m!739049))

(declare-fun m!739051 () Bool)

(assert (=> b!798058 m!739051))

(declare-fun m!739053 () Bool)

(assert (=> b!798058 m!739053))

(declare-fun m!739055 () Bool)

(assert (=> b!798058 m!739055))

(declare-fun m!739057 () Bool)

(assert (=> b!798057 m!739057))

(declare-fun m!739059 () Bool)

(assert (=> b!798051 m!739059))

(assert (=> b!798054 m!739039))

(assert (=> b!798054 m!739039))

(declare-fun m!739061 () Bool)

(assert (=> b!798054 m!739061))

(declare-fun m!739063 () Bool)

(assert (=> b!798056 m!739063))

(declare-fun m!739065 () Bool)

(assert (=> b!798059 m!739065))

(declare-fun m!739067 () Bool)

(assert (=> b!798060 m!739067))

(check-sat (not b!798054) (not b!798051) (not b!798049) (not b!798058) (not b!798059) (not b!798057) (not b!798060) (not b!798056) (not start!68622))
(check-sat)
