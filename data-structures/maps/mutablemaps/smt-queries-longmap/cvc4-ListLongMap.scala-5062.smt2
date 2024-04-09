; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68906 () Bool)

(assert start!68906)

(declare-fun b!803198 () Bool)

(declare-fun res!547892 () Bool)

(declare-fun e!445098 () Bool)

(assert (=> b!803198 (=> (not res!547892) (not e!445098))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803198 (= res!547892 (validKeyInArray!0 k!2044))))

(declare-fun res!547887 () Bool)

(assert (=> start!68906 (=> (not res!547887) (not e!445098))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68906 (= res!547887 (validMask!0 mask!3266))))

(assert (=> start!68906 e!445098))

(assert (=> start!68906 true))

(declare-datatypes ((array!43647 0))(
  ( (array!43648 (arr!20900 (Array (_ BitVec 32) (_ BitVec 64))) (size!21321 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43647)

(declare-fun array_inv!16674 (array!43647) Bool)

(assert (=> start!68906 (array_inv!16674 a!3170)))

(declare-fun b!803199 () Bool)

(declare-fun res!547890 () Bool)

(declare-fun e!445099 () Bool)

(assert (=> b!803199 (=> (not res!547890) (not e!445099))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803199 (= res!547890 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21321 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20900 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21321 a!3170)) (= (select (arr!20900 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803200 () Bool)

(declare-fun res!547895 () Bool)

(assert (=> b!803200 (=> (not res!547895) (not e!445098))))

(declare-fun arrayContainsKey!0 (array!43647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803200 (= res!547895 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803201 () Bool)

(assert (=> b!803201 (= e!445098 e!445099)))

(declare-fun res!547891 () Bool)

(assert (=> b!803201 (=> (not res!547891) (not e!445099))))

(declare-datatypes ((SeekEntryResult!8498 0))(
  ( (MissingZero!8498 (index!36359 (_ BitVec 32))) (Found!8498 (index!36360 (_ BitVec 32))) (Intermediate!8498 (undefined!9310 Bool) (index!36361 (_ BitVec 32)) (x!67225 (_ BitVec 32))) (Undefined!8498) (MissingVacant!8498 (index!36362 (_ BitVec 32))) )
))
(declare-fun lt!359486 () SeekEntryResult!8498)

(assert (=> b!803201 (= res!547891 (or (= lt!359486 (MissingZero!8498 i!1163)) (= lt!359486 (MissingVacant!8498 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43647 (_ BitVec 32)) SeekEntryResult!8498)

(assert (=> b!803201 (= lt!359486 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803202 () Bool)

(declare-fun res!547896 () Bool)

(assert (=> b!803202 (=> (not res!547896) (not e!445098))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!803202 (= res!547896 (and (= (size!21321 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21321 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21321 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803203 () Bool)

(declare-fun e!445102 () Bool)

(assert (=> b!803203 (= e!445099 e!445102)))

(declare-fun res!547897 () Bool)

(assert (=> b!803203 (=> (not res!547897) (not e!445102))))

(declare-fun lt!359485 () array!43647)

(declare-fun lt!359487 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43647 (_ BitVec 32)) SeekEntryResult!8498)

(assert (=> b!803203 (= res!547897 (= (seekEntryOrOpen!0 lt!359487 lt!359485 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359487 lt!359485 mask!3266)))))

(assert (=> b!803203 (= lt!359487 (select (store (arr!20900 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803203 (= lt!359485 (array!43648 (store (arr!20900 a!3170) i!1163 k!2044) (size!21321 a!3170)))))

(declare-fun b!803204 () Bool)

(declare-fun res!547893 () Bool)

(assert (=> b!803204 (=> (not res!547893) (not e!445098))))

(assert (=> b!803204 (= res!547893 (validKeyInArray!0 (select (arr!20900 a!3170) j!153)))))

(declare-fun b!803205 () Bool)

(declare-fun res!547888 () Bool)

(assert (=> b!803205 (=> (not res!547888) (not e!445099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43647 (_ BitVec 32)) Bool)

(assert (=> b!803205 (= res!547888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803206 () Bool)

(declare-fun e!445101 () Bool)

(assert (=> b!803206 (= e!445102 e!445101)))

(declare-fun res!547894 () Bool)

(assert (=> b!803206 (=> (not res!547894) (not e!445101))))

(declare-fun lt!359482 () SeekEntryResult!8498)

(declare-fun lt!359488 () SeekEntryResult!8498)

(assert (=> b!803206 (= res!547894 (and (= lt!359482 lt!359488) (= lt!359488 (Found!8498 j!153)) (not (= (select (arr!20900 a!3170) index!1236) (select (arr!20900 a!3170) j!153)))))))

(assert (=> b!803206 (= lt!359488 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20900 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803206 (= lt!359482 (seekEntryOrOpen!0 (select (arr!20900 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803207 () Bool)

(assert (=> b!803207 (= e!445101 (not true))))

(declare-fun lt!359483 () (_ BitVec 32))

(assert (=> b!803207 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359483 vacantAfter!23 lt!359487 lt!359485 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359483 vacantBefore!23 (select (arr!20900 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27538 0))(
  ( (Unit!27539) )
))
(declare-fun lt!359484 () Unit!27538)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43647 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27538)

(assert (=> b!803207 (= lt!359484 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359483 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803207 (= lt!359483 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803208 () Bool)

(declare-fun res!547889 () Bool)

(assert (=> b!803208 (=> (not res!547889) (not e!445099))))

(declare-datatypes ((List!14916 0))(
  ( (Nil!14913) (Cons!14912 (h!16041 (_ BitVec 64)) (t!21239 List!14916)) )
))
(declare-fun arrayNoDuplicates!0 (array!43647 (_ BitVec 32) List!14916) Bool)

(assert (=> b!803208 (= res!547889 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14913))))

(assert (= (and start!68906 res!547887) b!803202))

(assert (= (and b!803202 res!547896) b!803204))

(assert (= (and b!803204 res!547893) b!803198))

(assert (= (and b!803198 res!547892) b!803200))

(assert (= (and b!803200 res!547895) b!803201))

(assert (= (and b!803201 res!547891) b!803205))

(assert (= (and b!803205 res!547888) b!803208))

(assert (= (and b!803208 res!547889) b!803199))

(assert (= (and b!803199 res!547890) b!803203))

(assert (= (and b!803203 res!547897) b!803206))

(assert (= (and b!803206 res!547894) b!803207))

(declare-fun m!745001 () Bool)

(assert (=> start!68906 m!745001))

(declare-fun m!745003 () Bool)

(assert (=> start!68906 m!745003))

(declare-fun m!745005 () Bool)

(assert (=> b!803198 m!745005))

(declare-fun m!745007 () Bool)

(assert (=> b!803203 m!745007))

(declare-fun m!745009 () Bool)

(assert (=> b!803203 m!745009))

(declare-fun m!745011 () Bool)

(assert (=> b!803203 m!745011))

(declare-fun m!745013 () Bool)

(assert (=> b!803203 m!745013))

(declare-fun m!745015 () Bool)

(assert (=> b!803204 m!745015))

(assert (=> b!803204 m!745015))

(declare-fun m!745017 () Bool)

(assert (=> b!803204 m!745017))

(declare-fun m!745019 () Bool)

(assert (=> b!803199 m!745019))

(declare-fun m!745021 () Bool)

(assert (=> b!803199 m!745021))

(assert (=> b!803207 m!745015))

(declare-fun m!745023 () Bool)

(assert (=> b!803207 m!745023))

(declare-fun m!745025 () Bool)

(assert (=> b!803207 m!745025))

(declare-fun m!745027 () Bool)

(assert (=> b!803207 m!745027))

(assert (=> b!803207 m!745015))

(declare-fun m!745029 () Bool)

(assert (=> b!803207 m!745029))

(declare-fun m!745031 () Bool)

(assert (=> b!803201 m!745031))

(declare-fun m!745033 () Bool)

(assert (=> b!803200 m!745033))

(declare-fun m!745035 () Bool)

(assert (=> b!803205 m!745035))

(declare-fun m!745037 () Bool)

(assert (=> b!803206 m!745037))

(assert (=> b!803206 m!745015))

(assert (=> b!803206 m!745015))

(declare-fun m!745039 () Bool)

(assert (=> b!803206 m!745039))

(assert (=> b!803206 m!745015))

(declare-fun m!745041 () Bool)

(assert (=> b!803206 m!745041))

(declare-fun m!745043 () Bool)

(assert (=> b!803208 m!745043))

(push 1)

