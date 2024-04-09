; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68532 () Bool)

(assert start!68532)

(declare-fun b!796478 () Bool)

(declare-fun res!541173 () Bool)

(declare-fun e!441961 () Bool)

(assert (=> b!796478 (=> (not res!541173) (not e!441961))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43273 0))(
  ( (array!43274 (arr!20713 (Array (_ BitVec 32) (_ BitVec 64))) (size!21134 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43273)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796478 (= res!541173 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21134 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20713 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21134 a!3170)) (= (select (arr!20713 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796479 () Bool)

(declare-fun res!541169 () Bool)

(assert (=> b!796479 (=> (not res!541169) (not e!441961))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43273 (_ BitVec 32)) Bool)

(assert (=> b!796479 (= res!541169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796480 () Bool)

(declare-fun res!541171 () Bool)

(declare-fun e!441962 () Bool)

(assert (=> b!796480 (=> (not res!541171) (not e!441962))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796480 (= res!541171 (validKeyInArray!0 (select (arr!20713 a!3170) j!153)))))

(declare-fun res!541168 () Bool)

(assert (=> start!68532 (=> (not res!541168) (not e!441962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68532 (= res!541168 (validMask!0 mask!3266))))

(assert (=> start!68532 e!441962))

(assert (=> start!68532 true))

(declare-fun array_inv!16487 (array!43273) Bool)

(assert (=> start!68532 (array_inv!16487 a!3170)))

(declare-fun b!796481 () Bool)

(declare-fun res!541170 () Bool)

(assert (=> b!796481 (=> (not res!541170) (not e!441962))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796481 (= res!541170 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796482 () Bool)

(declare-fun e!441963 () Bool)

(assert (=> b!796482 (= e!441963 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20713 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((SeekEntryResult!8311 0))(
  ( (MissingZero!8311 (index!35611 (_ BitVec 32))) (Found!8311 (index!35612 (_ BitVec 32))) (Intermediate!8311 (undefined!9123 Bool) (index!35613 (_ BitVec 32)) (x!66542 (_ BitVec 32))) (Undefined!8311) (MissingVacant!8311 (index!35614 (_ BitVec 32))) )
))
(declare-fun lt!355204 () SeekEntryResult!8311)

(assert (=> b!796482 (= lt!355204 (Found!8311 index!1236))))

(declare-fun b!796483 () Bool)

(declare-fun res!541175 () Bool)

(assert (=> b!796483 (=> (not res!541175) (not e!441962))))

(assert (=> b!796483 (= res!541175 (and (= (size!21134 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21134 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21134 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796484 () Bool)

(assert (=> b!796484 (= e!441962 e!441961)))

(declare-fun res!541176 () Bool)

(assert (=> b!796484 (=> (not res!541176) (not e!441961))))

(declare-fun lt!355208 () SeekEntryResult!8311)

(assert (=> b!796484 (= res!541176 (or (= lt!355208 (MissingZero!8311 i!1163)) (= lt!355208 (MissingVacant!8311 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43273 (_ BitVec 32)) SeekEntryResult!8311)

(assert (=> b!796484 (= lt!355208 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!796485 () Bool)

(declare-fun res!541177 () Bool)

(assert (=> b!796485 (=> (not res!541177) (not e!441961))))

(declare-datatypes ((List!14729 0))(
  ( (Nil!14726) (Cons!14725 (h!15854 (_ BitVec 64)) (t!21052 List!14729)) )
))
(declare-fun arrayNoDuplicates!0 (array!43273 (_ BitVec 32) List!14729) Bool)

(assert (=> b!796485 (= res!541177 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14726))))

(declare-fun b!796486 () Bool)

(declare-fun e!441964 () Bool)

(assert (=> b!796486 (= e!441964 e!441963)))

(declare-fun res!541167 () Bool)

(assert (=> b!796486 (=> (not res!541167) (not e!441963))))

(declare-fun lt!355209 () SeekEntryResult!8311)

(declare-fun lt!355206 () SeekEntryResult!8311)

(assert (=> b!796486 (= res!541167 (and (= lt!355206 lt!355209) (= lt!355209 (Found!8311 j!153)) (= (select (arr!20713 a!3170) index!1236) (select (arr!20713 a!3170) j!153))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43273 (_ BitVec 32)) SeekEntryResult!8311)

(assert (=> b!796486 (= lt!355209 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20713 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796486 (= lt!355206 (seekEntryOrOpen!0 (select (arr!20713 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796487 () Bool)

(assert (=> b!796487 (= e!441961 e!441964)))

(declare-fun res!541174 () Bool)

(assert (=> b!796487 (=> (not res!541174) (not e!441964))))

(declare-fun lt!355207 () SeekEntryResult!8311)

(assert (=> b!796487 (= res!541174 (= lt!355207 lt!355204))))

(declare-fun lt!355205 () (_ BitVec 64))

(declare-fun lt!355210 () array!43273)

(assert (=> b!796487 (= lt!355204 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355205 lt!355210 mask!3266))))

(assert (=> b!796487 (= lt!355207 (seekEntryOrOpen!0 lt!355205 lt!355210 mask!3266))))

(assert (=> b!796487 (= lt!355205 (select (store (arr!20713 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!796487 (= lt!355210 (array!43274 (store (arr!20713 a!3170) i!1163 k0!2044) (size!21134 a!3170)))))

(declare-fun b!796488 () Bool)

(declare-fun res!541172 () Bool)

(assert (=> b!796488 (=> (not res!541172) (not e!441962))))

(assert (=> b!796488 (= res!541172 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68532 res!541168) b!796483))

(assert (= (and b!796483 res!541175) b!796480))

(assert (= (and b!796480 res!541171) b!796488))

(assert (= (and b!796488 res!541172) b!796481))

(assert (= (and b!796481 res!541170) b!796484))

(assert (= (and b!796484 res!541176) b!796479))

(assert (= (and b!796479 res!541169) b!796485))

(assert (= (and b!796485 res!541177) b!796478))

(assert (= (and b!796478 res!541173) b!796487))

(assert (= (and b!796487 res!541174) b!796486))

(assert (= (and b!796486 res!541167) b!796482))

(declare-fun m!737379 () Bool)

(assert (=> b!796479 m!737379))

(declare-fun m!737381 () Bool)

(assert (=> b!796488 m!737381))

(declare-fun m!737383 () Bool)

(assert (=> b!796478 m!737383))

(declare-fun m!737385 () Bool)

(assert (=> b!796478 m!737385))

(declare-fun m!737387 () Bool)

(assert (=> start!68532 m!737387))

(declare-fun m!737389 () Bool)

(assert (=> start!68532 m!737389))

(declare-fun m!737391 () Bool)

(assert (=> b!796485 m!737391))

(declare-fun m!737393 () Bool)

(assert (=> b!796482 m!737393))

(declare-fun m!737395 () Bool)

(assert (=> b!796482 m!737395))

(declare-fun m!737397 () Bool)

(assert (=> b!796480 m!737397))

(assert (=> b!796480 m!737397))

(declare-fun m!737399 () Bool)

(assert (=> b!796480 m!737399))

(declare-fun m!737401 () Bool)

(assert (=> b!796484 m!737401))

(declare-fun m!737403 () Bool)

(assert (=> b!796486 m!737403))

(assert (=> b!796486 m!737397))

(assert (=> b!796486 m!737397))

(declare-fun m!737405 () Bool)

(assert (=> b!796486 m!737405))

(assert (=> b!796486 m!737397))

(declare-fun m!737407 () Bool)

(assert (=> b!796486 m!737407))

(declare-fun m!737409 () Bool)

(assert (=> b!796481 m!737409))

(declare-fun m!737411 () Bool)

(assert (=> b!796487 m!737411))

(declare-fun m!737413 () Bool)

(assert (=> b!796487 m!737413))

(assert (=> b!796487 m!737393))

(declare-fun m!737415 () Bool)

(assert (=> b!796487 m!737415))

(check-sat (not b!796487) (not b!796480) (not b!796481) (not start!68532) (not b!796484) (not b!796485) (not b!796488) (not b!796479) (not b!796486))
(check-sat)
