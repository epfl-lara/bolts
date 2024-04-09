; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68700 () Bool)

(assert start!68700)

(declare-fun b!799422 () Bool)

(declare-fun res!544123 () Bool)

(declare-fun e!443335 () Bool)

(assert (=> b!799422 (=> (not res!544123) (not e!443335))))

(declare-datatypes ((array!43441 0))(
  ( (array!43442 (arr!20797 (Array (_ BitVec 32) (_ BitVec 64))) (size!21218 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43441)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43441 (_ BitVec 32)) Bool)

(assert (=> b!799422 (= res!544123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799423 () Bool)

(declare-fun e!443333 () Bool)

(declare-fun e!443338 () Bool)

(assert (=> b!799423 (= e!443333 e!443338)))

(declare-fun res!544112 () Bool)

(assert (=> b!799423 (=> (not res!544112) (not e!443338))))

(declare-fun lt!357032 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(assert (=> b!799423 (= res!544112 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357032 #b00000000000000000000000000000000) (bvslt lt!357032 (size!21218 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799423 (= lt!357032 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799424 () Bool)

(declare-fun res!544116 () Bool)

(declare-fun e!443334 () Bool)

(assert (=> b!799424 (=> (not res!544116) (not e!443334))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!799424 (= res!544116 (and (= (size!21218 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21218 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21218 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799425 () Bool)

(declare-fun res!544113 () Bool)

(assert (=> b!799425 (=> (not res!544113) (not e!443338))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357029 () array!43441)

(declare-fun lt!357028 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8395 0))(
  ( (MissingZero!8395 (index!35947 (_ BitVec 32))) (Found!8395 (index!35948 (_ BitVec 32))) (Intermediate!8395 (undefined!9207 Bool) (index!35949 (_ BitVec 32)) (x!66850 (_ BitVec 32))) (Undefined!8395) (MissingVacant!8395 (index!35950 (_ BitVec 32))) )
))
(declare-fun lt!357027 () SeekEntryResult!8395)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43441 (_ BitVec 32)) SeekEntryResult!8395)

(assert (=> b!799425 (= res!544113 (= lt!357027 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357032 vacantAfter!23 lt!357028 lt!357029 mask!3266)))))

(declare-fun b!799426 () Bool)

(declare-fun res!544114 () Bool)

(assert (=> b!799426 (=> (not res!544114) (not e!443335))))

(declare-datatypes ((List!14813 0))(
  ( (Nil!14810) (Cons!14809 (h!15938 (_ BitVec 64)) (t!21136 List!14813)) )
))
(declare-fun arrayNoDuplicates!0 (array!43441 (_ BitVec 32) List!14813) Bool)

(assert (=> b!799426 (= res!544114 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14810))))

(declare-fun b!799428 () Bool)

(declare-fun e!443336 () Bool)

(assert (=> b!799428 (= e!443335 e!443336)))

(declare-fun res!544121 () Bool)

(assert (=> b!799428 (=> (not res!544121) (not e!443336))))

(assert (=> b!799428 (= res!544121 (= lt!357027 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357028 lt!357029 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43441 (_ BitVec 32)) SeekEntryResult!8395)

(assert (=> b!799428 (= lt!357027 (seekEntryOrOpen!0 lt!357028 lt!357029 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!799428 (= lt!357028 (select (store (arr!20797 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!799428 (= lt!357029 (array!43442 (store (arr!20797 a!3170) i!1163 k0!2044) (size!21218 a!3170)))))

(declare-fun b!799429 () Bool)

(declare-fun res!544118 () Bool)

(assert (=> b!799429 (=> (not res!544118) (not e!443334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799429 (= res!544118 (validKeyInArray!0 k0!2044))))

(declare-fun b!799430 () Bool)

(assert (=> b!799430 (= e!443338 false)))

(declare-fun lt!357030 () SeekEntryResult!8395)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!799430 (= lt!357030 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357032 vacantBefore!23 (select (arr!20797 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799431 () Bool)

(assert (=> b!799431 (= e!443336 e!443333)))

(declare-fun res!544117 () Bool)

(assert (=> b!799431 (=> (not res!544117) (not e!443333))))

(declare-fun lt!357033 () SeekEntryResult!8395)

(declare-fun lt!357031 () SeekEntryResult!8395)

(assert (=> b!799431 (= res!544117 (and (= lt!357031 lt!357033) (= lt!357033 (Found!8395 j!153)) (not (= (select (arr!20797 a!3170) index!1236) (select (arr!20797 a!3170) j!153)))))))

(assert (=> b!799431 (= lt!357033 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20797 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799431 (= lt!357031 (seekEntryOrOpen!0 (select (arr!20797 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799432 () Bool)

(declare-fun res!544120 () Bool)

(assert (=> b!799432 (=> (not res!544120) (not e!443335))))

(assert (=> b!799432 (= res!544120 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21218 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20797 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21218 a!3170)) (= (select (arr!20797 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!544115 () Bool)

(assert (=> start!68700 (=> (not res!544115) (not e!443334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68700 (= res!544115 (validMask!0 mask!3266))))

(assert (=> start!68700 e!443334))

(assert (=> start!68700 true))

(declare-fun array_inv!16571 (array!43441) Bool)

(assert (=> start!68700 (array_inv!16571 a!3170)))

(declare-fun b!799427 () Bool)

(declare-fun res!544111 () Bool)

(assert (=> b!799427 (=> (not res!544111) (not e!443334))))

(assert (=> b!799427 (= res!544111 (validKeyInArray!0 (select (arr!20797 a!3170) j!153)))))

(declare-fun b!799433 () Bool)

(assert (=> b!799433 (= e!443334 e!443335)))

(declare-fun res!544119 () Bool)

(assert (=> b!799433 (=> (not res!544119) (not e!443335))))

(declare-fun lt!357034 () SeekEntryResult!8395)

(assert (=> b!799433 (= res!544119 (or (= lt!357034 (MissingZero!8395 i!1163)) (= lt!357034 (MissingVacant!8395 i!1163))))))

(assert (=> b!799433 (= lt!357034 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!799434 () Bool)

(declare-fun res!544122 () Bool)

(assert (=> b!799434 (=> (not res!544122) (not e!443334))))

(declare-fun arrayContainsKey!0 (array!43441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799434 (= res!544122 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68700 res!544115) b!799424))

(assert (= (and b!799424 res!544116) b!799427))

(assert (= (and b!799427 res!544111) b!799429))

(assert (= (and b!799429 res!544118) b!799434))

(assert (= (and b!799434 res!544122) b!799433))

(assert (= (and b!799433 res!544119) b!799422))

(assert (= (and b!799422 res!544123) b!799426))

(assert (= (and b!799426 res!544114) b!799432))

(assert (= (and b!799432 res!544120) b!799428))

(assert (= (and b!799428 res!544121) b!799431))

(assert (= (and b!799431 res!544117) b!799423))

(assert (= (and b!799423 res!544112) b!799425))

(assert (= (and b!799425 res!544113) b!799430))

(declare-fun m!740539 () Bool)

(assert (=> b!799428 m!740539))

(declare-fun m!740541 () Bool)

(assert (=> b!799428 m!740541))

(declare-fun m!740543 () Bool)

(assert (=> b!799428 m!740543))

(declare-fun m!740545 () Bool)

(assert (=> b!799428 m!740545))

(declare-fun m!740547 () Bool)

(assert (=> b!799434 m!740547))

(declare-fun m!740549 () Bool)

(assert (=> b!799433 m!740549))

(declare-fun m!740551 () Bool)

(assert (=> b!799423 m!740551))

(declare-fun m!740553 () Bool)

(assert (=> b!799430 m!740553))

(assert (=> b!799430 m!740553))

(declare-fun m!740555 () Bool)

(assert (=> b!799430 m!740555))

(declare-fun m!740557 () Bool)

(assert (=> b!799422 m!740557))

(declare-fun m!740559 () Bool)

(assert (=> b!799426 m!740559))

(declare-fun m!740561 () Bool)

(assert (=> b!799431 m!740561))

(assert (=> b!799431 m!740553))

(assert (=> b!799431 m!740553))

(declare-fun m!740563 () Bool)

(assert (=> b!799431 m!740563))

(assert (=> b!799431 m!740553))

(declare-fun m!740565 () Bool)

(assert (=> b!799431 m!740565))

(declare-fun m!740567 () Bool)

(assert (=> start!68700 m!740567))

(declare-fun m!740569 () Bool)

(assert (=> start!68700 m!740569))

(declare-fun m!740571 () Bool)

(assert (=> b!799425 m!740571))

(declare-fun m!740573 () Bool)

(assert (=> b!799432 m!740573))

(declare-fun m!740575 () Bool)

(assert (=> b!799432 m!740575))

(declare-fun m!740577 () Bool)

(assert (=> b!799429 m!740577))

(assert (=> b!799427 m!740553))

(assert (=> b!799427 m!740553))

(declare-fun m!740579 () Bool)

(assert (=> b!799427 m!740579))

(check-sat (not b!799423) (not b!799429) (not start!68700) (not b!799431) (not b!799430) (not b!799434) (not b!799428) (not b!799433) (not b!799427) (not b!799425) (not b!799422) (not b!799426))
(check-sat)
