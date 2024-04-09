; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68694 () Bool)

(assert start!68694)

(declare-fun b!799305 () Bool)

(declare-fun res!544001 () Bool)

(declare-fun e!443282 () Bool)

(assert (=> b!799305 (=> (not res!544001) (not e!443282))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43435 0))(
  ( (array!43436 (arr!20794 (Array (_ BitVec 32) (_ BitVec 64))) (size!21215 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43435)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!799305 (= res!544001 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21215 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20794 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21215 a!3170)) (= (select (arr!20794 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799306 () Bool)

(declare-fun res!543998 () Bool)

(declare-fun e!443281 () Bool)

(assert (=> b!799306 (=> (not res!543998) (not e!443281))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799306 (= res!543998 (validKeyInArray!0 k0!2044))))

(declare-fun b!799307 () Bool)

(declare-fun res!543996 () Bool)

(assert (=> b!799307 (=> (not res!543996) (not e!443282))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43435 (_ BitVec 32)) Bool)

(assert (=> b!799307 (= res!543996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799308 () Bool)

(assert (=> b!799308 (= e!443281 e!443282)))

(declare-fun res!543995 () Bool)

(assert (=> b!799308 (=> (not res!543995) (not e!443282))))

(declare-datatypes ((SeekEntryResult!8392 0))(
  ( (MissingZero!8392 (index!35935 (_ BitVec 32))) (Found!8392 (index!35936 (_ BitVec 32))) (Intermediate!8392 (undefined!9204 Bool) (index!35937 (_ BitVec 32)) (x!66839 (_ BitVec 32))) (Undefined!8392) (MissingVacant!8392 (index!35938 (_ BitVec 32))) )
))
(declare-fun lt!356958 () SeekEntryResult!8392)

(assert (=> b!799308 (= res!543995 (or (= lt!356958 (MissingZero!8392 i!1163)) (= lt!356958 (MissingVacant!8392 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43435 (_ BitVec 32)) SeekEntryResult!8392)

(assert (=> b!799308 (= lt!356958 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!799309 () Bool)

(declare-fun e!443283 () Bool)

(assert (=> b!799309 (= e!443283 false)))

(declare-fun lt!356962 () SeekEntryResult!8392)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!356957 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43435 (_ BitVec 32)) SeekEntryResult!8392)

(assert (=> b!799309 (= lt!356962 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356957 vacantBefore!23 (select (arr!20794 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799310 () Bool)

(declare-fun e!443284 () Bool)

(declare-fun e!443279 () Bool)

(assert (=> b!799310 (= e!443284 e!443279)))

(declare-fun res!544000 () Bool)

(assert (=> b!799310 (=> (not res!544000) (not e!443279))))

(declare-fun lt!356959 () SeekEntryResult!8392)

(declare-fun lt!356956 () SeekEntryResult!8392)

(assert (=> b!799310 (= res!544000 (and (= lt!356956 lt!356959) (= lt!356959 (Found!8392 j!153)) (not (= (select (arr!20794 a!3170) index!1236) (select (arr!20794 a!3170) j!153)))))))

(assert (=> b!799310 (= lt!356959 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20794 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799310 (= lt!356956 (seekEntryOrOpen!0 (select (arr!20794 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799311 () Bool)

(declare-fun res!543997 () Bool)

(assert (=> b!799311 (=> (not res!543997) (not e!443282))))

(declare-datatypes ((List!14810 0))(
  ( (Nil!14807) (Cons!14806 (h!15935 (_ BitVec 64)) (t!21133 List!14810)) )
))
(declare-fun arrayNoDuplicates!0 (array!43435 (_ BitVec 32) List!14810) Bool)

(assert (=> b!799311 (= res!543997 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14807))))

(declare-fun b!799312 () Bool)

(assert (=> b!799312 (= e!443279 e!443283)))

(declare-fun res!543999 () Bool)

(assert (=> b!799312 (=> (not res!543999) (not e!443283))))

(assert (=> b!799312 (= res!543999 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356957 #b00000000000000000000000000000000) (bvslt lt!356957 (size!21215 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799312 (= lt!356957 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799313 () Bool)

(assert (=> b!799313 (= e!443282 e!443284)))

(declare-fun res!544003 () Bool)

(assert (=> b!799313 (=> (not res!544003) (not e!443284))))

(declare-fun lt!356961 () (_ BitVec 64))

(declare-fun lt!356960 () SeekEntryResult!8392)

(declare-fun lt!356955 () array!43435)

(assert (=> b!799313 (= res!544003 (= lt!356960 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356961 lt!356955 mask!3266)))))

(assert (=> b!799313 (= lt!356960 (seekEntryOrOpen!0 lt!356961 lt!356955 mask!3266))))

(assert (=> b!799313 (= lt!356961 (select (store (arr!20794 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!799313 (= lt!356955 (array!43436 (store (arr!20794 a!3170) i!1163 k0!2044) (size!21215 a!3170)))))

(declare-fun b!799314 () Bool)

(declare-fun res!543994 () Bool)

(assert (=> b!799314 (=> (not res!543994) (not e!443281))))

(declare-fun arrayContainsKey!0 (array!43435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799314 (= res!543994 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!544005 () Bool)

(assert (=> start!68694 (=> (not res!544005) (not e!443281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68694 (= res!544005 (validMask!0 mask!3266))))

(assert (=> start!68694 e!443281))

(assert (=> start!68694 true))

(declare-fun array_inv!16568 (array!43435) Bool)

(assert (=> start!68694 (array_inv!16568 a!3170)))

(declare-fun b!799315 () Bool)

(declare-fun res!544006 () Bool)

(assert (=> b!799315 (=> (not res!544006) (not e!443281))))

(assert (=> b!799315 (= res!544006 (validKeyInArray!0 (select (arr!20794 a!3170) j!153)))))

(declare-fun b!799316 () Bool)

(declare-fun res!544004 () Bool)

(assert (=> b!799316 (=> (not res!544004) (not e!443281))))

(assert (=> b!799316 (= res!544004 (and (= (size!21215 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21215 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21215 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799317 () Bool)

(declare-fun res!544002 () Bool)

(assert (=> b!799317 (=> (not res!544002) (not e!443283))))

(assert (=> b!799317 (= res!544002 (= lt!356960 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356957 vacantAfter!23 lt!356961 lt!356955 mask!3266)))))

(assert (= (and start!68694 res!544005) b!799316))

(assert (= (and b!799316 res!544004) b!799315))

(assert (= (and b!799315 res!544006) b!799306))

(assert (= (and b!799306 res!543998) b!799314))

(assert (= (and b!799314 res!543994) b!799308))

(assert (= (and b!799308 res!543995) b!799307))

(assert (= (and b!799307 res!543996) b!799311))

(assert (= (and b!799311 res!543997) b!799305))

(assert (= (and b!799305 res!544001) b!799313))

(assert (= (and b!799313 res!544003) b!799310))

(assert (= (and b!799310 res!544000) b!799312))

(assert (= (and b!799312 res!543999) b!799317))

(assert (= (and b!799317 res!544002) b!799309))

(declare-fun m!740413 () Bool)

(assert (=> b!799310 m!740413))

(declare-fun m!740415 () Bool)

(assert (=> b!799310 m!740415))

(assert (=> b!799310 m!740415))

(declare-fun m!740417 () Bool)

(assert (=> b!799310 m!740417))

(assert (=> b!799310 m!740415))

(declare-fun m!740419 () Bool)

(assert (=> b!799310 m!740419))

(declare-fun m!740421 () Bool)

(assert (=> b!799307 m!740421))

(declare-fun m!740423 () Bool)

(assert (=> b!799306 m!740423))

(declare-fun m!740425 () Bool)

(assert (=> b!799308 m!740425))

(declare-fun m!740427 () Bool)

(assert (=> b!799317 m!740427))

(declare-fun m!740429 () Bool)

(assert (=> b!799305 m!740429))

(declare-fun m!740431 () Bool)

(assert (=> b!799305 m!740431))

(declare-fun m!740433 () Bool)

(assert (=> b!799313 m!740433))

(declare-fun m!740435 () Bool)

(assert (=> b!799313 m!740435))

(declare-fun m!740437 () Bool)

(assert (=> b!799313 m!740437))

(declare-fun m!740439 () Bool)

(assert (=> b!799313 m!740439))

(assert (=> b!799309 m!740415))

(assert (=> b!799309 m!740415))

(declare-fun m!740441 () Bool)

(assert (=> b!799309 m!740441))

(declare-fun m!740443 () Bool)

(assert (=> b!799311 m!740443))

(declare-fun m!740445 () Bool)

(assert (=> start!68694 m!740445))

(declare-fun m!740447 () Bool)

(assert (=> start!68694 m!740447))

(declare-fun m!740449 () Bool)

(assert (=> b!799312 m!740449))

(assert (=> b!799315 m!740415))

(assert (=> b!799315 m!740415))

(declare-fun m!740451 () Bool)

(assert (=> b!799315 m!740451))

(declare-fun m!740453 () Bool)

(assert (=> b!799314 m!740453))

(check-sat (not b!799309) (not b!799306) (not b!799314) (not b!799315) (not start!68694) (not b!799311) (not b!799308) (not b!799310) (not b!799307) (not b!799312) (not b!799317) (not b!799313))
(check-sat)
