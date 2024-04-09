; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68952 () Bool)

(assert start!68952)

(declare-fun b!803969 () Bool)

(declare-fun res!548663 () Bool)

(declare-fun e!445460 () Bool)

(assert (=> b!803969 (=> (not res!548663) (not e!445460))))

(declare-datatypes ((array!43693 0))(
  ( (array!43694 (arr!20923 (Array (_ BitVec 32) (_ BitVec 64))) (size!21344 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43693)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43693 (_ BitVec 32)) Bool)

(assert (=> b!803969 (= res!548663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803970 () Bool)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803970 (= e!445460 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21344 a!3170)) (= vacantBefore!23 i!1163) (or (bvslt vacantBefore!23 #b00000000000000000000000000000000) (bvsge vacantBefore!23 (size!21344 a!3170)))))))

(declare-fun b!803971 () Bool)

(declare-fun res!548659 () Bool)

(declare-fun e!445461 () Bool)

(assert (=> b!803971 (=> (not res!548659) (not e!445461))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803971 (= res!548659 (validKeyInArray!0 k0!2044))))

(declare-fun b!803972 () Bool)

(declare-fun res!548658 () Bool)

(assert (=> b!803972 (=> (not res!548658) (not e!445461))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!803972 (= res!548658 (validKeyInArray!0 (select (arr!20923 a!3170) j!153)))))

(declare-fun res!548662 () Bool)

(assert (=> start!68952 (=> (not res!548662) (not e!445461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68952 (= res!548662 (validMask!0 mask!3266))))

(assert (=> start!68952 e!445461))

(assert (=> start!68952 true))

(declare-fun array_inv!16697 (array!43693) Bool)

(assert (=> start!68952 (array_inv!16697 a!3170)))

(declare-fun b!803973 () Bool)

(declare-fun res!548664 () Bool)

(assert (=> b!803973 (=> (not res!548664) (not e!445460))))

(declare-datatypes ((List!14939 0))(
  ( (Nil!14936) (Cons!14935 (h!16064 (_ BitVec 64)) (t!21262 List!14939)) )
))
(declare-fun arrayNoDuplicates!0 (array!43693 (_ BitVec 32) List!14939) Bool)

(assert (=> b!803973 (= res!548664 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14936))))

(declare-fun b!803974 () Bool)

(declare-fun res!548665 () Bool)

(assert (=> b!803974 (=> (not res!548665) (not e!445461))))

(declare-fun arrayContainsKey!0 (array!43693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803974 (= res!548665 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803975 () Bool)

(assert (=> b!803975 (= e!445461 e!445460)))

(declare-fun res!548661 () Bool)

(assert (=> b!803975 (=> (not res!548661) (not e!445460))))

(declare-datatypes ((SeekEntryResult!8521 0))(
  ( (MissingZero!8521 (index!36451 (_ BitVec 32))) (Found!8521 (index!36452 (_ BitVec 32))) (Intermediate!8521 (undefined!9333 Bool) (index!36453 (_ BitVec 32)) (x!67312 (_ BitVec 32))) (Undefined!8521) (MissingVacant!8521 (index!36454 (_ BitVec 32))) )
))
(declare-fun lt!360016 () SeekEntryResult!8521)

(assert (=> b!803975 (= res!548661 (or (= lt!360016 (MissingZero!8521 i!1163)) (= lt!360016 (MissingVacant!8521 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43693 (_ BitVec 32)) SeekEntryResult!8521)

(assert (=> b!803975 (= lt!360016 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!803976 () Bool)

(declare-fun res!548660 () Bool)

(assert (=> b!803976 (=> (not res!548660) (not e!445461))))

(assert (=> b!803976 (= res!548660 (and (= (size!21344 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21344 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21344 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68952 res!548662) b!803976))

(assert (= (and b!803976 res!548660) b!803972))

(assert (= (and b!803972 res!548658) b!803971))

(assert (= (and b!803971 res!548659) b!803974))

(assert (= (and b!803974 res!548665) b!803975))

(assert (= (and b!803975 res!548661) b!803969))

(assert (= (and b!803969 res!548663) b!803973))

(assert (= (and b!803973 res!548664) b!803970))

(declare-fun m!745987 () Bool)

(assert (=> b!803972 m!745987))

(assert (=> b!803972 m!745987))

(declare-fun m!745989 () Bool)

(assert (=> b!803972 m!745989))

(declare-fun m!745991 () Bool)

(assert (=> b!803969 m!745991))

(declare-fun m!745993 () Bool)

(assert (=> b!803971 m!745993))

(declare-fun m!745995 () Bool)

(assert (=> start!68952 m!745995))

(declare-fun m!745997 () Bool)

(assert (=> start!68952 m!745997))

(declare-fun m!745999 () Bool)

(assert (=> b!803974 m!745999))

(declare-fun m!746001 () Bool)

(assert (=> b!803975 m!746001))

(declare-fun m!746003 () Bool)

(assert (=> b!803973 m!746003))

(check-sat (not b!803975) (not b!803971) (not b!803969) (not start!68952) (not b!803972) (not b!803973) (not b!803974))
(check-sat)
