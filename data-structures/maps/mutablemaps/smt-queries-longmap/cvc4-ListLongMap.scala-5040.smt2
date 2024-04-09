; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68774 () Bool)

(assert start!68774)

(declare-fun b!800865 () Bool)

(declare-fun e!443999 () Bool)

(assert (=> b!800865 (= e!443999 false)))

(declare-datatypes ((SeekEntryResult!8432 0))(
  ( (MissingZero!8432 (index!36095 (_ BitVec 32))) (Found!8432 (index!36096 (_ BitVec 32))) (Intermediate!8432 (undefined!9244 Bool) (index!36097 (_ BitVec 32)) (x!66983 (_ BitVec 32))) (Undefined!8432) (MissingVacant!8432 (index!36098 (_ BitVec 32))) )
))
(declare-fun lt!357916 () SeekEntryResult!8432)

(declare-fun lt!357915 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43515 0))(
  ( (array!43516 (arr!20834 (Array (_ BitVec 32) (_ BitVec 64))) (size!21255 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43515)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43515 (_ BitVec 32)) SeekEntryResult!8432)

(assert (=> b!800865 (= lt!357916 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357915 vacantBefore!23 (select (arr!20834 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800866 () Bool)

(declare-fun res!545554 () Bool)

(declare-fun e!444003 () Bool)

(assert (=> b!800866 (=> (not res!545554) (not e!444003))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800866 (= res!545554 (validKeyInArray!0 k!2044))))

(declare-fun b!800867 () Bool)

(declare-fun res!545564 () Bool)

(declare-fun e!444001 () Bool)

(assert (=> b!800867 (=> (not res!545564) (not e!444001))))

(declare-datatypes ((List!14850 0))(
  ( (Nil!14847) (Cons!14846 (h!15975 (_ BitVec 64)) (t!21173 List!14850)) )
))
(declare-fun arrayNoDuplicates!0 (array!43515 (_ BitVec 32) List!14850) Bool)

(assert (=> b!800867 (= res!545564 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14847))))

(declare-fun res!545556 () Bool)

(assert (=> start!68774 (=> (not res!545556) (not e!444003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68774 (= res!545556 (validMask!0 mask!3266))))

(assert (=> start!68774 e!444003))

(assert (=> start!68774 true))

(declare-fun array_inv!16608 (array!43515) Bool)

(assert (=> start!68774 (array_inv!16608 a!3170)))

(declare-fun b!800868 () Bool)

(declare-fun res!545560 () Bool)

(assert (=> b!800868 (=> (not res!545560) (not e!444001))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43515 (_ BitVec 32)) Bool)

(assert (=> b!800868 (= res!545560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800869 () Bool)

(assert (=> b!800869 (= e!444003 e!444001)))

(declare-fun res!545566 () Bool)

(assert (=> b!800869 (=> (not res!545566) (not e!444001))))

(declare-fun lt!357922 () SeekEntryResult!8432)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800869 (= res!545566 (or (= lt!357922 (MissingZero!8432 i!1163)) (= lt!357922 (MissingVacant!8432 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43515 (_ BitVec 32)) SeekEntryResult!8432)

(assert (=> b!800869 (= lt!357922 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800870 () Bool)

(declare-fun res!545555 () Bool)

(assert (=> b!800870 (=> (not res!545555) (not e!444003))))

(assert (=> b!800870 (= res!545555 (and (= (size!21255 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21255 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21255 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800871 () Bool)

(declare-fun e!444000 () Bool)

(declare-fun e!444002 () Bool)

(assert (=> b!800871 (= e!444000 e!444002)))

(declare-fun res!545557 () Bool)

(assert (=> b!800871 (=> (not res!545557) (not e!444002))))

(declare-fun lt!357921 () SeekEntryResult!8432)

(declare-fun lt!357917 () SeekEntryResult!8432)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800871 (= res!545557 (and (= lt!357917 lt!357921) (= lt!357921 (Found!8432 j!153)) (not (= (select (arr!20834 a!3170) index!1236) (select (arr!20834 a!3170) j!153)))))))

(assert (=> b!800871 (= lt!357921 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20834 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800871 (= lt!357917 (seekEntryOrOpen!0 (select (arr!20834 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800872 () Bool)

(declare-fun res!545558 () Bool)

(assert (=> b!800872 (=> (not res!545558) (not e!444003))))

(assert (=> b!800872 (= res!545558 (validKeyInArray!0 (select (arr!20834 a!3170) j!153)))))

(declare-fun b!800873 () Bool)

(declare-fun res!545561 () Bool)

(assert (=> b!800873 (=> (not res!545561) (not e!444001))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!800873 (= res!545561 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21255 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20834 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21255 a!3170)) (= (select (arr!20834 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800874 () Bool)

(assert (=> b!800874 (= e!444001 e!444000)))

(declare-fun res!545563 () Bool)

(assert (=> b!800874 (=> (not res!545563) (not e!444000))))

(declare-fun lt!357920 () (_ BitVec 64))

(declare-fun lt!357918 () SeekEntryResult!8432)

(declare-fun lt!357919 () array!43515)

(assert (=> b!800874 (= res!545563 (= lt!357918 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357920 lt!357919 mask!3266)))))

(assert (=> b!800874 (= lt!357918 (seekEntryOrOpen!0 lt!357920 lt!357919 mask!3266))))

(assert (=> b!800874 (= lt!357920 (select (store (arr!20834 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800874 (= lt!357919 (array!43516 (store (arr!20834 a!3170) i!1163 k!2044) (size!21255 a!3170)))))

(declare-fun b!800875 () Bool)

(declare-fun res!545559 () Bool)

(assert (=> b!800875 (=> (not res!545559) (not e!443999))))

(assert (=> b!800875 (= res!545559 (= lt!357918 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357915 vacantAfter!23 lt!357920 lt!357919 mask!3266)))))

(declare-fun b!800876 () Bool)

(assert (=> b!800876 (= e!444002 e!443999)))

(declare-fun res!545565 () Bool)

(assert (=> b!800876 (=> (not res!545565) (not e!443999))))

(assert (=> b!800876 (= res!545565 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357915 #b00000000000000000000000000000000) (bvslt lt!357915 (size!21255 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800876 (= lt!357915 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800877 () Bool)

(declare-fun res!545562 () Bool)

(assert (=> b!800877 (=> (not res!545562) (not e!444003))))

(declare-fun arrayContainsKey!0 (array!43515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800877 (= res!545562 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68774 res!545556) b!800870))

(assert (= (and b!800870 res!545555) b!800872))

(assert (= (and b!800872 res!545558) b!800866))

(assert (= (and b!800866 res!545554) b!800877))

(assert (= (and b!800877 res!545562) b!800869))

(assert (= (and b!800869 res!545566) b!800868))

(assert (= (and b!800868 res!545560) b!800867))

(assert (= (and b!800867 res!545564) b!800873))

(assert (= (and b!800873 res!545561) b!800874))

(assert (= (and b!800874 res!545563) b!800871))

(assert (= (and b!800871 res!545557) b!800876))

(assert (= (and b!800876 res!545565) b!800875))

(assert (= (and b!800875 res!545559) b!800865))

(declare-fun m!742093 () Bool)

(assert (=> b!800876 m!742093))

(declare-fun m!742095 () Bool)

(assert (=> b!800875 m!742095))

(declare-fun m!742097 () Bool)

(assert (=> start!68774 m!742097))

(declare-fun m!742099 () Bool)

(assert (=> start!68774 m!742099))

(declare-fun m!742101 () Bool)

(assert (=> b!800873 m!742101))

(declare-fun m!742103 () Bool)

(assert (=> b!800873 m!742103))

(declare-fun m!742105 () Bool)

(assert (=> b!800868 m!742105))

(declare-fun m!742107 () Bool)

(assert (=> b!800877 m!742107))

(declare-fun m!742109 () Bool)

(assert (=> b!800867 m!742109))

(declare-fun m!742111 () Bool)

(assert (=> b!800865 m!742111))

(assert (=> b!800865 m!742111))

(declare-fun m!742113 () Bool)

(assert (=> b!800865 m!742113))

(declare-fun m!742115 () Bool)

(assert (=> b!800866 m!742115))

(assert (=> b!800872 m!742111))

(assert (=> b!800872 m!742111))

(declare-fun m!742117 () Bool)

(assert (=> b!800872 m!742117))

(declare-fun m!742119 () Bool)

(assert (=> b!800871 m!742119))

(assert (=> b!800871 m!742111))

(assert (=> b!800871 m!742111))

(declare-fun m!742121 () Bool)

(assert (=> b!800871 m!742121))

(assert (=> b!800871 m!742111))

(declare-fun m!742123 () Bool)

(assert (=> b!800871 m!742123))

(declare-fun m!742125 () Bool)

(assert (=> b!800869 m!742125))

(declare-fun m!742127 () Bool)

(assert (=> b!800874 m!742127))

(declare-fun m!742129 () Bool)

(assert (=> b!800874 m!742129))

(declare-fun m!742131 () Bool)

(assert (=> b!800874 m!742131))

(declare-fun m!742133 () Bool)

(assert (=> b!800874 m!742133))

(push 1)

(assert (not b!800874))

(assert (not b!800876))

(assert (not b!800868))

(assert (not b!800875))

(assert (not b!800872))

(assert (not b!800866))

(assert (not b!800865))

(assert (not b!800871))

(assert (not b!800867))

(assert (not b!800877))

(assert (not b!800869))

(assert (not start!68774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

