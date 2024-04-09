; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68920 () Bool)

(assert start!68920)

(declare-fun e!445219 () Bool)

(declare-fun b!803440 () Bool)

(declare-datatypes ((SeekEntryResult!8505 0))(
  ( (MissingZero!8505 (index!36387 (_ BitVec 32))) (Found!8505 (index!36388 (_ BitVec 32))) (Intermediate!8505 (undefined!9317 Bool) (index!36389 (_ BitVec 32)) (x!67256 (_ BitVec 32))) (Undefined!8505) (MissingVacant!8505 (index!36390 (_ BitVec 32))) )
))
(declare-fun lt!359667 () SeekEntryResult!8505)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!359663 () SeekEntryResult!8505)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803440 (= e!445219 (not (or (not (= lt!359663 lt!359667)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43661 0))(
  ( (array!43662 (arr!20907 (Array (_ BitVec 32) (_ BitVec 64))) (size!21328 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43661)

(declare-fun lt!359670 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!359671 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!359668 () array!43661)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43661 (_ BitVec 32)) SeekEntryResult!8505)

(assert (=> b!803440 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359671 vacantAfter!23 lt!359670 lt!359668 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359671 vacantBefore!23 (select (arr!20907 a!3170) j!153) a!3170 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((Unit!27552 0))(
  ( (Unit!27553) )
))
(declare-fun lt!359662 () Unit!27552)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43661 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27552)

(assert (=> b!803440 (= lt!359662 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359671 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803440 (= lt!359671 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803441 () Bool)

(declare-fun e!445218 () Bool)

(declare-fun e!445215 () Bool)

(assert (=> b!803441 (= e!445218 e!445215)))

(declare-fun res!548131 () Bool)

(assert (=> b!803441 (=> (not res!548131) (not e!445215))))

(declare-fun lt!359666 () SeekEntryResult!8505)

(assert (=> b!803441 (= res!548131 (= lt!359666 lt!359663))))

(assert (=> b!803441 (= lt!359663 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359670 lt!359668 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43661 (_ BitVec 32)) SeekEntryResult!8505)

(assert (=> b!803441 (= lt!359666 (seekEntryOrOpen!0 lt!359670 lt!359668 mask!3266))))

(assert (=> b!803441 (= lt!359670 (select (store (arr!20907 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803441 (= lt!359668 (array!43662 (store (arr!20907 a!3170) i!1163 k!2044) (size!21328 a!3170)))))

(declare-fun b!803442 () Bool)

(declare-fun res!548139 () Bool)

(assert (=> b!803442 (=> (not res!548139) (not e!445218))))

(declare-datatypes ((List!14923 0))(
  ( (Nil!14920) (Cons!14919 (h!16048 (_ BitVec 64)) (t!21246 List!14923)) )
))
(declare-fun arrayNoDuplicates!0 (array!43661 (_ BitVec 32) List!14923) Bool)

(assert (=> b!803442 (= res!548139 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14920))))

(declare-fun b!803443 () Bool)

(declare-fun res!548129 () Bool)

(declare-fun e!445217 () Bool)

(assert (=> b!803443 (=> (not res!548129) (not e!445217))))

(declare-fun arrayContainsKey!0 (array!43661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803443 (= res!548129 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803444 () Bool)

(declare-fun res!548140 () Bool)

(assert (=> b!803444 (=> (not res!548140) (not e!445218))))

(assert (=> b!803444 (= res!548140 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21328 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20907 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21328 a!3170)) (= (select (arr!20907 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803445 () Bool)

(declare-fun res!548137 () Bool)

(assert (=> b!803445 (=> (not res!548137) (not e!445217))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803445 (= res!548137 (validKeyInArray!0 k!2044))))

(declare-fun b!803446 () Bool)

(assert (=> b!803446 (= e!445217 e!445218)))

(declare-fun res!548133 () Bool)

(assert (=> b!803446 (=> (not res!548133) (not e!445218))))

(declare-fun lt!359665 () SeekEntryResult!8505)

(assert (=> b!803446 (= res!548133 (or (= lt!359665 (MissingZero!8505 i!1163)) (= lt!359665 (MissingVacant!8505 i!1163))))))

(assert (=> b!803446 (= lt!359665 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!548135 () Bool)

(assert (=> start!68920 (=> (not res!548135) (not e!445217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68920 (= res!548135 (validMask!0 mask!3266))))

(assert (=> start!68920 e!445217))

(assert (=> start!68920 true))

(declare-fun array_inv!16681 (array!43661) Bool)

(assert (=> start!68920 (array_inv!16681 a!3170)))

(declare-fun b!803447 () Bool)

(declare-fun e!445214 () Bool)

(assert (=> b!803447 (= e!445214 e!445219)))

(declare-fun res!548134 () Bool)

(assert (=> b!803447 (=> (not res!548134) (not e!445219))))

(declare-fun lt!359664 () SeekEntryResult!8505)

(assert (=> b!803447 (= res!548134 (and (= lt!359664 lt!359667) (not (= (select (arr!20907 a!3170) index!1236) (select (arr!20907 a!3170) j!153)))))))

(assert (=> b!803447 (= lt!359667 (Found!8505 j!153))))

(declare-fun b!803448 () Bool)

(assert (=> b!803448 (= e!445215 e!445214)))

(declare-fun res!548136 () Bool)

(assert (=> b!803448 (=> (not res!548136) (not e!445214))))

(declare-fun lt!359669 () SeekEntryResult!8505)

(assert (=> b!803448 (= res!548136 (= lt!359669 lt!359664))))

(assert (=> b!803448 (= lt!359664 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20907 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803448 (= lt!359669 (seekEntryOrOpen!0 (select (arr!20907 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803449 () Bool)

(declare-fun res!548130 () Bool)

(assert (=> b!803449 (=> (not res!548130) (not e!445218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43661 (_ BitVec 32)) Bool)

(assert (=> b!803449 (= res!548130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803450 () Bool)

(declare-fun res!548132 () Bool)

(assert (=> b!803450 (=> (not res!548132) (not e!445217))))

(assert (=> b!803450 (= res!548132 (validKeyInArray!0 (select (arr!20907 a!3170) j!153)))))

(declare-fun b!803451 () Bool)

(declare-fun res!548138 () Bool)

(assert (=> b!803451 (=> (not res!548138) (not e!445217))))

(assert (=> b!803451 (= res!548138 (and (= (size!21328 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21328 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21328 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68920 res!548135) b!803451))

(assert (= (and b!803451 res!548138) b!803450))

(assert (= (and b!803450 res!548132) b!803445))

(assert (= (and b!803445 res!548137) b!803443))

(assert (= (and b!803443 res!548129) b!803446))

(assert (= (and b!803446 res!548133) b!803449))

(assert (= (and b!803449 res!548130) b!803442))

(assert (= (and b!803442 res!548139) b!803444))

(assert (= (and b!803444 res!548140) b!803441))

(assert (= (and b!803441 res!548131) b!803448))

(assert (= (and b!803448 res!548136) b!803447))

(assert (= (and b!803447 res!548134) b!803440))

(declare-fun m!745309 () Bool)

(assert (=> b!803443 m!745309))

(declare-fun m!745311 () Bool)

(assert (=> b!803448 m!745311))

(assert (=> b!803448 m!745311))

(declare-fun m!745313 () Bool)

(assert (=> b!803448 m!745313))

(assert (=> b!803448 m!745311))

(declare-fun m!745315 () Bool)

(assert (=> b!803448 m!745315))

(assert (=> b!803450 m!745311))

(assert (=> b!803450 m!745311))

(declare-fun m!745317 () Bool)

(assert (=> b!803450 m!745317))

(declare-fun m!745319 () Bool)

(assert (=> b!803449 m!745319))

(assert (=> b!803440 m!745311))

(assert (=> b!803440 m!745311))

(declare-fun m!745321 () Bool)

(assert (=> b!803440 m!745321))

(declare-fun m!745323 () Bool)

(assert (=> b!803440 m!745323))

(declare-fun m!745325 () Bool)

(assert (=> b!803440 m!745325))

(declare-fun m!745327 () Bool)

(assert (=> b!803440 m!745327))

(declare-fun m!745329 () Bool)

(assert (=> b!803444 m!745329))

(declare-fun m!745331 () Bool)

(assert (=> b!803444 m!745331))

(declare-fun m!745333 () Bool)

(assert (=> b!803447 m!745333))

(assert (=> b!803447 m!745311))

(declare-fun m!745335 () Bool)

(assert (=> b!803441 m!745335))

(declare-fun m!745337 () Bool)

(assert (=> b!803441 m!745337))

(declare-fun m!745339 () Bool)

(assert (=> b!803441 m!745339))

(declare-fun m!745341 () Bool)

(assert (=> b!803441 m!745341))

(declare-fun m!745343 () Bool)

(assert (=> start!68920 m!745343))

(declare-fun m!745345 () Bool)

(assert (=> start!68920 m!745345))

(declare-fun m!745347 () Bool)

(assert (=> b!803442 m!745347))

(declare-fun m!745349 () Bool)

(assert (=> b!803446 m!745349))

(declare-fun m!745351 () Bool)

(assert (=> b!803445 m!745351))

(push 1)

(assert (not b!803445))

(assert (not b!803450))

(assert (not b!803442))

(assert (not b!803441))

(assert (not start!68920))

(assert (not b!803446))

(assert (not b!803440))

(assert (not b!803449))

(assert (not b!803443))

(assert (not b!803448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

