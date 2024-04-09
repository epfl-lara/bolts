; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69046 () Bool)

(assert start!69046)

(declare-fun b!805164 () Bool)

(declare-fun res!549855 () Bool)

(declare-fun e!445941 () Bool)

(assert (=> b!805164 (=> (not res!549855) (not e!445941))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43787 0))(
  ( (array!43788 (arr!20970 (Array (_ BitVec 32) (_ BitVec 64))) (size!21391 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43787)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805164 (= res!549855 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21391 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20970 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21391 a!3170)) (= (select (arr!20970 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805165 () Bool)

(declare-fun e!445939 () Bool)

(assert (=> b!805165 (= e!445941 e!445939)))

(declare-fun res!549857 () Bool)

(assert (=> b!805165 (=> (not res!549857) (not e!445939))))

(declare-fun lt!360520 () (_ BitVec 64))

(declare-fun lt!360518 () array!43787)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8568 0))(
  ( (MissingZero!8568 (index!36639 (_ BitVec 32))) (Found!8568 (index!36640 (_ BitVec 32))) (Intermediate!8568 (undefined!9380 Bool) (index!36641 (_ BitVec 32)) (x!67487 (_ BitVec 32))) (Undefined!8568) (MissingVacant!8568 (index!36642 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43787 (_ BitVec 32)) SeekEntryResult!8568)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43787 (_ BitVec 32)) SeekEntryResult!8568)

(assert (=> b!805165 (= res!549857 (= (seekEntryOrOpen!0 lt!360520 lt!360518 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360520 lt!360518 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!805165 (= lt!360520 (select (store (arr!20970 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!805165 (= lt!360518 (array!43788 (store (arr!20970 a!3170) i!1163 k!2044) (size!21391 a!3170)))))

(declare-fun b!805166 () Bool)

(declare-fun e!445940 () Bool)

(assert (=> b!805166 (= e!445940 e!445941)))

(declare-fun res!549854 () Bool)

(assert (=> b!805166 (=> (not res!549854) (not e!445941))))

(declare-fun lt!360519 () SeekEntryResult!8568)

(assert (=> b!805166 (= res!549854 (or (= lt!360519 (MissingZero!8568 i!1163)) (= lt!360519 (MissingVacant!8568 i!1163))))))

(assert (=> b!805166 (= lt!360519 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!805167 () Bool)

(declare-fun res!549858 () Bool)

(assert (=> b!805167 (=> (not res!549858) (not e!445940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805167 (= res!549858 (validKeyInArray!0 k!2044))))

(declare-fun res!549860 () Bool)

(assert (=> start!69046 (=> (not res!549860) (not e!445940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69046 (= res!549860 (validMask!0 mask!3266))))

(assert (=> start!69046 e!445940))

(assert (=> start!69046 true))

(declare-fun array_inv!16744 (array!43787) Bool)

(assert (=> start!69046 (array_inv!16744 a!3170)))

(declare-fun b!805168 () Bool)

(declare-fun res!549862 () Bool)

(assert (=> b!805168 (=> (not res!549862) (not e!445941))))

(declare-datatypes ((List!14986 0))(
  ( (Nil!14983) (Cons!14982 (h!16111 (_ BitVec 64)) (t!21309 List!14986)) )
))
(declare-fun arrayNoDuplicates!0 (array!43787 (_ BitVec 32) List!14986) Bool)

(assert (=> b!805168 (= res!549862 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14983))))

(declare-fun b!805169 () Bool)

(declare-fun res!549861 () Bool)

(assert (=> b!805169 (=> (not res!549861) (not e!445940))))

(declare-fun arrayContainsKey!0 (array!43787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805169 (= res!549861 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805170 () Bool)

(assert (=> b!805170 (= e!445939 false)))

(declare-fun lt!360516 () SeekEntryResult!8568)

(assert (=> b!805170 (= lt!360516 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20970 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360517 () SeekEntryResult!8568)

(assert (=> b!805170 (= lt!360517 (seekEntryOrOpen!0 (select (arr!20970 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805171 () Bool)

(declare-fun res!549856 () Bool)

(assert (=> b!805171 (=> (not res!549856) (not e!445940))))

(assert (=> b!805171 (= res!549856 (and (= (size!21391 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21391 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21391 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805172 () Bool)

(declare-fun res!549859 () Bool)

(assert (=> b!805172 (=> (not res!549859) (not e!445940))))

(assert (=> b!805172 (= res!549859 (validKeyInArray!0 (select (arr!20970 a!3170) j!153)))))

(declare-fun b!805173 () Bool)

(declare-fun res!549853 () Bool)

(assert (=> b!805173 (=> (not res!549853) (not e!445941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43787 (_ BitVec 32)) Bool)

(assert (=> b!805173 (= res!549853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!69046 res!549860) b!805171))

(assert (= (and b!805171 res!549856) b!805172))

(assert (= (and b!805172 res!549859) b!805167))

(assert (= (and b!805167 res!549858) b!805169))

(assert (= (and b!805169 res!549861) b!805166))

(assert (= (and b!805166 res!549854) b!805173))

(assert (= (and b!805173 res!549853) b!805168))

(assert (= (and b!805168 res!549862) b!805164))

(assert (= (and b!805164 res!549855) b!805165))

(assert (= (and b!805165 res!549857) b!805170))

(declare-fun m!747193 () Bool)

(assert (=> b!805166 m!747193))

(declare-fun m!747195 () Bool)

(assert (=> b!805167 m!747195))

(declare-fun m!747197 () Bool)

(assert (=> b!805173 m!747197))

(declare-fun m!747199 () Bool)

(assert (=> b!805165 m!747199))

(declare-fun m!747201 () Bool)

(assert (=> b!805165 m!747201))

(declare-fun m!747203 () Bool)

(assert (=> b!805165 m!747203))

(declare-fun m!747205 () Bool)

(assert (=> b!805165 m!747205))

(declare-fun m!747207 () Bool)

(assert (=> b!805168 m!747207))

(declare-fun m!747209 () Bool)

(assert (=> b!805170 m!747209))

(assert (=> b!805170 m!747209))

(declare-fun m!747211 () Bool)

(assert (=> b!805170 m!747211))

(assert (=> b!805170 m!747209))

(declare-fun m!747213 () Bool)

(assert (=> b!805170 m!747213))

(declare-fun m!747215 () Bool)

(assert (=> b!805164 m!747215))

(declare-fun m!747217 () Bool)

(assert (=> b!805164 m!747217))

(assert (=> b!805172 m!747209))

(assert (=> b!805172 m!747209))

(declare-fun m!747219 () Bool)

(assert (=> b!805172 m!747219))

(declare-fun m!747221 () Bool)

(assert (=> start!69046 m!747221))

(declare-fun m!747223 () Bool)

(assert (=> start!69046 m!747223))

(declare-fun m!747225 () Bool)

(assert (=> b!805169 m!747225))

(push 1)

