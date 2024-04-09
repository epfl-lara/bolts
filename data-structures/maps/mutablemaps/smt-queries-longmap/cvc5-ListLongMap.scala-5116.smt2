; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69430 () Bool)

(assert start!69430)

(declare-fun res!553085 () Bool)

(declare-fun e!447940 () Bool)

(assert (=> start!69430 (=> (not res!553085) (not e!447940))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69430 (= res!553085 (validMask!0 mask!3266))))

(assert (=> start!69430 e!447940))

(assert (=> start!69430 true))

(declare-datatypes ((array!43979 0))(
  ( (array!43980 (arr!21060 (Array (_ BitVec 32) (_ BitVec 64))) (size!21481 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43979)

(declare-fun array_inv!16834 (array!43979) Bool)

(assert (=> start!69430 (array_inv!16834 a!3170)))

(declare-fun b!809180 () Bool)

(declare-fun res!553082 () Bool)

(assert (=> b!809180 (=> (not res!553082) (not e!447940))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!809180 (= res!553082 (validKeyInArray!0 k!2044))))

(declare-fun b!809181 () Bool)

(declare-fun res!553081 () Bool)

(declare-fun e!447941 () Bool)

(assert (=> b!809181 (=> (not res!553081) (not e!447941))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!809181 (= res!553081 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21481 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21060 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21481 a!3170)) (= (select (arr!21060 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!809182 () Bool)

(declare-fun e!447942 () Bool)

(assert (=> b!809182 (= e!447941 e!447942)))

(declare-fun res!553077 () Bool)

(assert (=> b!809182 (=> (not res!553077) (not e!447942))))

(declare-fun lt!362644 () array!43979)

(declare-fun lt!362642 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8658 0))(
  ( (MissingZero!8658 (index!36999 (_ BitVec 32))) (Found!8658 (index!37000 (_ BitVec 32))) (Intermediate!8658 (undefined!9470 Bool) (index!37001 (_ BitVec 32)) (x!67835 (_ BitVec 32))) (Undefined!8658) (MissingVacant!8658 (index!37002 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43979 (_ BitVec 32)) SeekEntryResult!8658)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43979 (_ BitVec 32)) SeekEntryResult!8658)

(assert (=> b!809182 (= res!553077 (= (seekEntryOrOpen!0 lt!362642 lt!362644 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362642 lt!362644 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!809182 (= lt!362642 (select (store (arr!21060 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!809182 (= lt!362644 (array!43980 (store (arr!21060 a!3170) i!1163 k!2044) (size!21481 a!3170)))))

(declare-fun b!809183 () Bool)

(declare-fun res!553084 () Bool)

(assert (=> b!809183 (=> (not res!553084) (not e!447940))))

(assert (=> b!809183 (= res!553084 (validKeyInArray!0 (select (arr!21060 a!3170) j!153)))))

(declare-fun b!809184 () Bool)

(declare-fun res!553087 () Bool)

(assert (=> b!809184 (=> (not res!553087) (not e!447940))))

(assert (=> b!809184 (= res!553087 (and (= (size!21481 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21481 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21481 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!809185 () Bool)

(assert (=> b!809185 (= e!447940 e!447941)))

(declare-fun res!553080 () Bool)

(assert (=> b!809185 (=> (not res!553080) (not e!447941))))

(declare-fun lt!362640 () SeekEntryResult!8658)

(assert (=> b!809185 (= res!553080 (or (= lt!362640 (MissingZero!8658 i!1163)) (= lt!362640 (MissingVacant!8658 i!1163))))))

(assert (=> b!809185 (= lt!362640 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!809186 () Bool)

(declare-fun res!553086 () Bool)

(assert (=> b!809186 (=> (not res!553086) (not e!447941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43979 (_ BitVec 32)) Bool)

(assert (=> b!809186 (= res!553086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!809187 () Bool)

(declare-fun e!447939 () Bool)

(assert (=> b!809187 (= e!447939 false)))

(declare-fun lt!362643 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!809187 (= lt!362643 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!809188 () Bool)

(declare-fun res!553083 () Bool)

(assert (=> b!809188 (=> (not res!553083) (not e!447941))))

(declare-datatypes ((List!15076 0))(
  ( (Nil!15073) (Cons!15072 (h!16201 (_ BitVec 64)) (t!21399 List!15076)) )
))
(declare-fun arrayNoDuplicates!0 (array!43979 (_ BitVec 32) List!15076) Bool)

(assert (=> b!809188 (= res!553083 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15073))))

(declare-fun b!809189 () Bool)

(assert (=> b!809189 (= e!447942 e!447939)))

(declare-fun res!553078 () Bool)

(assert (=> b!809189 (=> (not res!553078) (not e!447939))))

(declare-fun lt!362641 () SeekEntryResult!8658)

(declare-fun lt!362639 () SeekEntryResult!8658)

(assert (=> b!809189 (= res!553078 (and (= lt!362641 lt!362639) (= lt!362639 (Found!8658 j!153)) (not (= (select (arr!21060 a!3170) index!1236) (select (arr!21060 a!3170) j!153)))))))

(assert (=> b!809189 (= lt!362639 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21060 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!809189 (= lt!362641 (seekEntryOrOpen!0 (select (arr!21060 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!809190 () Bool)

(declare-fun res!553079 () Bool)

(assert (=> b!809190 (=> (not res!553079) (not e!447940))))

(declare-fun arrayContainsKey!0 (array!43979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!809190 (= res!553079 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69430 res!553085) b!809184))

(assert (= (and b!809184 res!553087) b!809183))

(assert (= (and b!809183 res!553084) b!809180))

(assert (= (and b!809180 res!553082) b!809190))

(assert (= (and b!809190 res!553079) b!809185))

(assert (= (and b!809185 res!553080) b!809186))

(assert (= (and b!809186 res!553086) b!809188))

(assert (= (and b!809188 res!553083) b!809181))

(assert (= (and b!809181 res!553081) b!809182))

(assert (= (and b!809182 res!553077) b!809189))

(assert (= (and b!809189 res!553078) b!809187))

(declare-fun m!751453 () Bool)

(assert (=> start!69430 m!751453))

(declare-fun m!751455 () Bool)

(assert (=> start!69430 m!751455))

(declare-fun m!751457 () Bool)

(assert (=> b!809182 m!751457))

(declare-fun m!751459 () Bool)

(assert (=> b!809182 m!751459))

(declare-fun m!751461 () Bool)

(assert (=> b!809182 m!751461))

(declare-fun m!751463 () Bool)

(assert (=> b!809182 m!751463))

(declare-fun m!751465 () Bool)

(assert (=> b!809183 m!751465))

(assert (=> b!809183 m!751465))

(declare-fun m!751467 () Bool)

(assert (=> b!809183 m!751467))

(declare-fun m!751469 () Bool)

(assert (=> b!809189 m!751469))

(assert (=> b!809189 m!751465))

(assert (=> b!809189 m!751465))

(declare-fun m!751471 () Bool)

(assert (=> b!809189 m!751471))

(assert (=> b!809189 m!751465))

(declare-fun m!751473 () Bool)

(assert (=> b!809189 m!751473))

(declare-fun m!751475 () Bool)

(assert (=> b!809180 m!751475))

(declare-fun m!751477 () Bool)

(assert (=> b!809186 m!751477))

(declare-fun m!751479 () Bool)

(assert (=> b!809187 m!751479))

(declare-fun m!751481 () Bool)

(assert (=> b!809190 m!751481))

(declare-fun m!751483 () Bool)

(assert (=> b!809181 m!751483))

(declare-fun m!751485 () Bool)

(assert (=> b!809181 m!751485))

(declare-fun m!751487 () Bool)

(assert (=> b!809185 m!751487))

(declare-fun m!751489 () Bool)

(assert (=> b!809188 m!751489))

(push 1)

