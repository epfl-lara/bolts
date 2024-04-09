; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68916 () Bool)

(assert start!68916)

(declare-fun b!803372 () Bool)

(declare-fun res!548069 () Bool)

(declare-fun e!445182 () Bool)

(assert (=> b!803372 (=> (not res!548069) (not e!445182))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43657 0))(
  ( (array!43658 (arr!20905 (Array (_ BitVec 32) (_ BitVec 64))) (size!21326 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43657)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803372 (= res!548069 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21326 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20905 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21326 a!3170)) (= (select (arr!20905 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803373 () Bool)

(declare-fun res!548064 () Bool)

(assert (=> b!803373 (=> (not res!548064) (not e!445182))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43657 (_ BitVec 32)) Bool)

(assert (=> b!803373 (= res!548064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803374 () Bool)

(declare-fun res!548068 () Bool)

(assert (=> b!803374 (=> (not res!548068) (not e!445182))))

(declare-datatypes ((List!14921 0))(
  ( (Nil!14918) (Cons!14917 (h!16046 (_ BitVec 64)) (t!21244 List!14921)) )
))
(declare-fun arrayNoDuplicates!0 (array!43657 (_ BitVec 32) List!14921) Bool)

(assert (=> b!803374 (= res!548068 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14918))))

(declare-fun b!803375 () Bool)

(declare-fun res!548065 () Bool)

(declare-fun e!445184 () Bool)

(assert (=> b!803375 (=> (not res!548065) (not e!445184))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803375 (= res!548065 (validKeyInArray!0 (select (arr!20905 a!3170) j!153)))))

(declare-fun b!803376 () Bool)

(declare-fun e!445185 () Bool)

(assert (=> b!803376 (= e!445182 e!445185)))

(declare-fun res!548067 () Bool)

(assert (=> b!803376 (=> (not res!548067) (not e!445185))))

(declare-fun lt!359620 () (_ BitVec 64))

(declare-fun lt!359615 () array!43657)

(declare-datatypes ((SeekEntryResult!8503 0))(
  ( (MissingZero!8503 (index!36379 (_ BitVec 32))) (Found!8503 (index!36380 (_ BitVec 32))) (Intermediate!8503 (undefined!9315 Bool) (index!36381 (_ BitVec 32)) (x!67246 (_ BitVec 32))) (Undefined!8503) (MissingVacant!8503 (index!36382 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43657 (_ BitVec 32)) SeekEntryResult!8503)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43657 (_ BitVec 32)) SeekEntryResult!8503)

(assert (=> b!803376 (= res!548067 (= (seekEntryOrOpen!0 lt!359620 lt!359615 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359620 lt!359615 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!803376 (= lt!359620 (select (store (arr!20905 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!803376 (= lt!359615 (array!43658 (store (arr!20905 a!3170) i!1163 k0!2044) (size!21326 a!3170)))))

(declare-fun b!803377 () Bool)

(declare-fun res!548071 () Bool)

(assert (=> b!803377 (=> (not res!548071) (not e!445184))))

(assert (=> b!803377 (= res!548071 (validKeyInArray!0 k0!2044))))

(declare-fun b!803378 () Bool)

(declare-fun res!548062 () Bool)

(assert (=> b!803378 (=> (not res!548062) (not e!445184))))

(assert (=> b!803378 (= res!548062 (and (= (size!21326 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21326 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21326 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803379 () Bool)

(declare-fun e!445186 () Bool)

(assert (=> b!803379 (= e!445185 e!445186)))

(declare-fun res!548070 () Bool)

(assert (=> b!803379 (=> (not res!548070) (not e!445186))))

(declare-fun lt!359616 () SeekEntryResult!8503)

(declare-fun lt!359619 () SeekEntryResult!8503)

(assert (=> b!803379 (= res!548070 (and (= lt!359619 lt!359616) (= lt!359616 (Found!8503 j!153)) (not (= (select (arr!20905 a!3170) index!1236) (select (arr!20905 a!3170) j!153)))))))

(assert (=> b!803379 (= lt!359616 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20905 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803379 (= lt!359619 (seekEntryOrOpen!0 (select (arr!20905 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803380 () Bool)

(assert (=> b!803380 (= e!445184 e!445182)))

(declare-fun res!548066 () Bool)

(assert (=> b!803380 (=> (not res!548066) (not e!445182))))

(declare-fun lt!359618 () SeekEntryResult!8503)

(assert (=> b!803380 (= res!548066 (or (= lt!359618 (MissingZero!8503 i!1163)) (= lt!359618 (MissingVacant!8503 i!1163))))))

(assert (=> b!803380 (= lt!359618 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!803381 () Bool)

(assert (=> b!803381 (= e!445186 (not true))))

(declare-fun lt!359614 () (_ BitVec 32))

(assert (=> b!803381 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359614 vacantAfter!23 lt!359620 lt!359615 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359614 vacantBefore!23 (select (arr!20905 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27548 0))(
  ( (Unit!27549) )
))
(declare-fun lt!359617 () Unit!27548)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43657 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27548)

(assert (=> b!803381 (= lt!359617 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359614 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803381 (= lt!359614 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803382 () Bool)

(declare-fun res!548063 () Bool)

(assert (=> b!803382 (=> (not res!548063) (not e!445184))))

(declare-fun arrayContainsKey!0 (array!43657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803382 (= res!548063 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!548061 () Bool)

(assert (=> start!68916 (=> (not res!548061) (not e!445184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68916 (= res!548061 (validMask!0 mask!3266))))

(assert (=> start!68916 e!445184))

(assert (=> start!68916 true))

(declare-fun array_inv!16679 (array!43657) Bool)

(assert (=> start!68916 (array_inv!16679 a!3170)))

(assert (= (and start!68916 res!548061) b!803378))

(assert (= (and b!803378 res!548062) b!803375))

(assert (= (and b!803375 res!548065) b!803377))

(assert (= (and b!803377 res!548071) b!803382))

(assert (= (and b!803382 res!548063) b!803380))

(assert (= (and b!803380 res!548066) b!803373))

(assert (= (and b!803373 res!548064) b!803374))

(assert (= (and b!803374 res!548068) b!803372))

(assert (= (and b!803372 res!548069) b!803376))

(assert (= (and b!803376 res!548067) b!803379))

(assert (= (and b!803379 res!548070) b!803381))

(declare-fun m!745221 () Bool)

(assert (=> b!803377 m!745221))

(declare-fun m!745223 () Bool)

(assert (=> b!803382 m!745223))

(declare-fun m!745225 () Bool)

(assert (=> b!803379 m!745225))

(declare-fun m!745227 () Bool)

(assert (=> b!803379 m!745227))

(assert (=> b!803379 m!745227))

(declare-fun m!745229 () Bool)

(assert (=> b!803379 m!745229))

(assert (=> b!803379 m!745227))

(declare-fun m!745231 () Bool)

(assert (=> b!803379 m!745231))

(declare-fun m!745233 () Bool)

(assert (=> b!803373 m!745233))

(declare-fun m!745235 () Bool)

(assert (=> b!803374 m!745235))

(declare-fun m!745237 () Bool)

(assert (=> start!68916 m!745237))

(declare-fun m!745239 () Bool)

(assert (=> start!68916 m!745239))

(assert (=> b!803381 m!745227))

(declare-fun m!745241 () Bool)

(assert (=> b!803381 m!745241))

(declare-fun m!745243 () Bool)

(assert (=> b!803381 m!745243))

(assert (=> b!803381 m!745227))

(declare-fun m!745245 () Bool)

(assert (=> b!803381 m!745245))

(declare-fun m!745247 () Bool)

(assert (=> b!803381 m!745247))

(declare-fun m!745249 () Bool)

(assert (=> b!803372 m!745249))

(declare-fun m!745251 () Bool)

(assert (=> b!803372 m!745251))

(assert (=> b!803375 m!745227))

(assert (=> b!803375 m!745227))

(declare-fun m!745253 () Bool)

(assert (=> b!803375 m!745253))

(declare-fun m!745255 () Bool)

(assert (=> b!803376 m!745255))

(declare-fun m!745257 () Bool)

(assert (=> b!803376 m!745257))

(declare-fun m!745259 () Bool)

(assert (=> b!803376 m!745259))

(declare-fun m!745261 () Bool)

(assert (=> b!803376 m!745261))

(declare-fun m!745263 () Bool)

(assert (=> b!803380 m!745263))

(check-sat (not b!803381) (not b!803373) (not b!803382) (not start!68916) (not b!803379) (not b!803375) (not b!803377) (not b!803380) (not b!803374) (not b!803376))
