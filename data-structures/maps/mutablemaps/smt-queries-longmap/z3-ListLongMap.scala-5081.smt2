; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69018 () Bool)

(assert start!69018)

(declare-fun b!804744 () Bool)

(declare-fun res!549436 () Bool)

(declare-fun e!445774 () Bool)

(assert (=> b!804744 (=> (not res!549436) (not e!445774))))

(declare-datatypes ((array!43759 0))(
  ( (array!43760 (arr!20956 (Array (_ BitVec 32) (_ BitVec 64))) (size!21377 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43759)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43759 (_ BitVec 32)) Bool)

(assert (=> b!804744 (= res!549436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804745 () Bool)

(declare-fun res!549438 () Bool)

(declare-fun e!445771 () Bool)

(assert (=> b!804745 (=> (not res!549438) (not e!445771))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804745 (= res!549438 (validKeyInArray!0 k0!2044))))

(declare-fun b!804746 () Bool)

(declare-fun e!445772 () Bool)

(assert (=> b!804746 (= e!445774 e!445772)))

(declare-fun res!549442 () Bool)

(assert (=> b!804746 (=> (not res!549442) (not e!445772))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!360310 () array!43759)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!360306 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8554 0))(
  ( (MissingZero!8554 (index!36583 (_ BitVec 32))) (Found!8554 (index!36584 (_ BitVec 32))) (Intermediate!8554 (undefined!9366 Bool) (index!36585 (_ BitVec 32)) (x!67433 (_ BitVec 32))) (Undefined!8554) (MissingVacant!8554 (index!36586 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43759 (_ BitVec 32)) SeekEntryResult!8554)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43759 (_ BitVec 32)) SeekEntryResult!8554)

(assert (=> b!804746 (= res!549442 (= (seekEntryOrOpen!0 lt!360306 lt!360310 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360306 lt!360310 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804746 (= lt!360306 (select (store (arr!20956 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!804746 (= lt!360310 (array!43760 (store (arr!20956 a!3170) i!1163 k0!2044) (size!21377 a!3170)))))

(declare-fun res!549439 () Bool)

(assert (=> start!69018 (=> (not res!549439) (not e!445771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69018 (= res!549439 (validMask!0 mask!3266))))

(assert (=> start!69018 e!445771))

(assert (=> start!69018 true))

(declare-fun array_inv!16730 (array!43759) Bool)

(assert (=> start!69018 (array_inv!16730 a!3170)))

(declare-fun b!804747 () Bool)

(declare-fun res!549441 () Bool)

(assert (=> b!804747 (=> (not res!549441) (not e!445771))))

(assert (=> b!804747 (= res!549441 (and (= (size!21377 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21377 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21377 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804748 () Bool)

(assert (=> b!804748 (= e!445771 e!445774)))

(declare-fun res!549434 () Bool)

(assert (=> b!804748 (=> (not res!549434) (not e!445774))))

(declare-fun lt!360308 () SeekEntryResult!8554)

(assert (=> b!804748 (= res!549434 (or (= lt!360308 (MissingZero!8554 i!1163)) (= lt!360308 (MissingVacant!8554 i!1163))))))

(assert (=> b!804748 (= lt!360308 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!804749 () Bool)

(declare-fun res!549435 () Bool)

(assert (=> b!804749 (=> (not res!549435) (not e!445774))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!804749 (= res!549435 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21377 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20956 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21377 a!3170)) (= (select (arr!20956 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!804750 () Bool)

(declare-fun res!549433 () Bool)

(assert (=> b!804750 (=> (not res!549433) (not e!445771))))

(declare-fun arrayContainsKey!0 (array!43759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804750 (= res!549433 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804751 () Bool)

(declare-fun res!549437 () Bool)

(assert (=> b!804751 (=> (not res!549437) (not e!445771))))

(assert (=> b!804751 (= res!549437 (validKeyInArray!0 (select (arr!20956 a!3170) j!153)))))

(declare-fun b!804752 () Bool)

(declare-fun res!549440 () Bool)

(assert (=> b!804752 (=> (not res!549440) (not e!445774))))

(declare-datatypes ((List!14972 0))(
  ( (Nil!14969) (Cons!14968 (h!16097 (_ BitVec 64)) (t!21295 List!14972)) )
))
(declare-fun arrayNoDuplicates!0 (array!43759 (_ BitVec 32) List!14972) Bool)

(assert (=> b!804752 (= res!549440 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14969))))

(declare-fun b!804753 () Bool)

(assert (=> b!804753 (= e!445772 false)))

(declare-fun lt!360309 () SeekEntryResult!8554)

(assert (=> b!804753 (= lt!360309 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20956 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360307 () SeekEntryResult!8554)

(assert (=> b!804753 (= lt!360307 (seekEntryOrOpen!0 (select (arr!20956 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69018 res!549439) b!804747))

(assert (= (and b!804747 res!549441) b!804751))

(assert (= (and b!804751 res!549437) b!804745))

(assert (= (and b!804745 res!549438) b!804750))

(assert (= (and b!804750 res!549433) b!804748))

(assert (= (and b!804748 res!549434) b!804744))

(assert (= (and b!804744 res!549436) b!804752))

(assert (= (and b!804752 res!549440) b!804749))

(assert (= (and b!804749 res!549435) b!804746))

(assert (= (and b!804746 res!549442) b!804753))

(declare-fun m!746717 () Bool)

(assert (=> b!804748 m!746717))

(declare-fun m!746719 () Bool)

(assert (=> start!69018 m!746719))

(declare-fun m!746721 () Bool)

(assert (=> start!69018 m!746721))

(declare-fun m!746723 () Bool)

(assert (=> b!804753 m!746723))

(assert (=> b!804753 m!746723))

(declare-fun m!746725 () Bool)

(assert (=> b!804753 m!746725))

(assert (=> b!804753 m!746723))

(declare-fun m!746727 () Bool)

(assert (=> b!804753 m!746727))

(declare-fun m!746729 () Bool)

(assert (=> b!804745 m!746729))

(declare-fun m!746731 () Bool)

(assert (=> b!804750 m!746731))

(declare-fun m!746733 () Bool)

(assert (=> b!804746 m!746733))

(declare-fun m!746735 () Bool)

(assert (=> b!804746 m!746735))

(declare-fun m!746737 () Bool)

(assert (=> b!804746 m!746737))

(declare-fun m!746739 () Bool)

(assert (=> b!804746 m!746739))

(assert (=> b!804751 m!746723))

(assert (=> b!804751 m!746723))

(declare-fun m!746741 () Bool)

(assert (=> b!804751 m!746741))

(declare-fun m!746743 () Bool)

(assert (=> b!804752 m!746743))

(declare-fun m!746745 () Bool)

(assert (=> b!804749 m!746745))

(declare-fun m!746747 () Bool)

(assert (=> b!804749 m!746747))

(declare-fun m!746749 () Bool)

(assert (=> b!804744 m!746749))

(check-sat (not b!804746) (not b!804748) (not b!804750) (not b!804752) (not b!804751) (not b!804745) (not start!69018) (not b!804753) (not b!804744))
(check-sat)
