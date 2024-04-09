; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68860 () Bool)

(assert start!68860)

(declare-fun res!547083 () Bool)

(declare-fun e!444704 () Bool)

(assert (=> start!68860 (=> (not res!547083) (not e!444704))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68860 (= res!547083 (validMask!0 mask!3266))))

(assert (=> start!68860 e!444704))

(assert (=> start!68860 true))

(declare-datatypes ((array!43601 0))(
  ( (array!43602 (arr!20877 (Array (_ BitVec 32) (_ BitVec 64))) (size!21298 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43601)

(declare-fun array_inv!16651 (array!43601) Bool)

(assert (=> start!68860 (array_inv!16651 a!3170)))

(declare-fun b!802387 () Bool)

(declare-fun res!547080 () Bool)

(assert (=> b!802387 (=> (not res!547080) (not e!444704))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802387 (= res!547080 (validKeyInArray!0 k!2044))))

(declare-fun b!802388 () Bool)

(declare-fun res!547081 () Bool)

(declare-fun e!444705 () Bool)

(assert (=> b!802388 (=> (not res!547081) (not e!444705))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802388 (= res!547081 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21298 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20877 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21298 a!3170)) (= (select (arr!20877 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802389 () Bool)

(declare-fun res!547078 () Bool)

(assert (=> b!802389 (=> (not res!547078) (not e!444705))))

(declare-datatypes ((List!14893 0))(
  ( (Nil!14890) (Cons!14889 (h!16018 (_ BitVec 64)) (t!21216 List!14893)) )
))
(declare-fun arrayNoDuplicates!0 (array!43601 (_ BitVec 32) List!14893) Bool)

(assert (=> b!802389 (= res!547078 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14890))))

(declare-fun b!802390 () Bool)

(declare-fun res!547087 () Bool)

(assert (=> b!802390 (=> (not res!547087) (not e!444704))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!802390 (= res!547087 (validKeyInArray!0 (select (arr!20877 a!3170) j!153)))))

(declare-fun b!802391 () Bool)

(declare-fun e!444706 () Bool)

(assert (=> b!802391 (= e!444705 e!444706)))

(declare-fun res!547084 () Bool)

(assert (=> b!802391 (=> (not res!547084) (not e!444706))))

(declare-datatypes ((SeekEntryResult!8475 0))(
  ( (MissingZero!8475 (index!36267 (_ BitVec 32))) (Found!8475 (index!36268 (_ BitVec 32))) (Intermediate!8475 (undefined!9287 Bool) (index!36269 (_ BitVec 32)) (x!67146 (_ BitVec 32))) (Undefined!8475) (MissingVacant!8475 (index!36270 (_ BitVec 32))) )
))
(declare-fun lt!358872 () SeekEntryResult!8475)

(declare-fun lt!358874 () SeekEntryResult!8475)

(assert (=> b!802391 (= res!547084 (= lt!358872 lt!358874))))

(declare-fun lt!358875 () array!43601)

(declare-fun lt!358871 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43601 (_ BitVec 32)) SeekEntryResult!8475)

(assert (=> b!802391 (= lt!358874 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358871 lt!358875 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43601 (_ BitVec 32)) SeekEntryResult!8475)

(assert (=> b!802391 (= lt!358872 (seekEntryOrOpen!0 lt!358871 lt!358875 mask!3266))))

(assert (=> b!802391 (= lt!358871 (select (store (arr!20877 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802391 (= lt!358875 (array!43602 (store (arr!20877 a!3170) i!1163 k!2044) (size!21298 a!3170)))))

(declare-fun b!802392 () Bool)

(declare-fun res!547076 () Bool)

(assert (=> b!802392 (=> (not res!547076) (not e!444704))))

(assert (=> b!802392 (= res!547076 (and (= (size!21298 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21298 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21298 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802393 () Bool)

(declare-fun e!444701 () Bool)

(assert (=> b!802393 (= e!444706 e!444701)))

(declare-fun res!547077 () Bool)

(assert (=> b!802393 (=> (not res!547077) (not e!444701))))

(declare-fun lt!358870 () SeekEntryResult!8475)

(declare-fun lt!358878 () SeekEntryResult!8475)

(assert (=> b!802393 (= res!547077 (= lt!358870 lt!358878))))

(assert (=> b!802393 (= lt!358878 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20877 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802393 (= lt!358870 (seekEntryOrOpen!0 (select (arr!20877 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802394 () Bool)

(assert (=> b!802394 (= e!444704 e!444705)))

(declare-fun res!547082 () Bool)

(assert (=> b!802394 (=> (not res!547082) (not e!444705))))

(declare-fun lt!358876 () SeekEntryResult!8475)

(assert (=> b!802394 (= res!547082 (or (= lt!358876 (MissingZero!8475 i!1163)) (= lt!358876 (MissingVacant!8475 i!1163))))))

(assert (=> b!802394 (= lt!358876 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802395 () Bool)

(declare-fun e!444702 () Bool)

(assert (=> b!802395 (= e!444701 e!444702)))

(declare-fun res!547079 () Bool)

(assert (=> b!802395 (=> (not res!547079) (not e!444702))))

(declare-fun lt!358879 () SeekEntryResult!8475)

(assert (=> b!802395 (= res!547079 (and (= lt!358878 lt!358879) (not (= (select (arr!20877 a!3170) index!1236) (select (arr!20877 a!3170) j!153)))))))

(assert (=> b!802395 (= lt!358879 (Found!8475 j!153))))

(declare-fun b!802396 () Bool)

(declare-fun res!547086 () Bool)

(assert (=> b!802396 (=> (not res!547086) (not e!444704))))

(declare-fun arrayContainsKey!0 (array!43601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802396 (= res!547086 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802397 () Bool)

(declare-fun res!547085 () Bool)

(assert (=> b!802397 (=> (not res!547085) (not e!444705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43601 (_ BitVec 32)) Bool)

(assert (=> b!802397 (= res!547085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802398 () Bool)

(assert (=> b!802398 (= e!444702 (not (or (not (= lt!358874 lt!358879)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(declare-fun lt!358873 () (_ BitVec 32))

(assert (=> b!802398 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358873 vacantAfter!23 lt!358871 lt!358875 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358873 vacantBefore!23 (select (arr!20877 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27492 0))(
  ( (Unit!27493) )
))
(declare-fun lt!358877 () Unit!27492)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43601 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27492)

(assert (=> b!802398 (= lt!358877 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358873 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802398 (= lt!358873 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68860 res!547083) b!802392))

(assert (= (and b!802392 res!547076) b!802390))

(assert (= (and b!802390 res!547087) b!802387))

(assert (= (and b!802387 res!547080) b!802396))

(assert (= (and b!802396 res!547086) b!802394))

(assert (= (and b!802394 res!547082) b!802397))

(assert (= (and b!802397 res!547085) b!802389))

(assert (= (and b!802389 res!547078) b!802388))

(assert (= (and b!802388 res!547081) b!802391))

(assert (= (and b!802391 res!547084) b!802393))

(assert (= (and b!802393 res!547077) b!802395))

(assert (= (and b!802395 res!547079) b!802398))

(declare-fun m!743971 () Bool)

(assert (=> b!802388 m!743971))

(declare-fun m!743973 () Bool)

(assert (=> b!802388 m!743973))

(declare-fun m!743975 () Bool)

(assert (=> b!802396 m!743975))

(declare-fun m!743977 () Bool)

(assert (=> b!802389 m!743977))

(declare-fun m!743979 () Bool)

(assert (=> b!802390 m!743979))

(assert (=> b!802390 m!743979))

(declare-fun m!743981 () Bool)

(assert (=> b!802390 m!743981))

(assert (=> b!802393 m!743979))

(assert (=> b!802393 m!743979))

(declare-fun m!743983 () Bool)

(assert (=> b!802393 m!743983))

(assert (=> b!802393 m!743979))

(declare-fun m!743985 () Bool)

(assert (=> b!802393 m!743985))

(declare-fun m!743987 () Bool)

(assert (=> b!802387 m!743987))

(declare-fun m!743989 () Bool)

(assert (=> b!802394 m!743989))

(declare-fun m!743991 () Bool)

(assert (=> b!802395 m!743991))

(assert (=> b!802395 m!743979))

(declare-fun m!743993 () Bool)

(assert (=> b!802391 m!743993))

(declare-fun m!743995 () Bool)

(assert (=> b!802391 m!743995))

(declare-fun m!743997 () Bool)

(assert (=> b!802391 m!743997))

(declare-fun m!743999 () Bool)

(assert (=> b!802391 m!743999))

(assert (=> b!802398 m!743979))

(declare-fun m!744001 () Bool)

(assert (=> b!802398 m!744001))

(declare-fun m!744003 () Bool)

(assert (=> b!802398 m!744003))

(assert (=> b!802398 m!743979))

(declare-fun m!744005 () Bool)

(assert (=> b!802398 m!744005))

(declare-fun m!744007 () Bool)

(assert (=> b!802398 m!744007))

(declare-fun m!744009 () Bool)

(assert (=> start!68860 m!744009))

(declare-fun m!744011 () Bool)

(assert (=> start!68860 m!744011))

(declare-fun m!744013 () Bool)

(assert (=> b!802397 m!744013))

(push 1)

