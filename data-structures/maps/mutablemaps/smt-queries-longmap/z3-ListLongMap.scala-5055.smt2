; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68862 () Bool)

(assert start!68862)

(declare-fun b!802423 () Bool)

(declare-fun res!547118 () Bool)

(declare-fun e!444719 () Bool)

(assert (=> b!802423 (=> (not res!547118) (not e!444719))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43603 0))(
  ( (array!43604 (arr!20878 (Array (_ BitVec 32) (_ BitVec 64))) (size!21299 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43603)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!802423 (= res!547118 (and (= (size!21299 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21299 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21299 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802424 () Bool)

(declare-fun res!547123 () Bool)

(assert (=> b!802424 (=> (not res!547123) (not e!444719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802424 (= res!547123 (validKeyInArray!0 (select (arr!20878 a!3170) j!153)))))

(declare-fun b!802425 () Bool)

(declare-fun e!444724 () Bool)

(declare-fun e!444721 () Bool)

(assert (=> b!802425 (= e!444724 e!444721)))

(declare-fun res!547121 () Bool)

(assert (=> b!802425 (=> (not res!547121) (not e!444721))))

(declare-datatypes ((SeekEntryResult!8476 0))(
  ( (MissingZero!8476 (index!36271 (_ BitVec 32))) (Found!8476 (index!36272 (_ BitVec 32))) (Intermediate!8476 (undefined!9288 Bool) (index!36273 (_ BitVec 32)) (x!67147 (_ BitVec 32))) (Undefined!8476) (MissingVacant!8476 (index!36274 (_ BitVec 32))) )
))
(declare-fun lt!358901 () SeekEntryResult!8476)

(declare-fun lt!358907 () SeekEntryResult!8476)

(assert (=> b!802425 (= res!547121 (= lt!358901 lt!358907))))

(declare-fun lt!358906 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358905 () array!43603)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43603 (_ BitVec 32)) SeekEntryResult!8476)

(assert (=> b!802425 (= lt!358907 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358906 lt!358905 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43603 (_ BitVec 32)) SeekEntryResult!8476)

(assert (=> b!802425 (= lt!358901 (seekEntryOrOpen!0 lt!358906 lt!358905 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!802425 (= lt!358906 (select (store (arr!20878 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!802425 (= lt!358905 (array!43604 (store (arr!20878 a!3170) i!1163 k0!2044) (size!21299 a!3170)))))

(declare-fun b!802426 () Bool)

(declare-fun res!547116 () Bool)

(assert (=> b!802426 (=> (not res!547116) (not e!444724))))

(declare-datatypes ((List!14894 0))(
  ( (Nil!14891) (Cons!14890 (h!16019 (_ BitVec 64)) (t!21217 List!14894)) )
))
(declare-fun arrayNoDuplicates!0 (array!43603 (_ BitVec 32) List!14894) Bool)

(assert (=> b!802426 (= res!547116 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14891))))

(declare-fun b!802427 () Bool)

(declare-fun res!547112 () Bool)

(assert (=> b!802427 (=> (not res!547112) (not e!444719))))

(declare-fun arrayContainsKey!0 (array!43603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802427 (= res!547112 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802428 () Bool)

(assert (=> b!802428 (= e!444719 e!444724)))

(declare-fun res!547114 () Bool)

(assert (=> b!802428 (=> (not res!547114) (not e!444724))))

(declare-fun lt!358904 () SeekEntryResult!8476)

(assert (=> b!802428 (= res!547114 (or (= lt!358904 (MissingZero!8476 i!1163)) (= lt!358904 (MissingVacant!8476 i!1163))))))

(assert (=> b!802428 (= lt!358904 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!802429 () Bool)

(declare-fun res!547122 () Bool)

(assert (=> b!802429 (=> (not res!547122) (not e!444724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43603 (_ BitVec 32)) Bool)

(assert (=> b!802429 (= res!547122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!547113 () Bool)

(assert (=> start!68862 (=> (not res!547113) (not e!444719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68862 (= res!547113 (validMask!0 mask!3266))))

(assert (=> start!68862 e!444719))

(assert (=> start!68862 true))

(declare-fun array_inv!16652 (array!43603) Bool)

(assert (=> start!68862 (array_inv!16652 a!3170)))

(declare-fun b!802430 () Bool)

(declare-fun res!547117 () Bool)

(assert (=> b!802430 (=> (not res!547117) (not e!444719))))

(assert (=> b!802430 (= res!547117 (validKeyInArray!0 k0!2044))))

(declare-fun b!802431 () Bool)

(declare-fun e!444722 () Bool)

(declare-fun e!444723 () Bool)

(assert (=> b!802431 (= e!444722 e!444723)))

(declare-fun res!547120 () Bool)

(assert (=> b!802431 (=> (not res!547120) (not e!444723))))

(declare-fun lt!358900 () SeekEntryResult!8476)

(declare-fun lt!358903 () SeekEntryResult!8476)

(assert (=> b!802431 (= res!547120 (and (= lt!358903 lt!358900) (not (= (select (arr!20878 a!3170) index!1236) (select (arr!20878 a!3170) j!153)))))))

(assert (=> b!802431 (= lt!358900 (Found!8476 j!153))))

(declare-fun b!802432 () Bool)

(assert (=> b!802432 (= e!444721 e!444722)))

(declare-fun res!547115 () Bool)

(assert (=> b!802432 (=> (not res!547115) (not e!444722))))

(declare-fun lt!358902 () SeekEntryResult!8476)

(assert (=> b!802432 (= res!547115 (= lt!358902 lt!358903))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!802432 (= lt!358903 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20878 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802432 (= lt!358902 (seekEntryOrOpen!0 (select (arr!20878 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802433 () Bool)

(declare-fun res!547119 () Bool)

(assert (=> b!802433 (=> (not res!547119) (not e!444724))))

(assert (=> b!802433 (= res!547119 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21299 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20878 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21299 a!3170)) (= (select (arr!20878 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802434 () Bool)

(assert (=> b!802434 (= e!444723 (not (or (not (= lt!358907 lt!358900)) (bvsge mask!3266 #b00000000000000000000000000000000))))))

(declare-fun lt!358909 () (_ BitVec 32))

(assert (=> b!802434 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358909 vacantAfter!23 lt!358906 lt!358905 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358909 vacantBefore!23 (select (arr!20878 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27494 0))(
  ( (Unit!27495) )
))
(declare-fun lt!358908 () Unit!27494)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43603 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27494)

(assert (=> b!802434 (= lt!358908 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358909 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802434 (= lt!358909 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68862 res!547113) b!802423))

(assert (= (and b!802423 res!547118) b!802424))

(assert (= (and b!802424 res!547123) b!802430))

(assert (= (and b!802430 res!547117) b!802427))

(assert (= (and b!802427 res!547112) b!802428))

(assert (= (and b!802428 res!547114) b!802429))

(assert (= (and b!802429 res!547122) b!802426))

(assert (= (and b!802426 res!547116) b!802433))

(assert (= (and b!802433 res!547119) b!802425))

(assert (= (and b!802425 res!547121) b!802432))

(assert (= (and b!802432 res!547115) b!802431))

(assert (= (and b!802431 res!547120) b!802434))

(declare-fun m!744015 () Bool)

(assert (=> b!802430 m!744015))

(declare-fun m!744017 () Bool)

(assert (=> b!802428 m!744017))

(declare-fun m!744019 () Bool)

(assert (=> b!802433 m!744019))

(declare-fun m!744021 () Bool)

(assert (=> b!802433 m!744021))

(declare-fun m!744023 () Bool)

(assert (=> b!802432 m!744023))

(assert (=> b!802432 m!744023))

(declare-fun m!744025 () Bool)

(assert (=> b!802432 m!744025))

(assert (=> b!802432 m!744023))

(declare-fun m!744027 () Bool)

(assert (=> b!802432 m!744027))

(declare-fun m!744029 () Bool)

(assert (=> b!802426 m!744029))

(declare-fun m!744031 () Bool)

(assert (=> b!802434 m!744031))

(declare-fun m!744033 () Bool)

(assert (=> b!802434 m!744033))

(assert (=> b!802434 m!744023))

(declare-fun m!744035 () Bool)

(assert (=> b!802434 m!744035))

(declare-fun m!744037 () Bool)

(assert (=> b!802434 m!744037))

(assert (=> b!802434 m!744023))

(declare-fun m!744039 () Bool)

(assert (=> b!802425 m!744039))

(declare-fun m!744041 () Bool)

(assert (=> b!802425 m!744041))

(declare-fun m!744043 () Bool)

(assert (=> b!802425 m!744043))

(declare-fun m!744045 () Bool)

(assert (=> b!802425 m!744045))

(assert (=> b!802424 m!744023))

(assert (=> b!802424 m!744023))

(declare-fun m!744047 () Bool)

(assert (=> b!802424 m!744047))

(declare-fun m!744049 () Bool)

(assert (=> b!802431 m!744049))

(assert (=> b!802431 m!744023))

(declare-fun m!744051 () Bool)

(assert (=> b!802429 m!744051))

(declare-fun m!744053 () Bool)

(assert (=> b!802427 m!744053))

(declare-fun m!744055 () Bool)

(assert (=> start!68862 m!744055))

(declare-fun m!744057 () Bool)

(assert (=> start!68862 m!744057))

(check-sat (not b!802434) (not b!802432) (not b!802424) (not start!68862) (not b!802425) (not b!802428) (not b!802429) (not b!802426) (not b!802430) (not b!802427))
(check-sat)
