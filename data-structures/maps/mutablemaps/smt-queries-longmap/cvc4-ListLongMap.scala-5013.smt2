; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68612 () Bool)

(assert start!68612)

(declare-fun b!797878 () Bool)

(declare-fun e!442645 () Bool)

(declare-fun e!442643 () Bool)

(assert (=> b!797878 (= e!442645 e!442643)))

(declare-fun res!542576 () Bool)

(assert (=> b!797878 (=> (not res!542576) (not e!442643))))

(declare-datatypes ((SeekEntryResult!8351 0))(
  ( (MissingZero!8351 (index!35771 (_ BitVec 32))) (Found!8351 (index!35772 (_ BitVec 32))) (Intermediate!8351 (undefined!9163 Bool) (index!35773 (_ BitVec 32)) (x!66686 (_ BitVec 32))) (Undefined!8351) (MissingVacant!8351 (index!35774 (_ BitVec 32))) )
))
(declare-fun lt!356110 () SeekEntryResult!8351)

(declare-fun lt!356108 () SeekEntryResult!8351)

(declare-datatypes ((array!43353 0))(
  ( (array!43354 (arr!20753 (Array (_ BitVec 32) (_ BitVec 64))) (size!21174 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43353)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797878 (= res!542576 (and (= lt!356110 lt!356108) (= (select (arr!20753 a!3170) index!1236) (select (arr!20753 a!3170) j!153))))))

(assert (=> b!797878 (= lt!356108 (Found!8351 j!153))))

(declare-fun b!797879 () Bool)

(declare-fun e!442644 () Bool)

(declare-fun e!442640 () Bool)

(assert (=> b!797879 (= e!442644 e!442640)))

(declare-fun res!542572 () Bool)

(assert (=> b!797879 (=> (not res!542572) (not e!442640))))

(declare-fun lt!356106 () SeekEntryResult!8351)

(declare-fun lt!356113 () SeekEntryResult!8351)

(assert (=> b!797879 (= res!542572 (= lt!356106 lt!356113))))

(declare-fun lt!356112 () array!43353)

(declare-fun lt!356109 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43353 (_ BitVec 32)) SeekEntryResult!8351)

(assert (=> b!797879 (= lt!356113 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356109 lt!356112 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43353 (_ BitVec 32)) SeekEntryResult!8351)

(assert (=> b!797879 (= lt!356106 (seekEntryOrOpen!0 lt!356109 lt!356112 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!797879 (= lt!356109 (select (store (arr!20753 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797879 (= lt!356112 (array!43354 (store (arr!20753 a!3170) i!1163 k!2044) (size!21174 a!3170)))))

(declare-fun b!797880 () Bool)

(assert (=> b!797880 (= e!442640 e!442645)))

(declare-fun res!542574 () Bool)

(assert (=> b!797880 (=> (not res!542574) (not e!442645))))

(declare-fun lt!356111 () SeekEntryResult!8351)

(assert (=> b!797880 (= res!542574 (= lt!356111 lt!356110))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!797880 (= lt!356110 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20753 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797880 (= lt!356111 (seekEntryOrOpen!0 (select (arr!20753 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797881 () Bool)

(declare-fun res!542570 () Bool)

(declare-fun e!442642 () Bool)

(assert (=> b!797881 (=> (not res!542570) (not e!442642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797881 (= res!542570 (validKeyInArray!0 k!2044))))

(declare-fun b!797882 () Bool)

(assert (=> b!797882 (= e!442643 (not (or (not (= lt!356113 lt!356108)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(assert (=> b!797882 (= lt!356113 (Found!8351 index!1236))))

(declare-fun b!797883 () Bool)

(declare-fun res!542578 () Bool)

(assert (=> b!797883 (=> (not res!542578) (not e!442642))))

(assert (=> b!797883 (= res!542578 (validKeyInArray!0 (select (arr!20753 a!3170) j!153)))))

(declare-fun b!797884 () Bool)

(declare-fun res!542573 () Bool)

(assert (=> b!797884 (=> (not res!542573) (not e!442644))))

(assert (=> b!797884 (= res!542573 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21174 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20753 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21174 a!3170)) (= (select (arr!20753 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797886 () Bool)

(declare-fun res!542569 () Bool)

(assert (=> b!797886 (=> (not res!542569) (not e!442642))))

(declare-fun arrayContainsKey!0 (array!43353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797886 (= res!542569 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797887 () Bool)

(declare-fun res!542571 () Bool)

(assert (=> b!797887 (=> (not res!542571) (not e!442644))))

(declare-datatypes ((List!14769 0))(
  ( (Nil!14766) (Cons!14765 (h!15894 (_ BitVec 64)) (t!21092 List!14769)) )
))
(declare-fun arrayNoDuplicates!0 (array!43353 (_ BitVec 32) List!14769) Bool)

(assert (=> b!797887 (= res!542571 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14766))))

(declare-fun b!797885 () Bool)

(assert (=> b!797885 (= e!442642 e!442644)))

(declare-fun res!542567 () Bool)

(assert (=> b!797885 (=> (not res!542567) (not e!442644))))

(declare-fun lt!356107 () SeekEntryResult!8351)

(assert (=> b!797885 (= res!542567 (or (= lt!356107 (MissingZero!8351 i!1163)) (= lt!356107 (MissingVacant!8351 i!1163))))))

(assert (=> b!797885 (= lt!356107 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!542568 () Bool)

(assert (=> start!68612 (=> (not res!542568) (not e!442642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68612 (= res!542568 (validMask!0 mask!3266))))

(assert (=> start!68612 e!442642))

(assert (=> start!68612 true))

(declare-fun array_inv!16527 (array!43353) Bool)

(assert (=> start!68612 (array_inv!16527 a!3170)))

(declare-fun b!797888 () Bool)

(declare-fun res!542575 () Bool)

(assert (=> b!797888 (=> (not res!542575) (not e!442644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43353 (_ BitVec 32)) Bool)

(assert (=> b!797888 (= res!542575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797889 () Bool)

(declare-fun res!542577 () Bool)

(assert (=> b!797889 (=> (not res!542577) (not e!442642))))

(assert (=> b!797889 (= res!542577 (and (= (size!21174 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21174 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21174 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68612 res!542568) b!797889))

(assert (= (and b!797889 res!542577) b!797883))

(assert (= (and b!797883 res!542578) b!797881))

(assert (= (and b!797881 res!542570) b!797886))

(assert (= (and b!797886 res!542569) b!797885))

(assert (= (and b!797885 res!542567) b!797888))

(assert (= (and b!797888 res!542575) b!797887))

(assert (= (and b!797887 res!542571) b!797884))

(assert (= (and b!797884 res!542573) b!797879))

(assert (= (and b!797879 res!542572) b!797880))

(assert (= (and b!797880 res!542574) b!797878))

(assert (= (and b!797878 res!542576) b!797882))

(declare-fun m!738853 () Bool)

(assert (=> b!797885 m!738853))

(declare-fun m!738855 () Bool)

(assert (=> b!797887 m!738855))

(declare-fun m!738857 () Bool)

(assert (=> start!68612 m!738857))

(declare-fun m!738859 () Bool)

(assert (=> start!68612 m!738859))

(declare-fun m!738861 () Bool)

(assert (=> b!797880 m!738861))

(assert (=> b!797880 m!738861))

(declare-fun m!738863 () Bool)

(assert (=> b!797880 m!738863))

(assert (=> b!797880 m!738861))

(declare-fun m!738865 () Bool)

(assert (=> b!797880 m!738865))

(declare-fun m!738867 () Bool)

(assert (=> b!797884 m!738867))

(declare-fun m!738869 () Bool)

(assert (=> b!797884 m!738869))

(declare-fun m!738871 () Bool)

(assert (=> b!797888 m!738871))

(declare-fun m!738873 () Bool)

(assert (=> b!797879 m!738873))

(declare-fun m!738875 () Bool)

(assert (=> b!797879 m!738875))

(declare-fun m!738877 () Bool)

(assert (=> b!797879 m!738877))

(declare-fun m!738879 () Bool)

(assert (=> b!797879 m!738879))

(declare-fun m!738881 () Bool)

(assert (=> b!797886 m!738881))

(assert (=> b!797883 m!738861))

(assert (=> b!797883 m!738861))

(declare-fun m!738883 () Bool)

(assert (=> b!797883 m!738883))

(declare-fun m!738885 () Bool)

(assert (=> b!797878 m!738885))

(assert (=> b!797878 m!738861))

(declare-fun m!738887 () Bool)

(assert (=> b!797881 m!738887))

(push 1)

(assert (not b!797885))

(assert (not b!797883))

(assert (not start!68612))

(assert (not b!797888))

(assert (not b!797886))

(assert (not b!797887))

(assert (not b!797879))

(assert (not b!797880))

(assert (not b!797881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

