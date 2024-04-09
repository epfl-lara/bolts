; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69680 () Bool)

(assert start!69680)

(declare-fun b!811506 () Bool)

(declare-fun res!554722 () Bool)

(declare-fun e!449161 () Bool)

(assert (=> b!811506 (=> (not res!554722) (not e!449161))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!44070 0))(
  ( (array!44071 (arr!21101 (Array (_ BitVec 32) (_ BitVec 64))) (size!21522 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44070)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!811506 (= res!554722 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21522 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21101 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21522 a!3170)) (= (select (arr!21101 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811507 () Bool)

(declare-fun res!554724 () Bool)

(declare-fun e!449160 () Bool)

(assert (=> b!811507 (=> (not res!554724) (not e!449160))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!44070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811507 (= res!554724 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811508 () Bool)

(declare-fun e!449157 () Bool)

(declare-fun e!449159 () Bool)

(assert (=> b!811508 (= e!449157 e!449159)))

(declare-fun res!554719 () Bool)

(assert (=> b!811508 (=> (not res!554719) (not e!449159))))

(declare-fun j!153 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8699 0))(
  ( (MissingZero!8699 (index!37166 (_ BitVec 32))) (Found!8699 (index!37167 (_ BitVec 32))) (Intermediate!8699 (undefined!9511 Bool) (index!37168 (_ BitVec 32)) (x!68001 (_ BitVec 32))) (Undefined!8699) (MissingVacant!8699 (index!37169 (_ BitVec 32))) )
))
(declare-fun lt!363903 () SeekEntryResult!8699)

(declare-fun lt!363906 () SeekEntryResult!8699)

(assert (=> b!811508 (= res!554719 (and (= lt!363903 lt!363906) (= lt!363906 (Found!8699 j!153)) (not (= (select (arr!21101 a!3170) index!1236) (select (arr!21101 a!3170) j!153)))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44070 (_ BitVec 32)) SeekEntryResult!8699)

(assert (=> b!811508 (= lt!363906 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21101 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44070 (_ BitVec 32)) SeekEntryResult!8699)

(assert (=> b!811508 (= lt!363903 (seekEntryOrOpen!0 (select (arr!21101 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811509 () Bool)

(declare-fun res!554726 () Bool)

(assert (=> b!811509 (=> (not res!554726) (not e!449160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811509 (= res!554726 (validKeyInArray!0 k!2044))))

(declare-fun b!811510 () Bool)

(declare-fun res!554721 () Bool)

(assert (=> b!811510 (=> (not res!554721) (not e!449160))))

(assert (=> b!811510 (= res!554721 (and (= (size!21522 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21522 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21522 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811511 () Bool)

(assert (=> b!811511 (= e!449161 e!449157)))

(declare-fun res!554728 () Bool)

(assert (=> b!811511 (=> (not res!554728) (not e!449157))))

(declare-fun lt!363901 () (_ BitVec 64))

(declare-fun lt!363907 () array!44070)

(assert (=> b!811511 (= res!554728 (= (seekEntryOrOpen!0 lt!363901 lt!363907 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363901 lt!363907 mask!3266)))))

(assert (=> b!811511 (= lt!363901 (select (store (arr!21101 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!811511 (= lt!363907 (array!44071 (store (arr!21101 a!3170) i!1163 k!2044) (size!21522 a!3170)))))

(declare-fun b!811512 () Bool)

(declare-fun res!554725 () Bool)

(assert (=> b!811512 (=> (not res!554725) (not e!449161))))

(declare-datatypes ((List!15117 0))(
  ( (Nil!15114) (Cons!15113 (h!16242 (_ BitVec 64)) (t!21440 List!15117)) )
))
(declare-fun arrayNoDuplicates!0 (array!44070 (_ BitVec 32) List!15117) Bool)

(assert (=> b!811512 (= res!554725 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15114))))

(declare-fun res!554727 () Bool)

(assert (=> start!69680 (=> (not res!554727) (not e!449160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69680 (= res!554727 (validMask!0 mask!3266))))

(assert (=> start!69680 e!449160))

(assert (=> start!69680 true))

(declare-fun array_inv!16875 (array!44070) Bool)

(assert (=> start!69680 (array_inv!16875 a!3170)))

(declare-fun b!811505 () Bool)

(declare-fun res!554723 () Bool)

(assert (=> b!811505 (=> (not res!554723) (not e!449160))))

(assert (=> b!811505 (= res!554723 (validKeyInArray!0 (select (arr!21101 a!3170) j!153)))))

(declare-fun b!811513 () Bool)

(assert (=> b!811513 (= e!449159 (not true))))

(declare-fun lt!363904 () (_ BitVec 32))

(assert (=> b!811513 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363904 vacantAfter!23 lt!363901 lt!363907 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363904 vacantBefore!23 (select (arr!21101 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27660 0))(
  ( (Unit!27661) )
))
(declare-fun lt!363905 () Unit!27660)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44070 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27660)

(assert (=> b!811513 (= lt!363905 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363904 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811513 (= lt!363904 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811514 () Bool)

(declare-fun res!554720 () Bool)

(assert (=> b!811514 (=> (not res!554720) (not e!449161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44070 (_ BitVec 32)) Bool)

(assert (=> b!811514 (= res!554720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811515 () Bool)

(assert (=> b!811515 (= e!449160 e!449161)))

(declare-fun res!554718 () Bool)

(assert (=> b!811515 (=> (not res!554718) (not e!449161))))

(declare-fun lt!363902 () SeekEntryResult!8699)

(assert (=> b!811515 (= res!554718 (or (= lt!363902 (MissingZero!8699 i!1163)) (= lt!363902 (MissingVacant!8699 i!1163))))))

(assert (=> b!811515 (= lt!363902 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69680 res!554727) b!811510))

(assert (= (and b!811510 res!554721) b!811505))

(assert (= (and b!811505 res!554723) b!811509))

(assert (= (and b!811509 res!554726) b!811507))

(assert (= (and b!811507 res!554724) b!811515))

(assert (= (and b!811515 res!554718) b!811514))

(assert (= (and b!811514 res!554720) b!811512))

(assert (= (and b!811512 res!554725) b!811506))

(assert (= (and b!811506 res!554722) b!811511))

(assert (= (and b!811511 res!554728) b!811508))

(assert (= (and b!811508 res!554719) b!811513))

(declare-fun m!754025 () Bool)

(assert (=> b!811511 m!754025))

(declare-fun m!754027 () Bool)

(assert (=> b!811511 m!754027))

(declare-fun m!754029 () Bool)

(assert (=> b!811511 m!754029))

(declare-fun m!754031 () Bool)

(assert (=> b!811511 m!754031))

(declare-fun m!754033 () Bool)

(assert (=> b!811509 m!754033))

(declare-fun m!754035 () Bool)

(assert (=> b!811513 m!754035))

(assert (=> b!811513 m!754035))

(declare-fun m!754037 () Bool)

(assert (=> b!811513 m!754037))

(declare-fun m!754039 () Bool)

(assert (=> b!811513 m!754039))

(declare-fun m!754041 () Bool)

(assert (=> b!811513 m!754041))

(declare-fun m!754043 () Bool)

(assert (=> b!811513 m!754043))

(declare-fun m!754045 () Bool)

(assert (=> start!69680 m!754045))

(declare-fun m!754047 () Bool)

(assert (=> start!69680 m!754047))

(declare-fun m!754049 () Bool)

(assert (=> b!811506 m!754049))

(declare-fun m!754051 () Bool)

(assert (=> b!811506 m!754051))

(assert (=> b!811505 m!754035))

(assert (=> b!811505 m!754035))

(declare-fun m!754053 () Bool)

(assert (=> b!811505 m!754053))

(declare-fun m!754055 () Bool)

(assert (=> b!811507 m!754055))

(declare-fun m!754057 () Bool)

(assert (=> b!811512 m!754057))

(declare-fun m!754059 () Bool)

(assert (=> b!811514 m!754059))

(declare-fun m!754061 () Bool)

(assert (=> b!811508 m!754061))

(assert (=> b!811508 m!754035))

(assert (=> b!811508 m!754035))

(declare-fun m!754063 () Bool)

(assert (=> b!811508 m!754063))

(assert (=> b!811508 m!754035))

(declare-fun m!754065 () Bool)

(assert (=> b!811508 m!754065))

(declare-fun m!754067 () Bool)

(assert (=> b!811515 m!754067))

(push 1)

