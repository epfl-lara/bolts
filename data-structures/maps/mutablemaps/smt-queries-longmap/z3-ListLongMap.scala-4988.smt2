; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68460 () Bool)

(assert start!68460)

(declare-fun b!795330 () Bool)

(declare-fun res!540026 () Bool)

(declare-fun e!441462 () Bool)

(assert (=> b!795330 (=> (not res!540026) (not e!441462))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43201 0))(
  ( (array!43202 (arr!20677 (Array (_ BitVec 32) (_ BitVec 64))) (size!21098 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43201)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!795330 (= res!540026 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21098 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20677 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21098 a!3170)) (= (select (arr!20677 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795331 () Bool)

(declare-fun res!540020 () Bool)

(assert (=> b!795331 (=> (not res!540020) (not e!441462))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43201 (_ BitVec 32)) Bool)

(assert (=> b!795331 (= res!540020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795332 () Bool)

(declare-fun e!441463 () Bool)

(assert (=> b!795332 (= e!441463 false)))

(declare-fun j!153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8275 0))(
  ( (MissingZero!8275 (index!35467 (_ BitVec 32))) (Found!8275 (index!35468 (_ BitVec 32))) (Intermediate!8275 (undefined!9087 Bool) (index!35469 (_ BitVec 32)) (x!66410 (_ BitVec 32))) (Undefined!8275) (MissingVacant!8275 (index!35470 (_ BitVec 32))) )
))
(declare-fun lt!354547 () SeekEntryResult!8275)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43201 (_ BitVec 32)) SeekEntryResult!8275)

(assert (=> b!795332 (= lt!354547 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20677 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354550 () SeekEntryResult!8275)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43201 (_ BitVec 32)) SeekEntryResult!8275)

(assert (=> b!795332 (= lt!354550 (seekEntryOrOpen!0 (select (arr!20677 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795333 () Bool)

(assert (=> b!795333 (= e!441462 e!441463)))

(declare-fun res!540027 () Bool)

(assert (=> b!795333 (=> (not res!540027) (not e!441463))))

(declare-fun lt!354549 () array!43201)

(declare-fun lt!354546 () (_ BitVec 64))

(assert (=> b!795333 (= res!540027 (= (seekEntryOrOpen!0 lt!354546 lt!354549 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354546 lt!354549 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!795333 (= lt!354546 (select (store (arr!20677 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795333 (= lt!354549 (array!43202 (store (arr!20677 a!3170) i!1163 k0!2044) (size!21098 a!3170)))))

(declare-fun b!795334 () Bool)

(declare-fun res!540025 () Bool)

(declare-fun e!441460 () Bool)

(assert (=> b!795334 (=> (not res!540025) (not e!441460))))

(assert (=> b!795334 (= res!540025 (and (= (size!21098 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21098 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21098 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795336 () Bool)

(declare-fun res!540022 () Bool)

(assert (=> b!795336 (=> (not res!540022) (not e!441460))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795336 (= res!540022 (validKeyInArray!0 k0!2044))))

(declare-fun b!795337 () Bool)

(declare-fun res!540019 () Bool)

(assert (=> b!795337 (=> (not res!540019) (not e!441460))))

(declare-fun arrayContainsKey!0 (array!43201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795337 (= res!540019 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795338 () Bool)

(declare-fun res!540024 () Bool)

(assert (=> b!795338 (=> (not res!540024) (not e!441462))))

(declare-datatypes ((List!14693 0))(
  ( (Nil!14690) (Cons!14689 (h!15818 (_ BitVec 64)) (t!21016 List!14693)) )
))
(declare-fun arrayNoDuplicates!0 (array!43201 (_ BitVec 32) List!14693) Bool)

(assert (=> b!795338 (= res!540024 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14690))))

(declare-fun b!795339 () Bool)

(declare-fun res!540028 () Bool)

(assert (=> b!795339 (=> (not res!540028) (not e!441460))))

(assert (=> b!795339 (= res!540028 (validKeyInArray!0 (select (arr!20677 a!3170) j!153)))))

(declare-fun b!795335 () Bool)

(assert (=> b!795335 (= e!441460 e!441462)))

(declare-fun res!540021 () Bool)

(assert (=> b!795335 (=> (not res!540021) (not e!441462))))

(declare-fun lt!354548 () SeekEntryResult!8275)

(assert (=> b!795335 (= res!540021 (or (= lt!354548 (MissingZero!8275 i!1163)) (= lt!354548 (MissingVacant!8275 i!1163))))))

(assert (=> b!795335 (= lt!354548 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!540023 () Bool)

(assert (=> start!68460 (=> (not res!540023) (not e!441460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68460 (= res!540023 (validMask!0 mask!3266))))

(assert (=> start!68460 e!441460))

(assert (=> start!68460 true))

(declare-fun array_inv!16451 (array!43201) Bool)

(assert (=> start!68460 (array_inv!16451 a!3170)))

(assert (= (and start!68460 res!540023) b!795334))

(assert (= (and b!795334 res!540025) b!795339))

(assert (= (and b!795339 res!540028) b!795336))

(assert (= (and b!795336 res!540022) b!795337))

(assert (= (and b!795337 res!540019) b!795335))

(assert (= (and b!795335 res!540021) b!795331))

(assert (= (and b!795331 res!540020) b!795338))

(assert (= (and b!795338 res!540024) b!795330))

(assert (= (and b!795330 res!540026) b!795333))

(assert (= (and b!795333 res!540027) b!795332))

(declare-fun m!736073 () Bool)

(assert (=> b!795330 m!736073))

(declare-fun m!736075 () Bool)

(assert (=> b!795330 m!736075))

(declare-fun m!736077 () Bool)

(assert (=> b!795339 m!736077))

(assert (=> b!795339 m!736077))

(declare-fun m!736079 () Bool)

(assert (=> b!795339 m!736079))

(declare-fun m!736081 () Bool)

(assert (=> start!68460 m!736081))

(declare-fun m!736083 () Bool)

(assert (=> start!68460 m!736083))

(declare-fun m!736085 () Bool)

(assert (=> b!795335 m!736085))

(declare-fun m!736087 () Bool)

(assert (=> b!795337 m!736087))

(declare-fun m!736089 () Bool)

(assert (=> b!795331 m!736089))

(declare-fun m!736091 () Bool)

(assert (=> b!795336 m!736091))

(assert (=> b!795332 m!736077))

(assert (=> b!795332 m!736077))

(declare-fun m!736093 () Bool)

(assert (=> b!795332 m!736093))

(assert (=> b!795332 m!736077))

(declare-fun m!736095 () Bool)

(assert (=> b!795332 m!736095))

(declare-fun m!736097 () Bool)

(assert (=> b!795333 m!736097))

(declare-fun m!736099 () Bool)

(assert (=> b!795333 m!736099))

(declare-fun m!736101 () Bool)

(assert (=> b!795333 m!736101))

(declare-fun m!736103 () Bool)

(assert (=> b!795333 m!736103))

(declare-fun m!736105 () Bool)

(assert (=> b!795338 m!736105))

(check-sat (not b!795332) (not b!795338) (not b!795337) (not start!68460) (not b!795331) (not b!795336) (not b!795335) (not b!795333) (not b!795339))
(check-sat)
