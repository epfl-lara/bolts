; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68456 () Bool)

(assert start!68456)

(declare-fun b!795270 () Bool)

(declare-fun res!539965 () Bool)

(declare-fun e!441437 () Bool)

(assert (=> b!795270 (=> (not res!539965) (not e!441437))))

(declare-datatypes ((array!43197 0))(
  ( (array!43198 (arr!20675 (Array (_ BitVec 32) (_ BitVec 64))) (size!21096 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43197)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43197 (_ BitVec 32)) Bool)

(assert (=> b!795270 (= res!539965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795271 () Bool)

(declare-fun e!441439 () Bool)

(assert (=> b!795271 (= e!441437 e!441439)))

(declare-fun res!539967 () Bool)

(assert (=> b!795271 (=> (not res!539967) (not e!441439))))

(declare-fun lt!354519 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354516 () array!43197)

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8273 0))(
  ( (MissingZero!8273 (index!35459 (_ BitVec 32))) (Found!8273 (index!35460 (_ BitVec 32))) (Intermediate!8273 (undefined!9085 Bool) (index!35461 (_ BitVec 32)) (x!66400 (_ BitVec 32))) (Undefined!8273) (MissingVacant!8273 (index!35462 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43197 (_ BitVec 32)) SeekEntryResult!8273)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43197 (_ BitVec 32)) SeekEntryResult!8273)

(assert (=> b!795271 (= res!539967 (= (seekEntryOrOpen!0 lt!354519 lt!354516 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354519 lt!354516 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795271 (= lt!354519 (select (store (arr!20675 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795271 (= lt!354516 (array!43198 (store (arr!20675 a!3170) i!1163 k!2044) (size!21096 a!3170)))))

(declare-fun b!795272 () Bool)

(declare-fun res!539960 () Bool)

(declare-fun e!441436 () Bool)

(assert (=> b!795272 (=> (not res!539960) (not e!441436))))

(declare-fun arrayContainsKey!0 (array!43197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795272 (= res!539960 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795273 () Bool)

(declare-fun res!539962 () Bool)

(assert (=> b!795273 (=> (not res!539962) (not e!441437))))

(declare-datatypes ((List!14691 0))(
  ( (Nil!14688) (Cons!14687 (h!15816 (_ BitVec 64)) (t!21014 List!14691)) )
))
(declare-fun arrayNoDuplicates!0 (array!43197 (_ BitVec 32) List!14691) Bool)

(assert (=> b!795273 (= res!539962 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14688))))

(declare-fun res!539963 () Bool)

(assert (=> start!68456 (=> (not res!539963) (not e!441436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68456 (= res!539963 (validMask!0 mask!3266))))

(assert (=> start!68456 e!441436))

(assert (=> start!68456 true))

(declare-fun array_inv!16449 (array!43197) Bool)

(assert (=> start!68456 (array_inv!16449 a!3170)))

(declare-fun b!795274 () Bool)

(assert (=> b!795274 (= e!441436 e!441437)))

(declare-fun res!539966 () Bool)

(assert (=> b!795274 (=> (not res!539966) (not e!441437))))

(declare-fun lt!354520 () SeekEntryResult!8273)

(assert (=> b!795274 (= res!539966 (or (= lt!354520 (MissingZero!8273 i!1163)) (= lt!354520 (MissingVacant!8273 i!1163))))))

(assert (=> b!795274 (= lt!354520 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795275 () Bool)

(declare-fun res!539968 () Bool)

(assert (=> b!795275 (=> (not res!539968) (not e!441436))))

(assert (=> b!795275 (= res!539968 (and (= (size!21096 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21096 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21096 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795276 () Bool)

(declare-fun res!539964 () Bool)

(assert (=> b!795276 (=> (not res!539964) (not e!441436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795276 (= res!539964 (validKeyInArray!0 k!2044))))

(declare-fun b!795277 () Bool)

(declare-fun res!539959 () Bool)

(assert (=> b!795277 (=> (not res!539959) (not e!441437))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795277 (= res!539959 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21096 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20675 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21096 a!3170)) (= (select (arr!20675 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795278 () Bool)

(declare-fun res!539961 () Bool)

(assert (=> b!795278 (=> (not res!539961) (not e!441436))))

(assert (=> b!795278 (= res!539961 (validKeyInArray!0 (select (arr!20675 a!3170) j!153)))))

(declare-fun lt!354517 () SeekEntryResult!8273)

(declare-fun b!795279 () Bool)

(declare-fun lt!354518 () SeekEntryResult!8273)

(assert (=> b!795279 (= e!441439 (and (= lt!354517 lt!354518) (= lt!354518 (Found!8273 j!153)) (= (select (arr!20675 a!3170) index!1236) (select (arr!20675 a!3170) j!153)) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(assert (=> b!795279 (= lt!354518 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20675 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795279 (= lt!354517 (seekEntryOrOpen!0 (select (arr!20675 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68456 res!539963) b!795275))

(assert (= (and b!795275 res!539968) b!795278))

(assert (= (and b!795278 res!539961) b!795276))

(assert (= (and b!795276 res!539964) b!795272))

(assert (= (and b!795272 res!539960) b!795274))

(assert (= (and b!795274 res!539966) b!795270))

(assert (= (and b!795270 res!539965) b!795273))

(assert (= (and b!795273 res!539962) b!795277))

(assert (= (and b!795277 res!539959) b!795271))

(assert (= (and b!795271 res!539967) b!795279))

(declare-fun m!736003 () Bool)

(assert (=> b!795274 m!736003))

(declare-fun m!736005 () Bool)

(assert (=> b!795273 m!736005))

(declare-fun m!736007 () Bool)

(assert (=> b!795278 m!736007))

(assert (=> b!795278 m!736007))

(declare-fun m!736009 () Bool)

(assert (=> b!795278 m!736009))

(declare-fun m!736011 () Bool)

(assert (=> start!68456 m!736011))

(declare-fun m!736013 () Bool)

(assert (=> start!68456 m!736013))

(declare-fun m!736015 () Bool)

(assert (=> b!795271 m!736015))

(declare-fun m!736017 () Bool)

(assert (=> b!795271 m!736017))

(declare-fun m!736019 () Bool)

(assert (=> b!795271 m!736019))

(declare-fun m!736021 () Bool)

(assert (=> b!795271 m!736021))

(declare-fun m!736023 () Bool)

(assert (=> b!795279 m!736023))

(assert (=> b!795279 m!736007))

(assert (=> b!795279 m!736007))

(declare-fun m!736025 () Bool)

(assert (=> b!795279 m!736025))

(assert (=> b!795279 m!736007))

(declare-fun m!736027 () Bool)

(assert (=> b!795279 m!736027))

(declare-fun m!736029 () Bool)

(assert (=> b!795276 m!736029))

(declare-fun m!736031 () Bool)

(assert (=> b!795272 m!736031))

(declare-fun m!736033 () Bool)

(assert (=> b!795270 m!736033))

(declare-fun m!736035 () Bool)

(assert (=> b!795277 m!736035))

(declare-fun m!736037 () Bool)

(assert (=> b!795277 m!736037))

(push 1)

(assert (not b!795270))

(assert (not start!68456))

(assert (not b!795274))

