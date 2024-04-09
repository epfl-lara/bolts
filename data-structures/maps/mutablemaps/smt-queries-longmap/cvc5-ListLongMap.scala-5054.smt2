; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68854 () Bool)

(assert start!68854)

(declare-fun b!802286 () Bool)

(declare-fun res!546983 () Bool)

(declare-fun e!444656 () Bool)

(assert (=> b!802286 (=> (not res!546983) (not e!444656))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43595 0))(
  ( (array!43596 (arr!20874 (Array (_ BitVec 32) (_ BitVec 64))) (size!21295 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43595)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!802286 (= res!546983 (and (= (size!21295 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21295 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21295 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802287 () Bool)

(declare-fun res!546979 () Bool)

(declare-fun e!444657 () Bool)

(assert (=> b!802287 (=> (not res!546979) (not e!444657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43595 (_ BitVec 32)) Bool)

(assert (=> b!802287 (= res!546979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802288 () Bool)

(declare-fun e!444658 () Bool)

(assert (=> b!802288 (= e!444658 (not true))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!358802 () array!43595)

(declare-fun lt!358805 () (_ BitVec 64))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!358803 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8472 0))(
  ( (MissingZero!8472 (index!36255 (_ BitVec 32))) (Found!8472 (index!36256 (_ BitVec 32))) (Intermediate!8472 (undefined!9284 Bool) (index!36257 (_ BitVec 32)) (x!67135 (_ BitVec 32))) (Undefined!8472) (MissingVacant!8472 (index!36258 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43595 (_ BitVec 32)) SeekEntryResult!8472)

(assert (=> b!802288 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358803 vacantAfter!23 lt!358805 lt!358802 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358803 vacantBefore!23 (select (arr!20874 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27486 0))(
  ( (Unit!27487) )
))
(declare-fun lt!358804 () Unit!27486)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43595 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27486)

(assert (=> b!802288 (= lt!358804 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358803 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802288 (= lt!358803 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802289 () Bool)

(declare-fun res!546982 () Bool)

(assert (=> b!802289 (=> (not res!546982) (not e!444656))))

(declare-fun arrayContainsKey!0 (array!43595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802289 (= res!546982 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802290 () Bool)

(declare-fun res!546975 () Bool)

(assert (=> b!802290 (=> (not res!546975) (not e!444656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802290 (= res!546975 (validKeyInArray!0 k!2044))))

(declare-fun b!802291 () Bool)

(declare-fun res!546984 () Bool)

(assert (=> b!802291 (=> (not res!546984) (not e!444657))))

(declare-datatypes ((List!14890 0))(
  ( (Nil!14887) (Cons!14886 (h!16015 (_ BitVec 64)) (t!21213 List!14890)) )
))
(declare-fun arrayNoDuplicates!0 (array!43595 (_ BitVec 32) List!14890) Bool)

(assert (=> b!802291 (= res!546984 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14887))))

(declare-fun b!802292 () Bool)

(assert (=> b!802292 (= e!444656 e!444657)))

(declare-fun res!546985 () Bool)

(assert (=> b!802292 (=> (not res!546985) (not e!444657))))

(declare-fun lt!358801 () SeekEntryResult!8472)

(assert (=> b!802292 (= res!546985 (or (= lt!358801 (MissingZero!8472 i!1163)) (= lt!358801 (MissingVacant!8472 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43595 (_ BitVec 32)) SeekEntryResult!8472)

(assert (=> b!802292 (= lt!358801 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802293 () Bool)

(declare-fun e!444654 () Bool)

(assert (=> b!802293 (= e!444657 e!444654)))

(declare-fun res!546980 () Bool)

(assert (=> b!802293 (=> (not res!546980) (not e!444654))))

(assert (=> b!802293 (= res!546980 (= (seekEntryOrOpen!0 lt!358805 lt!358802 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358805 lt!358802 mask!3266)))))

(assert (=> b!802293 (= lt!358805 (select (store (arr!20874 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802293 (= lt!358802 (array!43596 (store (arr!20874 a!3170) i!1163 k!2044) (size!21295 a!3170)))))

(declare-fun res!546981 () Bool)

(assert (=> start!68854 (=> (not res!546981) (not e!444656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68854 (= res!546981 (validMask!0 mask!3266))))

(assert (=> start!68854 e!444656))

(assert (=> start!68854 true))

(declare-fun array_inv!16648 (array!43595) Bool)

(assert (=> start!68854 (array_inv!16648 a!3170)))

(declare-fun b!802294 () Bool)

(declare-fun res!546978 () Bool)

(assert (=> b!802294 (=> (not res!546978) (not e!444657))))

(assert (=> b!802294 (= res!546978 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21295 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20874 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21295 a!3170)) (= (select (arr!20874 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802295 () Bool)

(declare-fun res!546977 () Bool)

(assert (=> b!802295 (=> (not res!546977) (not e!444656))))

(assert (=> b!802295 (= res!546977 (validKeyInArray!0 (select (arr!20874 a!3170) j!153)))))

(declare-fun b!802296 () Bool)

(assert (=> b!802296 (= e!444654 e!444658)))

(declare-fun res!546976 () Bool)

(assert (=> b!802296 (=> (not res!546976) (not e!444658))))

(declare-fun lt!358806 () SeekEntryResult!8472)

(declare-fun lt!358807 () SeekEntryResult!8472)

(assert (=> b!802296 (= res!546976 (and (= lt!358806 lt!358807) (= lt!358807 (Found!8472 j!153)) (not (= (select (arr!20874 a!3170) index!1236) (select (arr!20874 a!3170) j!153)))))))

(assert (=> b!802296 (= lt!358807 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20874 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802296 (= lt!358806 (seekEntryOrOpen!0 (select (arr!20874 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68854 res!546981) b!802286))

(assert (= (and b!802286 res!546983) b!802295))

(assert (= (and b!802295 res!546977) b!802290))

(assert (= (and b!802290 res!546975) b!802289))

(assert (= (and b!802289 res!546982) b!802292))

(assert (= (and b!802292 res!546985) b!802287))

(assert (= (and b!802287 res!546979) b!802291))

(assert (= (and b!802291 res!546984) b!802294))

(assert (= (and b!802294 res!546978) b!802293))

(assert (= (and b!802293 res!546980) b!802296))

(assert (= (and b!802296 res!546976) b!802288))

(declare-fun m!743839 () Bool)

(assert (=> b!802293 m!743839))

(declare-fun m!743841 () Bool)

(assert (=> b!802293 m!743841))

(declare-fun m!743843 () Bool)

(assert (=> b!802293 m!743843))

(declare-fun m!743845 () Bool)

(assert (=> b!802293 m!743845))

(declare-fun m!743847 () Bool)

(assert (=> b!802291 m!743847))

(declare-fun m!743849 () Bool)

(assert (=> b!802290 m!743849))

(declare-fun m!743851 () Bool)

(assert (=> b!802296 m!743851))

(declare-fun m!743853 () Bool)

(assert (=> b!802296 m!743853))

(assert (=> b!802296 m!743853))

(declare-fun m!743855 () Bool)

(assert (=> b!802296 m!743855))

(assert (=> b!802296 m!743853))

(declare-fun m!743857 () Bool)

(assert (=> b!802296 m!743857))

(assert (=> b!802288 m!743853))

(assert (=> b!802288 m!743853))

(declare-fun m!743859 () Bool)

(assert (=> b!802288 m!743859))

(declare-fun m!743861 () Bool)

(assert (=> b!802288 m!743861))

(declare-fun m!743863 () Bool)

(assert (=> b!802288 m!743863))

(declare-fun m!743865 () Bool)

(assert (=> b!802288 m!743865))

(declare-fun m!743867 () Bool)

(assert (=> b!802292 m!743867))

(declare-fun m!743869 () Bool)

(assert (=> b!802289 m!743869))

(declare-fun m!743871 () Bool)

(assert (=> start!68854 m!743871))

(declare-fun m!743873 () Bool)

(assert (=> start!68854 m!743873))

(declare-fun m!743875 () Bool)

(assert (=> b!802294 m!743875))

(declare-fun m!743877 () Bool)

(assert (=> b!802294 m!743877))

(declare-fun m!743879 () Bool)

(assert (=> b!802287 m!743879))

(assert (=> b!802295 m!743853))

(assert (=> b!802295 m!743853))

(declare-fun m!743881 () Bool)

(assert (=> b!802295 m!743881))

(push 1)

