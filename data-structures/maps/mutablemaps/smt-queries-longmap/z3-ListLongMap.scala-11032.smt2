; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129072 () Bool)

(assert start!129072)

(declare-fun b!1513164 () Bool)

(declare-fun e!844562 () Bool)

(declare-fun e!844563 () Bool)

(assert (=> b!1513164 (= e!844562 e!844563)))

(declare-fun res!1033143 () Bool)

(assert (=> b!1513164 (=> (not res!1033143) (not e!844563))))

(declare-fun lt!655857 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12845 0))(
  ( (MissingZero!12845 (index!53774 (_ BitVec 32))) (Found!12845 (index!53775 (_ BitVec 32))) (Intermediate!12845 (undefined!13657 Bool) (index!53776 (_ BitVec 32)) (x!135504 (_ BitVec 32))) (Undefined!12845) (MissingVacant!12845 (index!53777 (_ BitVec 32))) )
))
(declare-fun lt!655858 () SeekEntryResult!12845)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100841 0))(
  ( (array!100842 (arr!48653 (Array (_ BitVec 32) (_ BitVec 64))) (size!49204 (_ BitVec 32))) )
))
(declare-fun lt!655854 () array!100841)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100841 (_ BitVec 32)) SeekEntryResult!12845)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513164 (= res!1033143 (= lt!655858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655857 mask!2512) lt!655857 lt!655854 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!100841)

