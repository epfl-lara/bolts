; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68400 () Bool)

(assert start!68400)

(declare-fun b!794403 () Bool)

(declare-fun res!539095 () Bool)

(declare-fun e!441102 () Bool)

(assert (=> b!794403 (=> (not res!539095) (not e!441102))))

(declare-datatypes ((array!43141 0))(
  ( (array!43142 (arr!20647 (Array (_ BitVec 32) (_ BitVec 64))) (size!21068 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43141)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794403 (= res!539095 (validKeyInArray!0 (select (arr!20647 a!3170) j!153)))))

(declare-fun b!794404 () Bool)

(declare-fun res!539099 () Bool)

(assert (=> b!794404 (=> (not res!539099) (not e!441102))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!794404 (= res!539099 (and (= (size!21068 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21068 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21068 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794405 () Bool)

(declare-fun res!539093 () Bool)

(declare-fun e!441103 () Bool)

(assert (=> b!794405 (=> (not res!539093) (not e!441103))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794405 (= res!539093 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21068 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20647 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21068 a!3170)) (= (select (arr!20647 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794406 () Bool)

(declare-fun e!441101 () Bool)

(assert (=> b!794406 (= e!441103 e!441101)))

(declare-fun res!539101 () Bool)

(assert (=> b!794406 (=> (not res!539101) (not e!441101))))

(declare-fun lt!354152 () (_ BitVec 64))

(declare-fun lt!354151 () array!43141)

(declare-datatypes ((SeekEntryResult!8245 0))(
  ( (MissingZero!8245 (index!35347 (_ BitVec 32))) (Found!8245 (index!35348 (_ BitVec 32))) (Intermediate!8245 (undefined!9057 Bool) (index!35349 (_ BitVec 32)) (x!66300 (_ BitVec 32))) (Undefined!8245) (MissingVacant!8245 (index!35350 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43141 (_ BitVec 32)) SeekEntryResult!8245)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43141 (_ BitVec 32)) SeekEntryResult!8245)

(assert (=> b!794406 (= res!539101 (= (seekEntryOrOpen!0 lt!354152 lt!354151 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354152 lt!354151 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!794406 (= lt!354152 (select (store (arr!20647 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!794406 (= lt!354151 (array!43142 (store (arr!20647 a!3170) i!1163 k0!2044) (size!21068 a!3170)))))

(declare-fun b!794408 () Bool)

(assert (=> b!794408 (= e!441102 e!441103)))

(declare-fun res!539096 () Bool)

(assert (=> b!794408 (=> (not res!539096) (not e!441103))))

(declare-fun lt!354153 () SeekEntryResult!8245)

(assert (=> b!794408 (= res!539096 (or (= lt!354153 (MissingZero!8245 i!1163)) (= lt!354153 (MissingVacant!8245 i!1163))))))

(assert (=> b!794408 (= lt!354153 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!794409 () Bool)

(declare-fun res!539094 () Bool)

(assert (=> b!794409 (=> (not res!539094) (not e!441103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43141 (_ BitVec 32)) Bool)

(assert (=> b!794409 (= res!539094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794410 () Bool)

(declare-fun res!539097 () Bool)

(assert (=> b!794410 (=> (not res!539097) (not e!441103))))

(declare-datatypes ((List!14663 0))(
  ( (Nil!14660) (Cons!14659 (h!15788 (_ BitVec 64)) (t!20986 List!14663)) )
))
(declare-fun arrayNoDuplicates!0 (array!43141 (_ BitVec 32) List!14663) Bool)

(assert (=> b!794410 (= res!539097 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14660))))

(declare-fun b!794411 () Bool)

(declare-fun res!539098 () Bool)

(assert (=> b!794411 (=> (not res!539098) (not e!441102))))

(declare-fun arrayContainsKey!0 (array!43141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794411 (= res!539098 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794412 () Bool)

(declare-fun res!539092 () Bool)

(assert (=> b!794412 (=> (not res!539092) (not e!441102))))

(assert (=> b!794412 (= res!539092 (validKeyInArray!0 k0!2044))))

(declare-fun b!794407 () Bool)

(assert (=> b!794407 (= e!441101 false)))

(declare-fun lt!354154 () SeekEntryResult!8245)

(assert (=> b!794407 (= lt!354154 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20647 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354150 () SeekEntryResult!8245)

(assert (=> b!794407 (= lt!354150 (seekEntryOrOpen!0 (select (arr!20647 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!539100 () Bool)

(assert (=> start!68400 (=> (not res!539100) (not e!441102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68400 (= res!539100 (validMask!0 mask!3266))))

(assert (=> start!68400 e!441102))

(assert (=> start!68400 true))

(declare-fun array_inv!16421 (array!43141) Bool)

(assert (=> start!68400 (array_inv!16421 a!3170)))

(assert (= (and start!68400 res!539100) b!794404))

(assert (= (and b!794404 res!539099) b!794403))

(assert (= (and b!794403 res!539095) b!794412))

(assert (= (and b!794412 res!539092) b!794411))

(assert (= (and b!794411 res!539098) b!794408))

(assert (= (and b!794408 res!539096) b!794409))

(assert (= (and b!794409 res!539094) b!794410))

(assert (= (and b!794410 res!539097) b!794405))

(assert (= (and b!794405 res!539093) b!794406))

(assert (= (and b!794406 res!539101) b!794407))

(declare-fun m!735047 () Bool)

(assert (=> b!794408 m!735047))

(declare-fun m!735049 () Bool)

(assert (=> b!794406 m!735049))

(declare-fun m!735051 () Bool)

(assert (=> b!794406 m!735051))

(declare-fun m!735053 () Bool)

(assert (=> b!794406 m!735053))

(declare-fun m!735055 () Bool)

(assert (=> b!794406 m!735055))

(declare-fun m!735057 () Bool)

(assert (=> b!794410 m!735057))

(declare-fun m!735059 () Bool)

(assert (=> b!794411 m!735059))

(declare-fun m!735061 () Bool)

(assert (=> b!794412 m!735061))

(declare-fun m!735063 () Bool)

(assert (=> b!794409 m!735063))

(declare-fun m!735065 () Bool)

(assert (=> b!794407 m!735065))

(assert (=> b!794407 m!735065))

(declare-fun m!735067 () Bool)

(assert (=> b!794407 m!735067))

(assert (=> b!794407 m!735065))

(declare-fun m!735069 () Bool)

(assert (=> b!794407 m!735069))

(declare-fun m!735071 () Bool)

(assert (=> b!794405 m!735071))

(declare-fun m!735073 () Bool)

(assert (=> b!794405 m!735073))

(assert (=> b!794403 m!735065))

(assert (=> b!794403 m!735065))

(declare-fun m!735075 () Bool)

(assert (=> b!794403 m!735075))

(declare-fun m!735077 () Bool)

(assert (=> start!68400 m!735077))

(declare-fun m!735079 () Bool)

(assert (=> start!68400 m!735079))

(check-sat (not b!794403) (not b!794410) (not b!794409) (not b!794411) (not start!68400) (not b!794412) (not b!794408) (not b!794406) (not b!794407))
(check-sat)
