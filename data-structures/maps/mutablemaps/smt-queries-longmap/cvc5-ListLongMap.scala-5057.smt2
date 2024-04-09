; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68872 () Bool)

(assert start!68872)

(declare-fun b!802594 () Bool)

(declare-fun res!547294 () Bool)

(declare-fun e!444800 () Bool)

(assert (=> b!802594 (=> (not res!547294) (not e!444800))))

(declare-datatypes ((array!43613 0))(
  ( (array!43614 (arr!20883 (Array (_ BitVec 32) (_ BitVec 64))) (size!21304 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43613)

(declare-datatypes ((List!14899 0))(
  ( (Nil!14896) (Cons!14895 (h!16024 (_ BitVec 64)) (t!21222 List!14899)) )
))
(declare-fun arrayNoDuplicates!0 (array!43613 (_ BitVec 32) List!14899) Bool)

(assert (=> b!802594 (= res!547294 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14896))))

(declare-fun res!547285 () Bool)

(declare-fun e!444804 () Bool)

(assert (=> start!68872 (=> (not res!547285) (not e!444804))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68872 (= res!547285 (validMask!0 mask!3266))))

(assert (=> start!68872 e!444804))

(assert (=> start!68872 true))

(declare-fun array_inv!16657 (array!43613) Bool)

(assert (=> start!68872 (array_inv!16657 a!3170)))

(declare-fun b!802595 () Bool)

(declare-fun e!444801 () Bool)

(declare-fun e!444802 () Bool)

(assert (=> b!802595 (= e!444801 e!444802)))

(declare-fun res!547289 () Bool)

(assert (=> b!802595 (=> (not res!547289) (not e!444802))))

(declare-datatypes ((SeekEntryResult!8481 0))(
  ( (MissingZero!8481 (index!36291 (_ BitVec 32))) (Found!8481 (index!36292 (_ BitVec 32))) (Intermediate!8481 (undefined!9293 Bool) (index!36293 (_ BitVec 32)) (x!67168 (_ BitVec 32))) (Undefined!8481) (MissingVacant!8481 (index!36294 (_ BitVec 32))) )
))
(declare-fun lt!359023 () SeekEntryResult!8481)

(declare-fun lt!359025 () SeekEntryResult!8481)

(assert (=> b!802595 (= res!547289 (= lt!359023 lt!359025))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43613 (_ BitVec 32)) SeekEntryResult!8481)

(assert (=> b!802595 (= lt!359025 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20883 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43613 (_ BitVec 32)) SeekEntryResult!8481)

(assert (=> b!802595 (= lt!359023 (seekEntryOrOpen!0 (select (arr!20883 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802596 () Bool)

(declare-fun res!547293 () Bool)

(assert (=> b!802596 (=> (not res!547293) (not e!444804))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802596 (= res!547293 (validKeyInArray!0 k!2044))))

(declare-fun b!802597 () Bool)

(assert (=> b!802597 (= e!444804 e!444800)))

(declare-fun res!547284 () Bool)

(assert (=> b!802597 (=> (not res!547284) (not e!444800))))

(declare-fun lt!359029 () SeekEntryResult!8481)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802597 (= res!547284 (or (= lt!359029 (MissingZero!8481 i!1163)) (= lt!359029 (MissingVacant!8481 i!1163))))))

(assert (=> b!802597 (= lt!359029 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802598 () Bool)

(declare-fun res!547292 () Bool)

(assert (=> b!802598 (=> (not res!547292) (not e!444804))))

(assert (=> b!802598 (= res!547292 (and (= (size!21304 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21304 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21304 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802599 () Bool)

(declare-fun res!547290 () Bool)

(assert (=> b!802599 (=> (not res!547290) (not e!444804))))

(declare-fun arrayContainsKey!0 (array!43613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802599 (= res!547290 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802600 () Bool)

(declare-fun res!547283 () Bool)

(assert (=> b!802600 (=> (not res!547283) (not e!444800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43613 (_ BitVec 32)) Bool)

(assert (=> b!802600 (= res!547283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802601 () Bool)

(declare-fun res!547287 () Bool)

(assert (=> b!802601 (=> (not res!547287) (not e!444800))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!802601 (= res!547287 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21304 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20883 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21304 a!3170)) (= (select (arr!20883 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802602 () Bool)

(declare-fun res!547288 () Bool)

(assert (=> b!802602 (=> (not res!547288) (not e!444804))))

(assert (=> b!802602 (= res!547288 (validKeyInArray!0 (select (arr!20883 a!3170) j!153)))))

(declare-fun b!802603 () Bool)

(declare-fun e!444805 () Bool)

(assert (=> b!802603 (= e!444802 e!444805)))

(declare-fun res!547291 () Bool)

(assert (=> b!802603 (=> (not res!547291) (not e!444805))))

(declare-fun lt!359026 () SeekEntryResult!8481)

(assert (=> b!802603 (= res!547291 (and (= lt!359025 lt!359026) (not (= (select (arr!20883 a!3170) index!1236) (select (arr!20883 a!3170) j!153)))))))

(assert (=> b!802603 (= lt!359026 (Found!8481 j!153))))

(declare-fun b!802604 () Bool)

(declare-fun lt!359030 () SeekEntryResult!8481)

(assert (=> b!802604 (= e!444805 (not (or (not (= lt!359030 lt!359026)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!359031 () (_ BitVec 64))

(declare-fun lt!359027 () (_ BitVec 32))

(declare-fun lt!359032 () array!43613)

(assert (=> b!802604 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359027 vacantAfter!23 lt!359031 lt!359032 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359027 vacantBefore!23 (select (arr!20883 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27504 0))(
  ( (Unit!27505) )
))
(declare-fun lt!359024 () Unit!27504)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43613 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27504)

(assert (=> b!802604 (= lt!359024 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359027 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802604 (= lt!359027 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802605 () Bool)

(assert (=> b!802605 (= e!444800 e!444801)))

(declare-fun res!547286 () Bool)

(assert (=> b!802605 (=> (not res!547286) (not e!444801))))

(declare-fun lt!359028 () SeekEntryResult!8481)

(assert (=> b!802605 (= res!547286 (= lt!359028 lt!359030))))

(assert (=> b!802605 (= lt!359030 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359031 lt!359032 mask!3266))))

(assert (=> b!802605 (= lt!359028 (seekEntryOrOpen!0 lt!359031 lt!359032 mask!3266))))

(assert (=> b!802605 (= lt!359031 (select (store (arr!20883 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802605 (= lt!359032 (array!43614 (store (arr!20883 a!3170) i!1163 k!2044) (size!21304 a!3170)))))

(assert (= (and start!68872 res!547285) b!802598))

(assert (= (and b!802598 res!547292) b!802602))

(assert (= (and b!802602 res!547288) b!802596))

(assert (= (and b!802596 res!547293) b!802599))

(assert (= (and b!802599 res!547290) b!802597))

(assert (= (and b!802597 res!547284) b!802600))

(assert (= (and b!802600 res!547283) b!802594))

(assert (= (and b!802594 res!547294) b!802601))

(assert (= (and b!802601 res!547287) b!802605))

(assert (= (and b!802605 res!547286) b!802595))

(assert (= (and b!802595 res!547289) b!802603))

(assert (= (and b!802603 res!547291) b!802604))

(declare-fun m!744235 () Bool)

(assert (=> b!802605 m!744235))

(declare-fun m!744237 () Bool)

(assert (=> b!802605 m!744237))

(declare-fun m!744239 () Bool)

(assert (=> b!802605 m!744239))

(declare-fun m!744241 () Bool)

(assert (=> b!802605 m!744241))

(declare-fun m!744243 () Bool)

(assert (=> b!802604 m!744243))

(declare-fun m!744245 () Bool)

(assert (=> b!802604 m!744245))

(declare-fun m!744247 () Bool)

(assert (=> b!802604 m!744247))

(assert (=> b!802604 m!744243))

(declare-fun m!744249 () Bool)

(assert (=> b!802604 m!744249))

(declare-fun m!744251 () Bool)

(assert (=> b!802604 m!744251))

(declare-fun m!744253 () Bool)

(assert (=> b!802603 m!744253))

(assert (=> b!802603 m!744243))

(declare-fun m!744255 () Bool)

(assert (=> start!68872 m!744255))

(declare-fun m!744257 () Bool)

(assert (=> start!68872 m!744257))

(declare-fun m!744259 () Bool)

(assert (=> b!802594 m!744259))

(declare-fun m!744261 () Bool)

(assert (=> b!802597 m!744261))

(assert (=> b!802602 m!744243))

(assert (=> b!802602 m!744243))

(declare-fun m!744263 () Bool)

(assert (=> b!802602 m!744263))

(declare-fun m!744265 () Bool)

(assert (=> b!802599 m!744265))

(declare-fun m!744267 () Bool)

(assert (=> b!802600 m!744267))

(assert (=> b!802595 m!744243))

(assert (=> b!802595 m!744243))

(declare-fun m!744269 () Bool)

(assert (=> b!802595 m!744269))

(assert (=> b!802595 m!744243))

(declare-fun m!744271 () Bool)

(assert (=> b!802595 m!744271))

(declare-fun m!744273 () Bool)

(assert (=> b!802596 m!744273))

(declare-fun m!744275 () Bool)

(assert (=> b!802601 m!744275))

(declare-fun m!744277 () Bool)

(assert (=> b!802601 m!744277))

(push 1)

(assert (not b!802597))

(assert (not b!802599))

(assert (not b!802604))

(assert (not start!68872))

(assert (not b!802596))

(assert (not b!802594))

(assert (not b!802605))

(assert (not b!802595))

(assert (not b!802600))

(assert (not b!802602))

(check-sat)

(pop 1)

(push 1)

(check-sat)

