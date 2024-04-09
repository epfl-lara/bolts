; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68586 () Bool)

(assert start!68586)

(declare-fun b!797424 () Bool)

(declare-fun res!542115 () Bool)

(declare-fun e!442424 () Bool)

(assert (=> b!797424 (=> (not res!542115) (not e!442424))))

(declare-datatypes ((array!43327 0))(
  ( (array!43328 (arr!20740 (Array (_ BitVec 32) (_ BitVec 64))) (size!21161 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43327)

(declare-datatypes ((List!14756 0))(
  ( (Nil!14753) (Cons!14752 (h!15881 (_ BitVec 64)) (t!21079 List!14756)) )
))
(declare-fun arrayNoDuplicates!0 (array!43327 (_ BitVec 32) List!14756) Bool)

(assert (=> b!797424 (= res!542115 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14753))))

(declare-fun b!797425 () Bool)

(declare-fun e!442426 () Bool)

(assert (=> b!797425 (= e!442426 e!442424)))

(declare-fun res!542123 () Bool)

(assert (=> b!797425 (=> (not res!542123) (not e!442424))))

(declare-datatypes ((SeekEntryResult!8338 0))(
  ( (MissingZero!8338 (index!35719 (_ BitVec 32))) (Found!8338 (index!35720 (_ BitVec 32))) (Intermediate!8338 (undefined!9150 Bool) (index!35721 (_ BitVec 32)) (x!66641 (_ BitVec 32))) (Undefined!8338) (MissingVacant!8338 (index!35722 (_ BitVec 32))) )
))
(declare-fun lt!355816 () SeekEntryResult!8338)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!797425 (= res!542123 (or (= lt!355816 (MissingZero!8338 i!1163)) (= lt!355816 (MissingVacant!8338 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43327 (_ BitVec 32)) SeekEntryResult!8338)

(assert (=> b!797425 (= lt!355816 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!797426 () Bool)

(declare-fun e!442425 () Bool)

(declare-fun e!442420 () Bool)

(assert (=> b!797426 (= e!442425 e!442420)))

(declare-fun res!542119 () Bool)

(assert (=> b!797426 (=> (not res!542119) (not e!442420))))

(declare-fun lt!355819 () SeekEntryResult!8338)

(declare-fun lt!355818 () SeekEntryResult!8338)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797426 (= res!542119 (and (= lt!355819 lt!355818) (= (select (arr!20740 a!3170) index!1236) (select (arr!20740 a!3170) j!153))))))

(assert (=> b!797426 (= lt!355818 (Found!8338 j!153))))

(declare-fun b!797427 () Bool)

(declare-fun res!542114 () Bool)

(assert (=> b!797427 (=> (not res!542114) (not e!442424))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797427 (= res!542114 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21161 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20740 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21161 a!3170)) (= (select (arr!20740 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797428 () Bool)

(declare-fun res!542116 () Bool)

(assert (=> b!797428 (=> (not res!542116) (not e!442426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797428 (= res!542116 (validKeyInArray!0 (select (arr!20740 a!3170) j!153)))))

(declare-fun res!542121 () Bool)

(assert (=> start!68586 (=> (not res!542121) (not e!442426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68586 (= res!542121 (validMask!0 mask!3266))))

(assert (=> start!68586 e!442426))

(assert (=> start!68586 true))

(declare-fun array_inv!16514 (array!43327) Bool)

(assert (=> start!68586 (array_inv!16514 a!3170)))

(declare-fun b!797429 () Bool)

(declare-fun res!542122 () Bool)

(assert (=> b!797429 (=> (not res!542122) (not e!442426))))

(assert (=> b!797429 (= res!542122 (and (= (size!21161 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21161 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21161 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797430 () Bool)

(declare-fun res!542117 () Bool)

(assert (=> b!797430 (=> (not res!542117) (not e!442426))))

(assert (=> b!797430 (= res!542117 (validKeyInArray!0 k0!2044))))

(declare-fun b!797431 () Bool)

(declare-fun res!542125 () Bool)

(assert (=> b!797431 (=> (not res!542125) (not e!442426))))

(declare-fun arrayContainsKey!0 (array!43327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797431 (= res!542125 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797432 () Bool)

(declare-fun e!442423 () Bool)

(assert (=> b!797432 (= e!442423 e!442425)))

(declare-fun res!542113 () Bool)

(assert (=> b!797432 (=> (not res!542113) (not e!442425))))

(declare-fun lt!355812 () SeekEntryResult!8338)

(assert (=> b!797432 (= res!542113 (= lt!355812 lt!355819))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43327 (_ BitVec 32)) SeekEntryResult!8338)

(assert (=> b!797432 (= lt!355819 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20740 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797432 (= lt!355812 (seekEntryOrOpen!0 (select (arr!20740 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797433 () Bool)

(declare-fun e!442421 () Bool)

(assert (=> b!797433 (= e!442420 (not e!442421))))

(declare-fun res!542120 () Bool)

(assert (=> b!797433 (=> res!542120 e!442421)))

(declare-fun lt!355817 () SeekEntryResult!8338)

(assert (=> b!797433 (= res!542120 (or (not (= lt!355817 lt!355818)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20740 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!797433 (= lt!355817 (Found!8338 index!1236))))

(declare-fun b!797434 () Bool)

(declare-fun res!542118 () Bool)

(assert (=> b!797434 (=> (not res!542118) (not e!442424))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43327 (_ BitVec 32)) Bool)

(assert (=> b!797434 (= res!542118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797435 () Bool)

(assert (=> b!797435 (= e!442424 e!442423)))

(declare-fun res!542124 () Bool)

(assert (=> b!797435 (=> (not res!542124) (not e!442423))))

(declare-fun lt!355813 () SeekEntryResult!8338)

(assert (=> b!797435 (= res!542124 (= lt!355813 lt!355817))))

(declare-fun lt!355814 () array!43327)

(declare-fun lt!355815 () (_ BitVec 64))

(assert (=> b!797435 (= lt!355817 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355815 lt!355814 mask!3266))))

(assert (=> b!797435 (= lt!355813 (seekEntryOrOpen!0 lt!355815 lt!355814 mask!3266))))

(assert (=> b!797435 (= lt!355815 (select (store (arr!20740 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!797435 (= lt!355814 (array!43328 (store (arr!20740 a!3170) i!1163 k0!2044) (size!21161 a!3170)))))

(declare-fun b!797436 () Bool)

(assert (=> b!797436 (= e!442421 (validKeyInArray!0 lt!355815))))

(assert (= (and start!68586 res!542121) b!797429))

(assert (= (and b!797429 res!542122) b!797428))

(assert (= (and b!797428 res!542116) b!797430))

(assert (= (and b!797430 res!542117) b!797431))

(assert (= (and b!797431 res!542125) b!797425))

(assert (= (and b!797425 res!542123) b!797434))

(assert (= (and b!797434 res!542118) b!797424))

(assert (= (and b!797424 res!542115) b!797427))

(assert (= (and b!797427 res!542114) b!797435))

(assert (= (and b!797435 res!542124) b!797432))

(assert (= (and b!797432 res!542113) b!797426))

(assert (= (and b!797426 res!542119) b!797433))

(assert (= (and b!797433 (not res!542120)) b!797436))

(declare-fun m!738377 () Bool)

(assert (=> b!797436 m!738377))

(declare-fun m!738379 () Bool)

(assert (=> b!797426 m!738379))

(declare-fun m!738381 () Bool)

(assert (=> b!797426 m!738381))

(assert (=> b!797432 m!738381))

(assert (=> b!797432 m!738381))

(declare-fun m!738383 () Bool)

(assert (=> b!797432 m!738383))

(assert (=> b!797432 m!738381))

(declare-fun m!738385 () Bool)

(assert (=> b!797432 m!738385))

(declare-fun m!738387 () Bool)

(assert (=> b!797435 m!738387))

(declare-fun m!738389 () Bool)

(assert (=> b!797435 m!738389))

(declare-fun m!738391 () Bool)

(assert (=> b!797435 m!738391))

(declare-fun m!738393 () Bool)

(assert (=> b!797435 m!738393))

(assert (=> b!797428 m!738381))

(assert (=> b!797428 m!738381))

(declare-fun m!738395 () Bool)

(assert (=> b!797428 m!738395))

(declare-fun m!738397 () Bool)

(assert (=> b!797430 m!738397))

(declare-fun m!738399 () Bool)

(assert (=> start!68586 m!738399))

(declare-fun m!738401 () Bool)

(assert (=> start!68586 m!738401))

(declare-fun m!738403 () Bool)

(assert (=> b!797424 m!738403))

(declare-fun m!738405 () Bool)

(assert (=> b!797434 m!738405))

(declare-fun m!738407 () Bool)

(assert (=> b!797427 m!738407))

(declare-fun m!738409 () Bool)

(assert (=> b!797427 m!738409))

(declare-fun m!738411 () Bool)

(assert (=> b!797431 m!738411))

(declare-fun m!738413 () Bool)

(assert (=> b!797425 m!738413))

(assert (=> b!797433 m!738391))

(declare-fun m!738415 () Bool)

(assert (=> b!797433 m!738415))

(check-sat (not start!68586) (not b!797432) (not b!797428) (not b!797435) (not b!797424) (not b!797431) (not b!797436) (not b!797430) (not b!797425) (not b!797434))
(check-sat)
