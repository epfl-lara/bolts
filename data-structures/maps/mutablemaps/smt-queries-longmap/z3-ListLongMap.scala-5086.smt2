; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69048 () Bool)

(assert start!69048)

(declare-fun b!805194 () Bool)

(declare-fun res!549892 () Bool)

(declare-fun e!445951 () Bool)

(assert (=> b!805194 (=> (not res!549892) (not e!445951))))

(declare-datatypes ((array!43789 0))(
  ( (array!43790 (arr!20971 (Array (_ BitVec 32) (_ BitVec 64))) (size!21392 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43789)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!805194 (= res!549892 (validKeyInArray!0 (select (arr!20971 a!3170) j!153)))))

(declare-fun b!805195 () Bool)

(declare-fun e!445953 () Bool)

(assert (=> b!805195 (= e!445951 e!445953)))

(declare-fun res!549886 () Bool)

(assert (=> b!805195 (=> (not res!549886) (not e!445953))))

(declare-datatypes ((SeekEntryResult!8569 0))(
  ( (MissingZero!8569 (index!36643 (_ BitVec 32))) (Found!8569 (index!36644 (_ BitVec 32))) (Intermediate!8569 (undefined!9381 Bool) (index!36645 (_ BitVec 32)) (x!67488 (_ BitVec 32))) (Undefined!8569) (MissingVacant!8569 (index!36646 (_ BitVec 32))) )
))
(declare-fun lt!360532 () SeekEntryResult!8569)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!805195 (= res!549886 (or (= lt!360532 (MissingZero!8569 i!1163)) (= lt!360532 (MissingVacant!8569 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43789 (_ BitVec 32)) SeekEntryResult!8569)

(assert (=> b!805195 (= lt!360532 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!549887 () Bool)

(assert (=> start!69048 (=> (not res!549887) (not e!445951))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69048 (= res!549887 (validMask!0 mask!3266))))

(assert (=> start!69048 e!445951))

(assert (=> start!69048 true))

(declare-fun array_inv!16745 (array!43789) Bool)

(assert (=> start!69048 (array_inv!16745 a!3170)))

(declare-fun b!805196 () Bool)

(declare-fun res!549883 () Bool)

(assert (=> b!805196 (=> (not res!549883) (not e!445951))))

(assert (=> b!805196 (= res!549883 (validKeyInArray!0 k0!2044))))

(declare-fun b!805197 () Bool)

(declare-fun res!549890 () Bool)

(assert (=> b!805197 (=> (not res!549890) (not e!445953))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!805197 (= res!549890 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21392 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20971 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21392 a!3170)) (= (select (arr!20971 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!805198 () Bool)

(declare-fun res!549891 () Bool)

(assert (=> b!805198 (=> (not res!549891) (not e!445953))))

(declare-datatypes ((List!14987 0))(
  ( (Nil!14984) (Cons!14983 (h!16112 (_ BitVec 64)) (t!21310 List!14987)) )
))
(declare-fun arrayNoDuplicates!0 (array!43789 (_ BitVec 32) List!14987) Bool)

(assert (=> b!805198 (= res!549891 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14984))))

(declare-fun b!805199 () Bool)

(declare-fun res!549889 () Bool)

(assert (=> b!805199 (=> (not res!549889) (not e!445951))))

(assert (=> b!805199 (= res!549889 (and (= (size!21392 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21392 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21392 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!805200 () Bool)

(declare-fun e!445954 () Bool)

(assert (=> b!805200 (= e!445954 false)))

(declare-fun lt!360533 () SeekEntryResult!8569)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43789 (_ BitVec 32)) SeekEntryResult!8569)

(assert (=> b!805200 (= lt!360533 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20971 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!360531 () SeekEntryResult!8569)

(assert (=> b!805200 (= lt!360531 (seekEntryOrOpen!0 (select (arr!20971 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!805201 () Bool)

(declare-fun res!549888 () Bool)

(assert (=> b!805201 (=> (not res!549888) (not e!445953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43789 (_ BitVec 32)) Bool)

(assert (=> b!805201 (= res!549888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!805202 () Bool)

(declare-fun res!549884 () Bool)

(assert (=> b!805202 (=> (not res!549884) (not e!445951))))

(declare-fun arrayContainsKey!0 (array!43789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!805202 (= res!549884 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!805203 () Bool)

(assert (=> b!805203 (= e!445953 e!445954)))

(declare-fun res!549885 () Bool)

(assert (=> b!805203 (=> (not res!549885) (not e!445954))))

(declare-fun lt!360535 () (_ BitVec 64))

(declare-fun lt!360534 () array!43789)

(assert (=> b!805203 (= res!549885 (= (seekEntryOrOpen!0 lt!360535 lt!360534 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360535 lt!360534 mask!3266)))))

(assert (=> b!805203 (= lt!360535 (select (store (arr!20971 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!805203 (= lt!360534 (array!43790 (store (arr!20971 a!3170) i!1163 k0!2044) (size!21392 a!3170)))))

(assert (= (and start!69048 res!549887) b!805199))

(assert (= (and b!805199 res!549889) b!805194))

(assert (= (and b!805194 res!549892) b!805196))

(assert (= (and b!805196 res!549883) b!805202))

(assert (= (and b!805202 res!549884) b!805195))

(assert (= (and b!805195 res!549886) b!805201))

(assert (= (and b!805201 res!549888) b!805198))

(assert (= (and b!805198 res!549891) b!805197))

(assert (= (and b!805197 res!549890) b!805203))

(assert (= (and b!805203 res!549885) b!805200))

(declare-fun m!747227 () Bool)

(assert (=> b!805203 m!747227))

(declare-fun m!747229 () Bool)

(assert (=> b!805203 m!747229))

(declare-fun m!747231 () Bool)

(assert (=> b!805203 m!747231))

(declare-fun m!747233 () Bool)

(assert (=> b!805203 m!747233))

(declare-fun m!747235 () Bool)

(assert (=> b!805196 m!747235))

(declare-fun m!747237 () Bool)

(assert (=> start!69048 m!747237))

(declare-fun m!747239 () Bool)

(assert (=> start!69048 m!747239))

(declare-fun m!747241 () Bool)

(assert (=> b!805201 m!747241))

(declare-fun m!747243 () Bool)

(assert (=> b!805202 m!747243))

(declare-fun m!747245 () Bool)

(assert (=> b!805194 m!747245))

(assert (=> b!805194 m!747245))

(declare-fun m!747247 () Bool)

(assert (=> b!805194 m!747247))

(declare-fun m!747249 () Bool)

(assert (=> b!805198 m!747249))

(declare-fun m!747251 () Bool)

(assert (=> b!805195 m!747251))

(declare-fun m!747253 () Bool)

(assert (=> b!805197 m!747253))

(declare-fun m!747255 () Bool)

(assert (=> b!805197 m!747255))

(assert (=> b!805200 m!747245))

(assert (=> b!805200 m!747245))

(declare-fun m!747257 () Bool)

(assert (=> b!805200 m!747257))

(assert (=> b!805200 m!747245))

(declare-fun m!747259 () Bool)

(assert (=> b!805200 m!747259))

(check-sat (not b!805202) (not b!805203) (not start!69048) (not b!805201) (not b!805200) (not b!805195) (not b!805196) (not b!805198) (not b!805194))
(check-sat)
