; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68908 () Bool)

(assert start!68908)

(declare-fun b!803233 () Bool)

(declare-fun e!445116 () Bool)

(declare-fun e!445119 () Bool)

(assert (=> b!803233 (= e!445116 e!445119)))

(declare-fun res!547931 () Bool)

(assert (=> b!803233 (=> (not res!547931) (not e!445119))))

(declare-datatypes ((SeekEntryResult!8499 0))(
  ( (MissingZero!8499 (index!36363 (_ BitVec 32))) (Found!8499 (index!36364 (_ BitVec 32))) (Intermediate!8499 (undefined!9311 Bool) (index!36365 (_ BitVec 32)) (x!67234 (_ BitVec 32))) (Undefined!8499) (MissingVacant!8499 (index!36366 (_ BitVec 32))) )
))
(declare-fun lt!359512 () SeekEntryResult!8499)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803233 (= res!547931 (or (= lt!359512 (MissingZero!8499 i!1163)) (= lt!359512 (MissingVacant!8499 i!1163))))))

(declare-datatypes ((array!43649 0))(
  ( (array!43650 (arr!20901 (Array (_ BitVec 32) (_ BitVec 64))) (size!21322 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43649)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43649 (_ BitVec 32)) SeekEntryResult!8499)

(assert (=> b!803233 (= lt!359512 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803234 () Bool)

(declare-fun res!547929 () Bool)

(assert (=> b!803234 (=> (not res!547929) (not e!445116))))

(declare-fun arrayContainsKey!0 (array!43649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803234 (= res!547929 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803235 () Bool)

(declare-fun e!445117 () Bool)

(declare-fun e!445115 () Bool)

(assert (=> b!803235 (= e!445117 e!445115)))

(declare-fun res!547924 () Bool)

(assert (=> b!803235 (=> (not res!547924) (not e!445115))))

(declare-fun lt!359509 () SeekEntryResult!8499)

(declare-fun lt!359513 () SeekEntryResult!8499)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803235 (= res!547924 (and (= lt!359509 lt!359513) (not (= (select (arr!20901 a!3170) index!1236) (select (arr!20901 a!3170) j!153)))))))

(assert (=> b!803235 (= lt!359513 (Found!8499 j!153))))

(declare-fun b!803236 () Bool)

(declare-fun res!547930 () Bool)

(assert (=> b!803236 (=> (not res!547930) (not e!445116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803236 (= res!547930 (validKeyInArray!0 (select (arr!20901 a!3170) j!153)))))

(declare-fun b!803237 () Bool)

(declare-fun res!547927 () Bool)

(assert (=> b!803237 (=> (not res!547927) (not e!445116))))

(assert (=> b!803237 (= res!547927 (validKeyInArray!0 k!2044))))

(declare-fun res!547933 () Bool)

(assert (=> start!68908 (=> (not res!547933) (not e!445116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68908 (= res!547933 (validMask!0 mask!3266))))

(assert (=> start!68908 e!445116))

(assert (=> start!68908 true))

(declare-fun array_inv!16675 (array!43649) Bool)

(assert (=> start!68908 (array_inv!16675 a!3170)))

(declare-fun b!803238 () Bool)

(declare-fun res!547922 () Bool)

(assert (=> b!803238 (=> (not res!547922) (not e!445119))))

(declare-datatypes ((List!14917 0))(
  ( (Nil!14914) (Cons!14913 (h!16042 (_ BitVec 64)) (t!21240 List!14917)) )
))
(declare-fun arrayNoDuplicates!0 (array!43649 (_ BitVec 32) List!14917) Bool)

(assert (=> b!803238 (= res!547922 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14914))))

(declare-fun b!803239 () Bool)

(declare-fun e!445118 () Bool)

(assert (=> b!803239 (= e!445119 e!445118)))

(declare-fun res!547928 () Bool)

(assert (=> b!803239 (=> (not res!547928) (not e!445118))))

(declare-fun lt!359510 () SeekEntryResult!8499)

(declare-fun lt!359516 () SeekEntryResult!8499)

(assert (=> b!803239 (= res!547928 (= lt!359510 lt!359516))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359518 () array!43649)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!359515 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43649 (_ BitVec 32)) SeekEntryResult!8499)

(assert (=> b!803239 (= lt!359516 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359515 lt!359518 mask!3266))))

(assert (=> b!803239 (= lt!359510 (seekEntryOrOpen!0 lt!359515 lt!359518 mask!3266))))

(assert (=> b!803239 (= lt!359515 (select (store (arr!20901 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803239 (= lt!359518 (array!43650 (store (arr!20901 a!3170) i!1163 k!2044) (size!21322 a!3170)))))

(declare-fun b!803240 () Bool)

(declare-fun res!547932 () Bool)

(assert (=> b!803240 (=> (not res!547932) (not e!445119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43649 (_ BitVec 32)) Bool)

(assert (=> b!803240 (= res!547932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803241 () Bool)

(assert (=> b!803241 (= e!445115 (not (or (not (= lt!359516 lt!359513)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(declare-fun lt!359514 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803241 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359514 vacantAfter!23 lt!359515 lt!359518 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359514 vacantBefore!23 (select (arr!20901 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27540 0))(
  ( (Unit!27541) )
))
(declare-fun lt!359511 () Unit!27540)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43649 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27540)

(assert (=> b!803241 (= lt!359511 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359514 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803241 (= lt!359514 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803242 () Bool)

(declare-fun res!547926 () Bool)

(assert (=> b!803242 (=> (not res!547926) (not e!445119))))

(assert (=> b!803242 (= res!547926 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21322 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20901 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21322 a!3170)) (= (select (arr!20901 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803243 () Bool)

(declare-fun res!547925 () Bool)

(assert (=> b!803243 (=> (not res!547925) (not e!445116))))

(assert (=> b!803243 (= res!547925 (and (= (size!21322 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21322 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21322 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803244 () Bool)

(assert (=> b!803244 (= e!445118 e!445117)))

(declare-fun res!547923 () Bool)

(assert (=> b!803244 (=> (not res!547923) (not e!445117))))

(declare-fun lt!359517 () SeekEntryResult!8499)

(assert (=> b!803244 (= res!547923 (= lt!359517 lt!359509))))

(assert (=> b!803244 (= lt!359509 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20901 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803244 (= lt!359517 (seekEntryOrOpen!0 (select (arr!20901 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68908 res!547933) b!803243))

(assert (= (and b!803243 res!547925) b!803236))

(assert (= (and b!803236 res!547930) b!803237))

(assert (= (and b!803237 res!547927) b!803234))

(assert (= (and b!803234 res!547929) b!803233))

(assert (= (and b!803233 res!547931) b!803240))

(assert (= (and b!803240 res!547932) b!803238))

(assert (= (and b!803238 res!547922) b!803242))

(assert (= (and b!803242 res!547926) b!803239))

(assert (= (and b!803239 res!547928) b!803244))

(assert (= (and b!803244 res!547923) b!803235))

(assert (= (and b!803235 res!547924) b!803241))

(declare-fun m!745045 () Bool)

(assert (=> b!803234 m!745045))

(declare-fun m!745047 () Bool)

(assert (=> b!803241 m!745047))

(declare-fun m!745049 () Bool)

(assert (=> b!803241 m!745049))

(declare-fun m!745051 () Bool)

(assert (=> b!803241 m!745051))

(assert (=> b!803241 m!745047))

(declare-fun m!745053 () Bool)

(assert (=> b!803241 m!745053))

(declare-fun m!745055 () Bool)

(assert (=> b!803241 m!745055))

(declare-fun m!745057 () Bool)

(assert (=> b!803242 m!745057))

(declare-fun m!745059 () Bool)

(assert (=> b!803242 m!745059))

(declare-fun m!745061 () Bool)

(assert (=> b!803238 m!745061))

(declare-fun m!745063 () Bool)

(assert (=> b!803235 m!745063))

(assert (=> b!803235 m!745047))

(assert (=> b!803244 m!745047))

(assert (=> b!803244 m!745047))

(declare-fun m!745065 () Bool)

(assert (=> b!803244 m!745065))

(assert (=> b!803244 m!745047))

(declare-fun m!745067 () Bool)

(assert (=> b!803244 m!745067))

(declare-fun m!745069 () Bool)

(assert (=> b!803240 m!745069))

(declare-fun m!745071 () Bool)

(assert (=> b!803239 m!745071))

(declare-fun m!745073 () Bool)

(assert (=> b!803239 m!745073))

(declare-fun m!745075 () Bool)

(assert (=> b!803239 m!745075))

(declare-fun m!745077 () Bool)

(assert (=> b!803239 m!745077))

(declare-fun m!745079 () Bool)

(assert (=> b!803237 m!745079))

(declare-fun m!745081 () Bool)

(assert (=> start!68908 m!745081))

(declare-fun m!745083 () Bool)

(assert (=> start!68908 m!745083))

(declare-fun m!745085 () Bool)

(assert (=> b!803233 m!745085))

(assert (=> b!803236 m!745047))

(assert (=> b!803236 m!745047))

(declare-fun m!745087 () Bool)

(assert (=> b!803236 m!745087))

(push 1)

