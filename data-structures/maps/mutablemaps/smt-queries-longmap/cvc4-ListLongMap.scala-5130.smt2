; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69686 () Bool)

(assert start!69686)

(declare-fun b!811612 () Bool)

(declare-fun res!554835 () Bool)

(declare-fun e!449214 () Bool)

(assert (=> b!811612 (=> (not res!554835) (not e!449214))))

(declare-datatypes ((array!44076 0))(
  ( (array!44077 (arr!21104 (Array (_ BitVec 32) (_ BitVec 64))) (size!21525 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44076)

(declare-datatypes ((List!15120 0))(
  ( (Nil!15117) (Cons!15116 (h!16245 (_ BitVec 64)) (t!21443 List!15120)) )
))
(declare-fun arrayNoDuplicates!0 (array!44076 (_ BitVec 32) List!15120) Bool)

(assert (=> b!811612 (= res!554835 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15117))))

(declare-fun b!811613 () Bool)

(declare-fun e!449210 () Bool)

(assert (=> b!811613 (= e!449210 e!449214)))

(declare-fun res!554825 () Bool)

(assert (=> b!811613 (=> (not res!554825) (not e!449214))))

(declare-datatypes ((SeekEntryResult!8702 0))(
  ( (MissingZero!8702 (index!37178 (_ BitVec 32))) (Found!8702 (index!37179 (_ BitVec 32))) (Intermediate!8702 (undefined!9514 Bool) (index!37180 (_ BitVec 32)) (x!68012 (_ BitVec 32))) (Undefined!8702) (MissingVacant!8702 (index!37181 (_ BitVec 32))) )
))
(declare-fun lt!363996 () SeekEntryResult!8702)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!811613 (= res!554825 (or (= lt!363996 (MissingZero!8702 i!1163)) (= lt!363996 (MissingVacant!8702 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44076 (_ BitVec 32)) SeekEntryResult!8702)

(assert (=> b!811613 (= lt!363996 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!554828 () Bool)

(assert (=> start!69686 (=> (not res!554828) (not e!449210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69686 (= res!554828 (validMask!0 mask!3266))))

(assert (=> start!69686 e!449210))

(assert (=> start!69686 true))

(declare-fun array_inv!16878 (array!44076) Bool)

(assert (=> start!69686 (array_inv!16878 a!3170)))

(declare-fun b!811614 () Bool)

(declare-fun res!554826 () Bool)

(assert (=> b!811614 (=> (not res!554826) (not e!449210))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811614 (= res!554826 (validKeyInArray!0 (select (arr!21104 a!3170) j!153)))))

(declare-fun b!811615 () Bool)

(declare-fun res!554830 () Bool)

(assert (=> b!811615 (=> (not res!554830) (not e!449210))))

(assert (=> b!811615 (= res!554830 (validKeyInArray!0 k!2044))))

(declare-fun b!811616 () Bool)

(declare-fun res!554829 () Bool)

(assert (=> b!811616 (=> (not res!554829) (not e!449210))))

(declare-fun arrayContainsKey!0 (array!44076 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811616 (= res!554829 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811617 () Bool)

(declare-fun e!449215 () Bool)

(declare-fun e!449213 () Bool)

(assert (=> b!811617 (= e!449215 e!449213)))

(declare-fun res!554827 () Bool)

(assert (=> b!811617 (=> (not res!554827) (not e!449213))))

(declare-fun lt!363989 () SeekEntryResult!8702)

(declare-fun lt!363995 () SeekEntryResult!8702)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!811617 (= res!554827 (and (= lt!363989 lt!363995) (not (= (select (arr!21104 a!3170) index!1236) (select (arr!21104 a!3170) j!153)))))))

(assert (=> b!811617 (= lt!363995 (Found!8702 j!153))))

(declare-fun b!811618 () Bool)

(declare-fun e!449212 () Bool)

(assert (=> b!811618 (= e!449214 e!449212)))

(declare-fun res!554832 () Bool)

(assert (=> b!811618 (=> (not res!554832) (not e!449212))))

(declare-fun lt!363993 () SeekEntryResult!8702)

(declare-fun lt!363994 () SeekEntryResult!8702)

(assert (=> b!811618 (= res!554832 (= lt!363993 lt!363994))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!363991 () array!44076)

(declare-fun lt!363997 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44076 (_ BitVec 32)) SeekEntryResult!8702)

(assert (=> b!811618 (= lt!363994 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363997 lt!363991 mask!3266))))

(assert (=> b!811618 (= lt!363993 (seekEntryOrOpen!0 lt!363997 lt!363991 mask!3266))))

(assert (=> b!811618 (= lt!363997 (select (store (arr!21104 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!811618 (= lt!363991 (array!44077 (store (arr!21104 a!3170) i!1163 k!2044) (size!21525 a!3170)))))

(declare-fun b!811619 () Bool)

(assert (=> b!811619 (= e!449213 (not (or (not (= lt!363994 lt!363995)) (= lt!363994 lt!363989))))))

(declare-fun lt!363990 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!811619 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363990 vacantAfter!23 lt!363997 lt!363991 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363990 vacantBefore!23 (select (arr!21104 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27666 0))(
  ( (Unit!27667) )
))
(declare-fun lt!363992 () Unit!27666)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44076 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27666)

(assert (=> b!811619 (= lt!363992 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363990 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811619 (= lt!363990 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811620 () Bool)

(declare-fun res!554831 () Bool)

(assert (=> b!811620 (=> (not res!554831) (not e!449214))))

(assert (=> b!811620 (= res!554831 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21525 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21104 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21525 a!3170)) (= (select (arr!21104 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811621 () Bool)

(declare-fun res!554834 () Bool)

(assert (=> b!811621 (=> (not res!554834) (not e!449214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44076 (_ BitVec 32)) Bool)

(assert (=> b!811621 (= res!554834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811622 () Bool)

(declare-fun res!554836 () Bool)

(assert (=> b!811622 (=> (not res!554836) (not e!449210))))

(assert (=> b!811622 (= res!554836 (and (= (size!21525 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21525 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21525 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811623 () Bool)

(assert (=> b!811623 (= e!449212 e!449215)))

(declare-fun res!554833 () Bool)

(assert (=> b!811623 (=> (not res!554833) (not e!449215))))

(declare-fun lt!363988 () SeekEntryResult!8702)

(assert (=> b!811623 (= res!554833 (= lt!363988 lt!363989))))

(assert (=> b!811623 (= lt!363989 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21104 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!811623 (= lt!363988 (seekEntryOrOpen!0 (select (arr!21104 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69686 res!554828) b!811622))

(assert (= (and b!811622 res!554836) b!811614))

(assert (= (and b!811614 res!554826) b!811615))

(assert (= (and b!811615 res!554830) b!811616))

(assert (= (and b!811616 res!554829) b!811613))

(assert (= (and b!811613 res!554825) b!811621))

(assert (= (and b!811621 res!554834) b!811612))

(assert (= (and b!811612 res!554835) b!811620))

(assert (= (and b!811620 res!554831) b!811618))

(assert (= (and b!811618 res!554832) b!811623))

(assert (= (and b!811623 res!554833) b!811617))

(assert (= (and b!811617 res!554827) b!811619))

(declare-fun m!754157 () Bool)

(assert (=> b!811623 m!754157))

(assert (=> b!811623 m!754157))

(declare-fun m!754159 () Bool)

(assert (=> b!811623 m!754159))

(assert (=> b!811623 m!754157))

(declare-fun m!754161 () Bool)

(assert (=> b!811623 m!754161))

(declare-fun m!754163 () Bool)

(assert (=> start!69686 m!754163))

(declare-fun m!754165 () Bool)

(assert (=> start!69686 m!754165))

(declare-fun m!754167 () Bool)

(assert (=> b!811621 m!754167))

(assert (=> b!811614 m!754157))

(assert (=> b!811614 m!754157))

(declare-fun m!754169 () Bool)

(assert (=> b!811614 m!754169))

(declare-fun m!754171 () Bool)

(assert (=> b!811620 m!754171))

(declare-fun m!754173 () Bool)

(assert (=> b!811620 m!754173))

(declare-fun m!754175 () Bool)

(assert (=> b!811618 m!754175))

(declare-fun m!754177 () Bool)

(assert (=> b!811618 m!754177))

(declare-fun m!754179 () Bool)

(assert (=> b!811618 m!754179))

(declare-fun m!754181 () Bool)

(assert (=> b!811618 m!754181))

(declare-fun m!754183 () Bool)

(assert (=> b!811613 m!754183))

(assert (=> b!811619 m!754157))

(declare-fun m!754185 () Bool)

(assert (=> b!811619 m!754185))

(declare-fun m!754187 () Bool)

(assert (=> b!811619 m!754187))

(declare-fun m!754189 () Bool)

(assert (=> b!811619 m!754189))

(assert (=> b!811619 m!754157))

(declare-fun m!754191 () Bool)

(assert (=> b!811619 m!754191))

(declare-fun m!754193 () Bool)

(assert (=> b!811612 m!754193))

(declare-fun m!754195 () Bool)

(assert (=> b!811617 m!754195))

(assert (=> b!811617 m!754157))

(declare-fun m!754197 () Bool)

(assert (=> b!811615 m!754197))

(declare-fun m!754199 () Bool)

(assert (=> b!811616 m!754199))

(push 1)