(assert (=> b!1513164 (= lt!655857 (select (store (arr!48653 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513164 (= lt!655854 (array!100842 (store (arr!48653 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49204 a!2804)))))

(declare-fun b!1513166 () Bool)

(declare-fun res!1033139 () Bool)

(declare-fun e!844565 () Bool)

(assert (=> b!1513166 (=> (not res!1033139) (not e!844565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513166 (= res!1033139 (validKeyInArray!0 (select (arr!48653 a!2804) j!70)))))

(declare-fun b!1513167 () Bool)

(declare-fun res!1033150 () Bool)

(declare-fun e!844560 () Bool)

(assert (=> b!1513167 (=> (not res!1033150) (not e!844560))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100841 (_ BitVec 32)) SeekEntryResult!12845)

(assert (=> b!1513167 (= res!1033150 (= (seekEntry!0 (select (arr!48653 a!2804) j!70) a!2804 mask!2512) (Found!12845 j!70)))))

(declare-fun b!1513168 () Bool)

(declare-fun res!1033148 () Bool)

(assert (=> b!1513168 (=> (not res!1033148) (not e!844565))))

(assert (=> b!1513168 (= res!1033148 (and (= (size!49204 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49204 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49204 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513169 () Bool)

(declare-fun e!844559 () Bool)

(assert (=> b!1513169 (= e!844560 e!844559)))

(declare-fun res!1033146 () Bool)

(assert (=> b!1513169 (=> res!1033146 e!844559)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1513169 (= res!1033146 (or (not (= (select (arr!48653 a!2804) j!70) lt!655857)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48653 a!2804) index!487) (select (arr!48653 a!2804) j!70)) (not (= (select (arr!48653 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513170 () Bool)

(declare-fun e!844564 () Bool)

(assert (=> b!1513170 (= e!844559 e!844564)))

(declare-fun res!1033151 () Bool)

(assert (=> b!1513170 (=> (not res!1033151) (not e!844564))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100841 (_ BitVec 32)) SeekEntryResult!12845)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100841 (_ BitVec 32)) SeekEntryResult!12845)

(assert (=> b!1513170 (= res!1033151 (= (seekEntryOrOpen!0 (select (arr!48653 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48653 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513171 () Bool)

(declare-fun res!1033147 () Bool)

(assert (=> b!1513171 (=> (not res!1033147) (not e!844565))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100841 (_ BitVec 32)) Bool)

(assert (=> b!1513171 (= res!1033147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513172 () Bool)

(declare-fun res!1033141 () Bool)

(assert (=> b!1513172 (=> (not res!1033141) (not e!844562))))

(declare-fun lt!655855 () SeekEntryResult!12845)

(assert (=> b!1513172 (= res!1033141 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48653 a!2804) j!70) a!2804 mask!2512) lt!655855))))

(declare-fun b!1513173 () Bool)

(assert (=> b!1513173 (= e!844565 e!844562)))

(declare-fun res!1033142 () Bool)

(assert (=> b!1513173 (=> (not res!1033142) (not e!844562))))

(assert (=> b!1513173 (= res!1033142 (= lt!655858 lt!655855))))

(assert (=> b!1513173 (= lt!655855 (Intermediate!12845 false resIndex!21 resX!21))))

(assert (=> b!1513173 (= lt!655858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48653 a!2804) j!70) mask!2512) (select (arr!48653 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513174 () Bool)

(declare-fun res!1033144 () Bool)

(assert (=> b!1513174 (=> (not res!1033144) (not e!844565))))

(assert (=> b!1513174 (= res!1033144 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49204 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49204 a!2804))))))

(declare-fun b!1513175 () Bool)

(declare-fun res!1033149 () Bool)

(assert (=> b!1513175 (=> (not res!1033149) (not e!844565))))

(declare-datatypes ((List!35316 0))(
  ( (Nil!35313) (Cons!35312 (h!36725 (_ BitVec 64)) (t!50017 List!35316)) )
))
(declare-fun arrayNoDuplicates!0 (array!100841 (_ BitVec 32) List!35316) Bool)

(assert (=> b!1513175 (= res!1033149 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35313))))

(declare-fun b!1513165 () Bool)

(declare-fun res!1033140 () Bool)

(assert (=> b!1513165 (=> (not res!1033140) (not e!844565))))

(assert (=> b!1513165 (= res!1033140 (validKeyInArray!0 (select (arr!48653 a!2804) i!961)))))

(declare-fun res!1033145 () Bool)

(assert (=> start!129072 (=> (not res!1033145) (not e!844565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129072 (= res!1033145 (validMask!0 mask!2512))))

(assert (=> start!129072 e!844565))

(assert (=> start!129072 true))

(declare-fun array_inv!37598 (array!100841) Bool)

(assert (=> start!129072 (array_inv!37598 a!2804)))

(declare-fun b!1513176 () Bool)

(assert (=> b!1513176 (= e!844563 (not true))))

(assert (=> b!1513176 e!844560))

(declare-fun res!1033152 () Bool)

(assert (=> b!1513176 (=> (not res!1033152) (not e!844560))))

(assert (=> b!1513176 (= res!1033152 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50514 0))(
  ( (Unit!50515) )
))
(declare-fun lt!655856 () Unit!50514)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100841 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50514)

(assert (=> b!1513176 (= lt!655856 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513177 () Bool)

(assert (=> b!1513177 (= e!844564 (= (seekEntryOrOpen!0 lt!655857 lt!655854 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655857 lt!655854 mask!2512)))))

(assert (= (and start!129072 res!1033145) b!1513168))

(assert (= (and b!1513168 res!1033148) b!1513165))

(assert (= (and b!1513165 res!1033140) b!1513166))

(assert (= (and b!1513166 res!1033139) b!1513171))

(assert (= (and b!1513171 res!1033147) b!1513175))

(assert (= (and b!1513175 res!1033149) b!1513174))

(assert (= (and b!1513174 res!1033144) b!1513173))

(assert (= (and b!1513173 res!1033142) b!1513172))

(assert (= (and b!1513172 res!1033141) b!1513164))

(assert (= (and b!1513164 res!1033143) b!1513176))

(assert (= (and b!1513176 res!1033152) b!1513167))

(assert (= (and b!1513167 res!1033150) b!1513169))

(assert (= (and b!1513169 (not res!1033146)) b!1513170))

(assert (= (and b!1513170 res!1033151) b!1513177))

(declare-fun m!1396057 () Bool)

(assert (=> start!129072 m!1396057))

(declare-fun m!1396059 () Bool)

(assert (=> start!129072 m!1396059))

(declare-fun m!1396061 () Bool)

(assert (=> b!1513173 m!1396061))

(assert (=> b!1513173 m!1396061))

(declare-fun m!1396063 () Bool)

(assert (=> b!1513173 m!1396063))

(assert (=> b!1513173 m!1396063))

(assert (=> b!1513173 m!1396061))

(declare-fun m!1396065 () Bool)

(assert (=> b!1513173 m!1396065))

(declare-fun m!1396067 () Bool)

(assert (=> b!1513175 m!1396067))

(assert (=> b!1513170 m!1396061))

(assert (=> b!1513170 m!1396061))

(declare-fun m!1396069 () Bool)

(assert (=> b!1513170 m!1396069))

(assert (=> b!1513170 m!1396061))

(declare-fun m!1396071 () Bool)

(assert (=> b!1513170 m!1396071))

(declare-fun m!1396073 () Bool)

(assert (=> b!1513176 m!1396073))

(declare-fun m!1396075 () Bool)

(assert (=> b!1513176 m!1396075))

(assert (=> b!1513169 m!1396061))

(declare-fun m!1396077 () Bool)

(assert (=> b!1513169 m!1396077))

(declare-fun m!1396079 () Bool)

(assert (=> b!1513164 m!1396079))

(assert (=> b!1513164 m!1396079))

(declare-fun m!1396081 () Bool)

(assert (=> b!1513164 m!1396081))

(declare-fun m!1396083 () Bool)

(assert (=> b!1513164 m!1396083))

(declare-fun m!1396085 () Bool)

(assert (=> b!1513164 m!1396085))

(declare-fun m!1396087 () Bool)

(assert (=> b!1513171 m!1396087))

(assert (=> b!1513172 m!1396061))

(assert (=> b!1513172 m!1396061))

(declare-fun m!1396089 () Bool)

(assert (=> b!1513172 m!1396089))

(assert (=> b!1513167 m!1396061))

(assert (=> b!1513167 m!1396061))

(declare-fun m!1396091 () Bool)

(assert (=> b!1513167 m!1396091))

(declare-fun m!1396093 () Bool)

(assert (=> b!1513165 m!1396093))

(assert (=> b!1513165 m!1396093))

(declare-fun m!1396095 () Bool)

(assert (=> b!1513165 m!1396095))

(declare-fun m!1396097 () Bool)

(assert (=> b!1513177 m!1396097))

(declare-fun m!1396099 () Bool)

(assert (=> b!1513177 m!1396099))

(assert (=> b!1513166 m!1396061))

(assert (=> b!1513166 m!1396061))

(declare-fun m!1396101 () Bool)

(assert (=> b!1513166 m!1396101))

(check-sat (not b!1513167) (not b!1513173) (not b!1513177) (not b!1513165) (not b!1513176) (not b!1513172) (not b!1513170) (not b!1513171) (not start!129072) (not b!1513175) (not b!1513164) (not b!1513166))
(check-sat)
