; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68672 () Bool)

(assert start!68672)

(declare-fun b!798876 () Bool)

(declare-fun e!443081 () Bool)

(declare-fun e!443086 () Bool)

(assert (=> b!798876 (= e!443081 e!443086)))

(declare-fun res!543572 () Bool)

(assert (=> b!798876 (=> (not res!543572) (not e!443086))))

(declare-datatypes ((SeekEntryResult!8381 0))(
  ( (MissingZero!8381 (index!35891 (_ BitVec 32))) (Found!8381 (index!35892 (_ BitVec 32))) (Intermediate!8381 (undefined!9193 Bool) (index!35893 (_ BitVec 32)) (x!66796 (_ BitVec 32))) (Undefined!8381) (MissingVacant!8381 (index!35894 (_ BitVec 32))) )
))
(declare-fun lt!356693 () SeekEntryResult!8381)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798876 (= res!543572 (or (= lt!356693 (MissingZero!8381 i!1163)) (= lt!356693 (MissingVacant!8381 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43413 0))(
  ( (array!43414 (arr!20783 (Array (_ BitVec 32) (_ BitVec 64))) (size!21204 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43413)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43413 (_ BitVec 32)) SeekEntryResult!8381)

(assert (=> b!798876 (= lt!356693 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798877 () Bool)

(declare-fun e!443085 () Bool)

(declare-fun e!443083 () Bool)

(assert (=> b!798877 (= e!443085 e!443083)))

(declare-fun res!543566 () Bool)

(assert (=> b!798877 (=> (not res!543566) (not e!443083))))

(declare-fun lt!356695 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(assert (=> b!798877 (= res!543566 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356695 #b00000000000000000000000000000000) (bvslt lt!356695 (size!21204 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!798877 (= lt!356695 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!798878 () Bool)

(declare-fun res!543569 () Bool)

(assert (=> b!798878 (=> (not res!543569) (not e!443086))))

(declare-datatypes ((List!14799 0))(
  ( (Nil!14796) (Cons!14795 (h!15924 (_ BitVec 64)) (t!21122 List!14799)) )
))
(declare-fun arrayNoDuplicates!0 (array!43413 (_ BitVec 32) List!14799) Bool)

(assert (=> b!798878 (= res!543569 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14796))))

(declare-fun b!798879 () Bool)

(declare-fun res!543577 () Bool)

(assert (=> b!798879 (=> (not res!543577) (not e!443081))))

(declare-fun arrayContainsKey!0 (array!43413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798879 (= res!543577 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798880 () Bool)

(declare-fun e!443084 () Bool)

(assert (=> b!798880 (= e!443084 e!443085)))

(declare-fun res!543571 () Bool)

(assert (=> b!798880 (=> (not res!543571) (not e!443085))))

(declare-fun lt!356694 () SeekEntryResult!8381)

(declare-fun lt!356692 () SeekEntryResult!8381)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798880 (= res!543571 (and (= lt!356694 lt!356692) (= lt!356692 (Found!8381 j!153)) (not (= (select (arr!20783 a!3170) index!1236) (select (arr!20783 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43413 (_ BitVec 32)) SeekEntryResult!8381)

(assert (=> b!798880 (= lt!356692 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20783 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798880 (= lt!356694 (seekEntryOrOpen!0 (select (arr!20783 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798881 () Bool)

(assert (=> b!798881 (= e!443086 e!443084)))

(declare-fun res!543570 () Bool)

(assert (=> b!798881 (=> (not res!543570) (not e!443084))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!356691 () (_ BitVec 64))

(declare-fun lt!356698 () array!43413)

(declare-fun lt!356696 () SeekEntryResult!8381)

(assert (=> b!798881 (= res!543570 (= lt!356696 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356691 lt!356698 mask!3266)))))

(assert (=> b!798881 (= lt!356696 (seekEntryOrOpen!0 lt!356691 lt!356698 mask!3266))))

(assert (=> b!798881 (= lt!356691 (select (store (arr!20783 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798881 (= lt!356698 (array!43414 (store (arr!20783 a!3170) i!1163 k!2044) (size!21204 a!3170)))))

(declare-fun b!798882 () Bool)

(assert (=> b!798882 (= e!443083 false)))

(declare-fun lt!356697 () SeekEntryResult!8381)

(assert (=> b!798882 (= lt!356697 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356695 vacantBefore!23 (select (arr!20783 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798883 () Bool)

(declare-fun res!543574 () Bool)

(assert (=> b!798883 (=> (not res!543574) (not e!443081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798883 (= res!543574 (validKeyInArray!0 k!2044))))

(declare-fun b!798884 () Bool)

(declare-fun res!543565 () Bool)

(assert (=> b!798884 (=> (not res!543565) (not e!443086))))

(assert (=> b!798884 (= res!543565 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21204 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20783 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21204 a!3170)) (= (select (arr!20783 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798886 () Bool)

(declare-fun res!543576 () Bool)

(assert (=> b!798886 (=> (not res!543576) (not e!443086))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43413 (_ BitVec 32)) Bool)

(assert (=> b!798886 (= res!543576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!543567 () Bool)

(assert (=> start!68672 (=> (not res!543567) (not e!443081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68672 (= res!543567 (validMask!0 mask!3266))))

(assert (=> start!68672 e!443081))

(assert (=> start!68672 true))

(declare-fun array_inv!16557 (array!43413) Bool)

(assert (=> start!68672 (array_inv!16557 a!3170)))

(declare-fun b!798885 () Bool)

(declare-fun res!543573 () Bool)

(assert (=> b!798885 (=> (not res!543573) (not e!443081))))

(assert (=> b!798885 (= res!543573 (and (= (size!21204 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21204 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21204 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798887 () Bool)

(declare-fun res!543575 () Bool)

(assert (=> b!798887 (=> (not res!543575) (not e!443081))))

(assert (=> b!798887 (= res!543575 (validKeyInArray!0 (select (arr!20783 a!3170) j!153)))))

(declare-fun b!798888 () Bool)

(declare-fun res!543568 () Bool)

(assert (=> b!798888 (=> (not res!543568) (not e!443083))))

(assert (=> b!798888 (= res!543568 (= lt!356696 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356695 vacantAfter!23 lt!356691 lt!356698 mask!3266)))))

(assert (= (and start!68672 res!543567) b!798885))

(assert (= (and b!798885 res!543573) b!798887))

(assert (= (and b!798887 res!543575) b!798883))

(assert (= (and b!798883 res!543574) b!798879))

(assert (= (and b!798879 res!543577) b!798876))

(assert (= (and b!798876 res!543572) b!798886))

(assert (= (and b!798886 res!543576) b!798878))

(assert (= (and b!798878 res!543569) b!798884))

(assert (= (and b!798884 res!543565) b!798881))

(assert (= (and b!798881 res!543570) b!798880))

(assert (= (and b!798880 res!543571) b!798877))

(assert (= (and b!798877 res!543566) b!798888))

(assert (= (and b!798888 res!543568) b!798882))

(declare-fun m!739951 () Bool)

(assert (=> b!798876 m!739951))

(declare-fun m!739953 () Bool)

(assert (=> start!68672 m!739953))

(declare-fun m!739955 () Bool)

(assert (=> start!68672 m!739955))

(declare-fun m!739957 () Bool)

(assert (=> b!798884 m!739957))

(declare-fun m!739959 () Bool)

(assert (=> b!798884 m!739959))

(declare-fun m!739961 () Bool)

(assert (=> b!798877 m!739961))

(declare-fun m!739963 () Bool)

(assert (=> b!798883 m!739963))

(declare-fun m!739965 () Bool)

(assert (=> b!798880 m!739965))

(declare-fun m!739967 () Bool)

(assert (=> b!798880 m!739967))

(assert (=> b!798880 m!739967))

(declare-fun m!739969 () Bool)

(assert (=> b!798880 m!739969))

(assert (=> b!798880 m!739967))

(declare-fun m!739971 () Bool)

(assert (=> b!798880 m!739971))

(assert (=> b!798887 m!739967))

(assert (=> b!798887 m!739967))

(declare-fun m!739973 () Bool)

(assert (=> b!798887 m!739973))

(declare-fun m!739975 () Bool)

(assert (=> b!798878 m!739975))

(declare-fun m!739977 () Bool)

(assert (=> b!798886 m!739977))

(assert (=> b!798882 m!739967))

(assert (=> b!798882 m!739967))

(declare-fun m!739979 () Bool)

(assert (=> b!798882 m!739979))

(declare-fun m!739981 () Bool)

(assert (=> b!798879 m!739981))

(declare-fun m!739983 () Bool)

(assert (=> b!798888 m!739983))

(declare-fun m!739985 () Bool)

(assert (=> b!798881 m!739985))

(declare-fun m!739987 () Bool)

(assert (=> b!798881 m!739987))

(declare-fun m!739989 () Bool)

(assert (=> b!798881 m!739989))

(declare-fun m!739991 () Bool)

(assert (=> b!798881 m!739991))

(push 1)

(assert (not b!798881))

(assert (not b!798882))

(assert (not b!798888))

