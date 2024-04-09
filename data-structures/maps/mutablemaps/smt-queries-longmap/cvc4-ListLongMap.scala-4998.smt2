; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68522 () Bool)

(assert start!68522)

(declare-fun b!796313 () Bool)

(declare-fun res!541011 () Bool)

(declare-fun e!441887 () Bool)

(assert (=> b!796313 (=> (not res!541011) (not e!441887))))

(declare-datatypes ((array!43263 0))(
  ( (array!43264 (arr!20708 (Array (_ BitVec 32) (_ BitVec 64))) (size!21129 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43263)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796313 (= res!541011 (validKeyInArray!0 (select (arr!20708 a!3170) j!153)))))

(declare-fun b!796314 () Bool)

(declare-fun res!541007 () Bool)

(assert (=> b!796314 (=> (not res!541007) (not e!441887))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!796314 (= res!541007 (and (= (size!21129 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21129 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21129 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796315 () Bool)

(declare-fun res!541009 () Bool)

(declare-fun e!441889 () Bool)

(assert (=> b!796315 (=> (not res!541009) (not e!441889))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43263 (_ BitVec 32)) Bool)

(assert (=> b!796315 (= res!541009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796316 () Bool)

(declare-fun res!541005 () Bool)

(assert (=> b!796316 (=> (not res!541005) (not e!441889))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796316 (= res!541005 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21129 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20708 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21129 a!3170)) (= (select (arr!20708 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796317 () Bool)

(assert (=> b!796317 (= e!441887 e!441889)))

(declare-fun res!541004 () Bool)

(assert (=> b!796317 (=> (not res!541004) (not e!441889))))

(declare-datatypes ((SeekEntryResult!8306 0))(
  ( (MissingZero!8306 (index!35591 (_ BitVec 32))) (Found!8306 (index!35592 (_ BitVec 32))) (Intermediate!8306 (undefined!9118 Bool) (index!35593 (_ BitVec 32)) (x!66521 (_ BitVec 32))) (Undefined!8306) (MissingVacant!8306 (index!35594 (_ BitVec 32))) )
))
(declare-fun lt!355102 () SeekEntryResult!8306)

(assert (=> b!796317 (= res!541004 (or (= lt!355102 (MissingZero!8306 i!1163)) (= lt!355102 (MissingVacant!8306 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43263 (_ BitVec 32)) SeekEntryResult!8306)

(assert (=> b!796317 (= lt!355102 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796318 () Bool)

(declare-fun e!441888 () Bool)

(assert (=> b!796318 (= e!441889 e!441888)))

(declare-fun res!541006 () Bool)

(assert (=> b!796318 (=> (not res!541006) (not e!441888))))

(declare-fun lt!355101 () SeekEntryResult!8306)

(declare-fun lt!355100 () SeekEntryResult!8306)

(assert (=> b!796318 (= res!541006 (= lt!355101 lt!355100))))

(declare-fun lt!355104 () (_ BitVec 64))

(declare-fun lt!355105 () array!43263)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43263 (_ BitVec 32)) SeekEntryResult!8306)

(assert (=> b!796318 (= lt!355100 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355104 lt!355105 mask!3266))))

(assert (=> b!796318 (= lt!355101 (seekEntryOrOpen!0 lt!355104 lt!355105 mask!3266))))

(assert (=> b!796318 (= lt!355104 (select (store (arr!20708 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796318 (= lt!355105 (array!43264 (store (arr!20708 a!3170) i!1163 k!2044) (size!21129 a!3170)))))

(declare-fun b!796319 () Bool)

(declare-fun res!541010 () Bool)

(assert (=> b!796319 (=> (not res!541010) (not e!441887))))

(declare-fun arrayContainsKey!0 (array!43263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796319 (= res!541010 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!541002 () Bool)

(assert (=> start!68522 (=> (not res!541002) (not e!441887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68522 (= res!541002 (validMask!0 mask!3266))))

(assert (=> start!68522 e!441887))

(assert (=> start!68522 true))

(declare-fun array_inv!16482 (array!43263) Bool)

(assert (=> start!68522 (array_inv!16482 a!3170)))

(declare-fun b!796320 () Bool)

(declare-fun res!541008 () Bool)

(assert (=> b!796320 (=> (not res!541008) (not e!441889))))

(declare-datatypes ((List!14724 0))(
  ( (Nil!14721) (Cons!14720 (h!15849 (_ BitVec 64)) (t!21047 List!14724)) )
))
(declare-fun arrayNoDuplicates!0 (array!43263 (_ BitVec 32) List!14724) Bool)

(assert (=> b!796320 (= res!541008 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14721))))

(declare-fun b!796321 () Bool)

(declare-fun res!541012 () Bool)

(assert (=> b!796321 (=> (not res!541012) (not e!441887))))

(assert (=> b!796321 (= res!541012 (validKeyInArray!0 k!2044))))

(declare-fun b!796322 () Bool)

(declare-fun e!441885 () Bool)

(assert (=> b!796322 (= e!441888 e!441885)))

(declare-fun res!541003 () Bool)

(assert (=> b!796322 (=> (not res!541003) (not e!441885))))

(declare-fun lt!355103 () SeekEntryResult!8306)

(declare-fun lt!355099 () SeekEntryResult!8306)

(assert (=> b!796322 (= res!541003 (and (= lt!355099 lt!355103) (= lt!355103 (Found!8306 j!153)) (= (select (arr!20708 a!3170) index!1236) (select (arr!20708 a!3170) j!153))))))

(assert (=> b!796322 (= lt!355103 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20708 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!796322 (= lt!355099 (seekEntryOrOpen!0 (select (arr!20708 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796323 () Bool)

(assert (=> b!796323 (= e!441885 (not true))))

(assert (=> b!796323 (= lt!355100 (Found!8306 index!1236))))

(assert (= (and start!68522 res!541002) b!796314))

(assert (= (and b!796314 res!541007) b!796313))

(assert (= (and b!796313 res!541011) b!796321))

(assert (= (and b!796321 res!541012) b!796319))

(assert (= (and b!796319 res!541010) b!796317))

(assert (= (and b!796317 res!541004) b!796315))

(assert (= (and b!796315 res!541009) b!796320))

(assert (= (and b!796320 res!541008) b!796316))

(assert (= (and b!796316 res!541005) b!796318))

(assert (= (and b!796318 res!541006) b!796322))

(assert (= (and b!796322 res!541003) b!796323))

(declare-fun m!737197 () Bool)

(assert (=> b!796319 m!737197))

(declare-fun m!737199 () Bool)

(assert (=> b!796316 m!737199))

(declare-fun m!737201 () Bool)

(assert (=> b!796316 m!737201))

(declare-fun m!737203 () Bool)

(assert (=> b!796318 m!737203))

(declare-fun m!737205 () Bool)

(assert (=> b!796318 m!737205))

(declare-fun m!737207 () Bool)

(assert (=> b!796318 m!737207))

(declare-fun m!737209 () Bool)

(assert (=> b!796318 m!737209))

(declare-fun m!737211 () Bool)

(assert (=> b!796313 m!737211))

(assert (=> b!796313 m!737211))

(declare-fun m!737213 () Bool)

(assert (=> b!796313 m!737213))

(declare-fun m!737215 () Bool)

(assert (=> b!796320 m!737215))

(declare-fun m!737217 () Bool)

(assert (=> b!796321 m!737217))

(declare-fun m!737219 () Bool)

(assert (=> b!796322 m!737219))

(assert (=> b!796322 m!737211))

(assert (=> b!796322 m!737211))

(declare-fun m!737221 () Bool)

(assert (=> b!796322 m!737221))

(assert (=> b!796322 m!737211))

(declare-fun m!737223 () Bool)

(assert (=> b!796322 m!737223))

(declare-fun m!737225 () Bool)

(assert (=> b!796315 m!737225))

(declare-fun m!737227 () Bool)

(assert (=> b!796317 m!737227))

(declare-fun m!737229 () Bool)

(assert (=> start!68522 m!737229))

(declare-fun m!737231 () Bool)

(assert (=> start!68522 m!737231))

(push 1)

