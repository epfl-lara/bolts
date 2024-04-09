; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68466 () Bool)

(assert start!68466)

(declare-fun b!795420 () Bool)

(declare-fun res!540118 () Bool)

(declare-fun e!441499 () Bool)

(assert (=> b!795420 (=> (not res!540118) (not e!441499))))

(declare-datatypes ((array!43207 0))(
  ( (array!43208 (arr!20680 (Array (_ BitVec 32) (_ BitVec 64))) (size!21101 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43207)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795420 (= res!540118 (validKeyInArray!0 (select (arr!20680 a!3170) j!153)))))

(declare-fun b!795421 () Bool)

(declare-fun e!441496 () Bool)

(assert (=> b!795421 (= e!441499 e!441496)))

(declare-fun res!540109 () Bool)

(assert (=> b!795421 (=> (not res!540109) (not e!441496))))

(declare-datatypes ((SeekEntryResult!8278 0))(
  ( (MissingZero!8278 (index!35479 (_ BitVec 32))) (Found!8278 (index!35480 (_ BitVec 32))) (Intermediate!8278 (undefined!9090 Bool) (index!35481 (_ BitVec 32)) (x!66421 (_ BitVec 32))) (Undefined!8278) (MissingVacant!8278 (index!35482 (_ BitVec 32))) )
))
(declare-fun lt!354594 () SeekEntryResult!8278)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795421 (= res!540109 (or (= lt!354594 (MissingZero!8278 i!1163)) (= lt!354594 (MissingVacant!8278 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43207 (_ BitVec 32)) SeekEntryResult!8278)

(assert (=> b!795421 (= lt!354594 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!795422 () Bool)

(declare-fun e!441497 () Bool)

(assert (=> b!795422 (= e!441496 e!441497)))

(declare-fun res!540117 () Bool)

(assert (=> b!795422 (=> (not res!540117) (not e!441497))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354592 () array!43207)

(declare-fun lt!354593 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43207 (_ BitVec 32)) SeekEntryResult!8278)

(assert (=> b!795422 (= res!540117 (= (seekEntryOrOpen!0 lt!354593 lt!354592 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354593 lt!354592 mask!3266)))))

(assert (=> b!795422 (= lt!354593 (select (store (arr!20680 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795422 (= lt!354592 (array!43208 (store (arr!20680 a!3170) i!1163 k0!2044) (size!21101 a!3170)))))

(declare-fun b!795423 () Bool)

(declare-fun res!540111 () Bool)

(assert (=> b!795423 (=> (not res!540111) (not e!441496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43207 (_ BitVec 32)) Bool)

(assert (=> b!795423 (= res!540111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!540114 () Bool)

(assert (=> start!68466 (=> (not res!540114) (not e!441499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68466 (= res!540114 (validMask!0 mask!3266))))

(assert (=> start!68466 e!441499))

(assert (=> start!68466 true))

(declare-fun array_inv!16454 (array!43207) Bool)

(assert (=> start!68466 (array_inv!16454 a!3170)))

(declare-fun b!795424 () Bool)

(declare-fun res!540115 () Bool)

(assert (=> b!795424 (=> (not res!540115) (not e!441496))))

(declare-datatypes ((List!14696 0))(
  ( (Nil!14693) (Cons!14692 (h!15821 (_ BitVec 64)) (t!21019 List!14696)) )
))
(declare-fun arrayNoDuplicates!0 (array!43207 (_ BitVec 32) List!14696) Bool)

(assert (=> b!795424 (= res!540115 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14693))))

(declare-fun b!795425 () Bool)

(declare-fun res!540116 () Bool)

(assert (=> b!795425 (=> (not res!540116) (not e!441499))))

(assert (=> b!795425 (= res!540116 (and (= (size!21101 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21101 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21101 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795426 () Bool)

(declare-fun res!540113 () Bool)

(assert (=> b!795426 (=> (not res!540113) (not e!441496))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795426 (= res!540113 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21101 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20680 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21101 a!3170)) (= (select (arr!20680 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun lt!354591 () SeekEntryResult!8278)

(declare-fun b!795427 () Bool)

(declare-fun lt!354595 () SeekEntryResult!8278)

(assert (=> b!795427 (= e!441497 (and (= lt!354595 lt!354591) (= lt!354591 (Found!8278 j!153)) (= (select (arr!20680 a!3170) index!1236) (select (arr!20680 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(assert (=> b!795427 (= lt!354591 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20680 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795427 (= lt!354595 (seekEntryOrOpen!0 (select (arr!20680 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795428 () Bool)

(declare-fun res!540112 () Bool)

(assert (=> b!795428 (=> (not res!540112) (not e!441499))))

(declare-fun arrayContainsKey!0 (array!43207 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795428 (= res!540112 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795429 () Bool)

(declare-fun res!540110 () Bool)

(assert (=> b!795429 (=> (not res!540110) (not e!441499))))

(assert (=> b!795429 (= res!540110 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68466 res!540114) b!795425))

(assert (= (and b!795425 res!540116) b!795420))

(assert (= (and b!795420 res!540118) b!795429))

(assert (= (and b!795429 res!540110) b!795428))

(assert (= (and b!795428 res!540112) b!795421))

(assert (= (and b!795421 res!540109) b!795423))

(assert (= (and b!795423 res!540111) b!795424))

(assert (= (and b!795424 res!540115) b!795426))

(assert (= (and b!795426 res!540113) b!795422))

(assert (= (and b!795422 res!540117) b!795427))

(declare-fun m!736177 () Bool)

(assert (=> b!795426 m!736177))

(declare-fun m!736179 () Bool)

(assert (=> b!795426 m!736179))

(declare-fun m!736181 () Bool)

(assert (=> b!795422 m!736181))

(declare-fun m!736183 () Bool)

(assert (=> b!795422 m!736183))

(declare-fun m!736185 () Bool)

(assert (=> b!795422 m!736185))

(declare-fun m!736187 () Bool)

(assert (=> b!795422 m!736187))

(declare-fun m!736189 () Bool)

(assert (=> b!795424 m!736189))

(declare-fun m!736191 () Bool)

(assert (=> start!68466 m!736191))

(declare-fun m!736193 () Bool)

(assert (=> start!68466 m!736193))

(declare-fun m!736195 () Bool)

(assert (=> b!795421 m!736195))

(declare-fun m!736197 () Bool)

(assert (=> b!795423 m!736197))

(declare-fun m!736199 () Bool)

(assert (=> b!795428 m!736199))

(declare-fun m!736201 () Bool)

(assert (=> b!795429 m!736201))

(declare-fun m!736203 () Bool)

(assert (=> b!795420 m!736203))

(assert (=> b!795420 m!736203))

(declare-fun m!736205 () Bool)

(assert (=> b!795420 m!736205))

(declare-fun m!736207 () Bool)

(assert (=> b!795427 m!736207))

(assert (=> b!795427 m!736203))

(assert (=> b!795427 m!736203))

(declare-fun m!736209 () Bool)

(assert (=> b!795427 m!736209))

(assert (=> b!795427 m!736203))

(declare-fun m!736211 () Bool)

(assert (=> b!795427 m!736211))

(check-sat (not b!795424) (not b!795423) (not b!795428) (not b!795427) (not b!795420) (not b!795422) (not start!68466) (not b!795421) (not b!795429))
(check-sat)
