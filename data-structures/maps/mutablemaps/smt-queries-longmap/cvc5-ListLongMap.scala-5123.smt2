; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69580 () Bool)

(assert start!69580)

(declare-fun b!810530 () Bool)

(declare-fun e!448662 () Bool)

(declare-fun e!448659 () Bool)

(assert (=> b!810530 (= e!448662 e!448659)))

(declare-fun res!553980 () Bool)

(assert (=> b!810530 (=> (not res!553980) (not e!448659))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!363331 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!44027 0))(
  ( (array!44028 (arr!21081 (Array (_ BitVec 32) (_ BitVec 64))) (size!21502 (_ BitVec 32))) )
))
(declare-fun lt!363333 () array!44027)

(declare-datatypes ((SeekEntryResult!8679 0))(
  ( (MissingZero!8679 (index!37083 (_ BitVec 32))) (Found!8679 (index!37084 (_ BitVec 32))) (Intermediate!8679 (undefined!9491 Bool) (index!37085 (_ BitVec 32)) (x!67924 (_ BitVec 32))) (Undefined!8679) (MissingVacant!8679 (index!37086 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44027 (_ BitVec 32)) SeekEntryResult!8679)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44027 (_ BitVec 32)) SeekEntryResult!8679)

(assert (=> b!810530 (= res!553980 (= (seekEntryOrOpen!0 lt!363331 lt!363333 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363331 lt!363333 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!44027)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!810530 (= lt!363331 (select (store (arr!21081 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810530 (= lt!363333 (array!44028 (store (arr!21081 a!3170) i!1163 k!2044) (size!21502 a!3170)))))

(declare-fun b!810531 () Bool)

(declare-fun e!448660 () Bool)

(assert (=> b!810531 (= e!448660 (not true))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!363334 () (_ BitVec 32))

(assert (=> b!810531 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363334 vacantAfter!23 lt!363331 lt!363333 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363334 vacantBefore!23 (select (arr!21081 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27620 0))(
  ( (Unit!27621) )
))
(declare-fun lt!363329 () Unit!27620)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44027 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27620)

(assert (=> b!810531 (= lt!363329 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363334 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810531 (= lt!363334 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810532 () Bool)

(declare-fun res!553979 () Bool)

(assert (=> b!810532 (=> (not res!553979) (not e!448662))))

(assert (=> b!810532 (= res!553979 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21502 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21081 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21502 a!3170)) (= (select (arr!21081 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810533 () Bool)

(declare-fun res!553981 () Bool)

(assert (=> b!810533 (=> (not res!553981) (not e!448662))))

(declare-datatypes ((List!15097 0))(
  ( (Nil!15094) (Cons!15093 (h!16222 (_ BitVec 64)) (t!21420 List!15097)) )
))
(declare-fun arrayNoDuplicates!0 (array!44027 (_ BitVec 32) List!15097) Bool)

(assert (=> b!810533 (= res!553981 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15094))))

(declare-fun b!810534 () Bool)

(declare-fun res!553978 () Bool)

(declare-fun e!448661 () Bool)

(assert (=> b!810534 (=> (not res!553978) (not e!448661))))

(declare-fun arrayContainsKey!0 (array!44027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810534 (= res!553978 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810535 () Bool)

(assert (=> b!810535 (= e!448659 e!448660)))

(declare-fun res!553986 () Bool)

(assert (=> b!810535 (=> (not res!553986) (not e!448660))))

(declare-fun lt!363332 () SeekEntryResult!8679)

(declare-fun lt!363328 () SeekEntryResult!8679)

(assert (=> b!810535 (= res!553986 (and (= lt!363332 lt!363328) (= lt!363328 (Found!8679 j!153)) (not (= (select (arr!21081 a!3170) index!1236) (select (arr!21081 a!3170) j!153)))))))

(assert (=> b!810535 (= lt!363328 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21081 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810535 (= lt!363332 (seekEntryOrOpen!0 (select (arr!21081 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810536 () Bool)

(declare-fun res!553982 () Bool)

(assert (=> b!810536 (=> (not res!553982) (not e!448661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810536 (= res!553982 (validKeyInArray!0 k!2044))))

(declare-fun b!810537 () Bool)

(declare-fun res!553984 () Bool)

(assert (=> b!810537 (=> (not res!553984) (not e!448661))))

(assert (=> b!810537 (= res!553984 (validKeyInArray!0 (select (arr!21081 a!3170) j!153)))))

(declare-fun res!553977 () Bool)

(assert (=> start!69580 (=> (not res!553977) (not e!448661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69580 (= res!553977 (validMask!0 mask!3266))))

(assert (=> start!69580 e!448661))

(assert (=> start!69580 true))

(declare-fun array_inv!16855 (array!44027) Bool)

(assert (=> start!69580 (array_inv!16855 a!3170)))

(declare-fun b!810538 () Bool)

(declare-fun res!553983 () Bool)

(assert (=> b!810538 (=> (not res!553983) (not e!448661))))

(assert (=> b!810538 (= res!553983 (and (= (size!21502 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21502 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21502 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810539 () Bool)

(declare-fun res!553985 () Bool)

(assert (=> b!810539 (=> (not res!553985) (not e!448662))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44027 (_ BitVec 32)) Bool)

(assert (=> b!810539 (= res!553985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810540 () Bool)

(assert (=> b!810540 (= e!448661 e!448662)))

(declare-fun res!553987 () Bool)

(assert (=> b!810540 (=> (not res!553987) (not e!448662))))

(declare-fun lt!363330 () SeekEntryResult!8679)

(assert (=> b!810540 (= res!553987 (or (= lt!363330 (MissingZero!8679 i!1163)) (= lt!363330 (MissingVacant!8679 i!1163))))))

(assert (=> b!810540 (= lt!363330 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!69580 res!553977) b!810538))

(assert (= (and b!810538 res!553983) b!810537))

(assert (= (and b!810537 res!553984) b!810536))

(assert (= (and b!810536 res!553982) b!810534))

(assert (= (and b!810534 res!553978) b!810540))

(assert (= (and b!810540 res!553987) b!810539))

(assert (= (and b!810539 res!553985) b!810533))

(assert (= (and b!810533 res!553981) b!810532))

(assert (= (and b!810532 res!553979) b!810530))

(assert (= (and b!810530 res!553980) b!810535))

(assert (= (and b!810535 res!553986) b!810531))

(declare-fun m!752851 () Bool)

(assert (=> b!810533 m!752851))

(declare-fun m!752853 () Bool)

(assert (=> b!810537 m!752853))

(assert (=> b!810537 m!752853))

(declare-fun m!752855 () Bool)

(assert (=> b!810537 m!752855))

(declare-fun m!752857 () Bool)

(assert (=> b!810534 m!752857))

(declare-fun m!752859 () Bool)

(assert (=> b!810540 m!752859))

(declare-fun m!752861 () Bool)

(assert (=> b!810539 m!752861))

(declare-fun m!752863 () Bool)

(assert (=> b!810531 m!752863))

(assert (=> b!810531 m!752853))

(declare-fun m!752865 () Bool)

(assert (=> b!810531 m!752865))

(declare-fun m!752867 () Bool)

(assert (=> b!810531 m!752867))

(assert (=> b!810531 m!752853))

(declare-fun m!752869 () Bool)

(assert (=> b!810531 m!752869))

(declare-fun m!752871 () Bool)

(assert (=> b!810536 m!752871))

(declare-fun m!752873 () Bool)

(assert (=> start!69580 m!752873))

(declare-fun m!752875 () Bool)

(assert (=> start!69580 m!752875))

(declare-fun m!752877 () Bool)

(assert (=> b!810532 m!752877))

(declare-fun m!752879 () Bool)

(assert (=> b!810532 m!752879))

(declare-fun m!752881 () Bool)

(assert (=> b!810530 m!752881))

(declare-fun m!752883 () Bool)

(assert (=> b!810530 m!752883))

(declare-fun m!752885 () Bool)

(assert (=> b!810530 m!752885))

(declare-fun m!752887 () Bool)

(assert (=> b!810530 m!752887))

(declare-fun m!752889 () Bool)

(assert (=> b!810535 m!752889))

(assert (=> b!810535 m!752853))

(assert (=> b!810535 m!752853))

(declare-fun m!752891 () Bool)

(assert (=> b!810535 m!752891))

(assert (=> b!810535 m!752853))

(declare-fun m!752893 () Bool)

(assert (=> b!810535 m!752893))

(push 1)

