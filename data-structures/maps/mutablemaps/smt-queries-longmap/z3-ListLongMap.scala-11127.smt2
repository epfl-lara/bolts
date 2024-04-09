; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130092 () Bool)

(assert start!130092)

(declare-fun b!1526019 () Bool)

(declare-fun e!850640 () Bool)

(assert (=> b!1526019 (= e!850640 (not true))))

(declare-fun e!850637 () Bool)

(assert (=> b!1526019 e!850637))

(declare-fun res!1044202 () Bool)

(assert (=> b!1526019 (=> (not res!1044202) (not e!850637))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101432 0))(
  ( (array!101433 (arr!48938 (Array (_ BitVec 32) (_ BitVec 64))) (size!49489 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101432)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101432 (_ BitVec 32)) Bool)

(assert (=> b!1526019 (= res!1044202 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50988 0))(
  ( (Unit!50989) )
))
(declare-fun lt!660891 () Unit!50988)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101432 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50988)

(assert (=> b!1526019 (= lt!660891 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526020 () Bool)

(declare-fun e!850638 () Bool)

(declare-fun e!850642 () Bool)

(assert (=> b!1526020 (= e!850638 e!850642)))

(declare-fun res!1044201 () Bool)

(assert (=> b!1526020 (=> (not res!1044201) (not e!850642))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13124 0))(
  ( (MissingZero!13124 (index!54890 (_ BitVec 32))) (Found!13124 (index!54891 (_ BitVec 32))) (Intermediate!13124 (undefined!13936 Bool) (index!54892 (_ BitVec 32)) (x!136597 (_ BitVec 32))) (Undefined!13124) (MissingVacant!13124 (index!54893 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101432 (_ BitVec 32)) SeekEntryResult!13124)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101432 (_ BitVec 32)) SeekEntryResult!13124)

(assert (=> b!1526020 (= res!1044201 (= (seekEntryOrOpen!0 (select (arr!48938 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48938 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526021 () Bool)

(declare-fun e!850639 () Bool)

(declare-fun e!850641 () Bool)

(assert (=> b!1526021 (= e!850639 e!850641)))

(declare-fun res!1044192 () Bool)

(assert (=> b!1526021 (=> (not res!1044192) (not e!850641))))

(declare-fun lt!660892 () SeekEntryResult!13124)

(declare-fun lt!660894 () SeekEntryResult!13124)

(assert (=> b!1526021 (= res!1044192 (= lt!660892 lt!660894))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1526021 (= lt!660894 (Intermediate!13124 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101432 (_ BitVec 32)) SeekEntryResult!13124)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526021 (= lt!660892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48938 a!2804) j!70) mask!2512) (select (arr!48938 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526022 () Bool)

(declare-fun res!1044197 () Bool)

(assert (=> b!1526022 (=> (not res!1044197) (not e!850639))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526022 (= res!1044197 (validKeyInArray!0 (select (arr!48938 a!2804) j!70)))))

(declare-fun b!1526023 () Bool)

(declare-fun res!1044191 () Bool)

(assert (=> b!1526023 (=> (not res!1044191) (not e!850637))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101432 (_ BitVec 32)) SeekEntryResult!13124)

(assert (=> b!1526023 (= res!1044191 (= (seekEntry!0 (select (arr!48938 a!2804) j!70) a!2804 mask!2512) (Found!13124 j!70)))))

(declare-fun lt!660893 () (_ BitVec 64))

(declare-fun lt!660895 () array!101432)

(declare-fun b!1526024 () Bool)

(assert (=> b!1526024 (= e!850642 (= (seekEntryOrOpen!0 lt!660893 lt!660895 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660893 lt!660895 mask!2512)))))

(declare-fun b!1526025 () Bool)

(assert (=> b!1526025 (= e!850637 e!850638)))

(declare-fun res!1044199 () Bool)

(assert (=> b!1526025 (=> res!1044199 e!850638)))

(assert (=> b!1526025 (= res!1044199 (or (not (= (select (arr!48938 a!2804) j!70) lt!660893)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48938 a!2804) index!487) (select (arr!48938 a!2804) j!70)) (not (= (select (arr!48938 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526026 () Bool)

(declare-fun res!1044198 () Bool)

(assert (=> b!1526026 (=> (not res!1044198) (not e!850639))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1526026 (= res!1044198 (and (= (size!49489 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49489 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49489 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1044204 () Bool)

(assert (=> start!130092 (=> (not res!1044204) (not e!850639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130092 (= res!1044204 (validMask!0 mask!2512))))

(assert (=> start!130092 e!850639))

(assert (=> start!130092 true))

(declare-fun array_inv!37883 (array!101432) Bool)

(assert (=> start!130092 (array_inv!37883 a!2804)))

(declare-fun b!1526027 () Bool)

(declare-fun res!1044196 () Bool)

(assert (=> b!1526027 (=> (not res!1044196) (not e!850639))))

(assert (=> b!1526027 (= res!1044196 (validKeyInArray!0 (select (arr!48938 a!2804) i!961)))))

(declare-fun b!1526028 () Bool)

(assert (=> b!1526028 (= e!850641 e!850640)))

(declare-fun res!1044200 () Bool)

(assert (=> b!1526028 (=> (not res!1044200) (not e!850640))))

(assert (=> b!1526028 (= res!1044200 (= lt!660892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660893 mask!2512) lt!660893 lt!660895 mask!2512)))))

(assert (=> b!1526028 (= lt!660893 (select (store (arr!48938 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526028 (= lt!660895 (array!101433 (store (arr!48938 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49489 a!2804)))))

(declare-fun b!1526029 () Bool)

(declare-fun res!1044194 () Bool)

(assert (=> b!1526029 (=> (not res!1044194) (not e!850641))))

(assert (=> b!1526029 (= res!1044194 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48938 a!2804) j!70) a!2804 mask!2512) lt!660894))))

(declare-fun b!1526030 () Bool)

(declare-fun res!1044193 () Bool)

(assert (=> b!1526030 (=> (not res!1044193) (not e!850639))))

(assert (=> b!1526030 (= res!1044193 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49489 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49489 a!2804))))))

(declare-fun b!1526031 () Bool)

(declare-fun res!1044195 () Bool)

(assert (=> b!1526031 (=> (not res!1044195) (not e!850639))))

(assert (=> b!1526031 (= res!1044195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1526032 () Bool)

(declare-fun res!1044203 () Bool)

(assert (=> b!1526032 (=> (not res!1044203) (not e!850639))))

(declare-datatypes ((List!35601 0))(
  ( (Nil!35598) (Cons!35597 (h!37031 (_ BitVec 64)) (t!50302 List!35601)) )
))
(declare-fun arrayNoDuplicates!0 (array!101432 (_ BitVec 32) List!35601) Bool)

(assert (=> b!1526032 (= res!1044203 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35598))))

(assert (= (and start!130092 res!1044204) b!1526026))

(assert (= (and b!1526026 res!1044198) b!1526027))

(assert (= (and b!1526027 res!1044196) b!1526022))

(assert (= (and b!1526022 res!1044197) b!1526031))

(assert (= (and b!1526031 res!1044195) b!1526032))

(assert (= (and b!1526032 res!1044203) b!1526030))

(assert (= (and b!1526030 res!1044193) b!1526021))

(assert (= (and b!1526021 res!1044192) b!1526029))

(assert (= (and b!1526029 res!1044194) b!1526028))

(assert (= (and b!1526028 res!1044200) b!1526019))

(assert (= (and b!1526019 res!1044202) b!1526023))

(assert (= (and b!1526023 res!1044191) b!1526025))

(assert (= (and b!1526025 (not res!1044199)) b!1526020))

(assert (= (and b!1526020 res!1044201) b!1526024))

(declare-fun m!1408843 () Bool)

(assert (=> b!1526020 m!1408843))

(assert (=> b!1526020 m!1408843))

(declare-fun m!1408845 () Bool)

(assert (=> b!1526020 m!1408845))

(assert (=> b!1526020 m!1408843))

(declare-fun m!1408847 () Bool)

(assert (=> b!1526020 m!1408847))

(assert (=> b!1526023 m!1408843))

(assert (=> b!1526023 m!1408843))

(declare-fun m!1408849 () Bool)

(assert (=> b!1526023 m!1408849))

(declare-fun m!1408851 () Bool)

(assert (=> b!1526028 m!1408851))

(assert (=> b!1526028 m!1408851))

(declare-fun m!1408853 () Bool)

(assert (=> b!1526028 m!1408853))

(declare-fun m!1408855 () Bool)

(assert (=> b!1526028 m!1408855))

(declare-fun m!1408857 () Bool)

(assert (=> b!1526028 m!1408857))

(assert (=> b!1526022 m!1408843))

(assert (=> b!1526022 m!1408843))

(declare-fun m!1408859 () Bool)

(assert (=> b!1526022 m!1408859))

(declare-fun m!1408861 () Bool)

(assert (=> b!1526027 m!1408861))

(assert (=> b!1526027 m!1408861))

(declare-fun m!1408863 () Bool)

(assert (=> b!1526027 m!1408863))

(declare-fun m!1408865 () Bool)

(assert (=> start!130092 m!1408865))

(declare-fun m!1408867 () Bool)

(assert (=> start!130092 m!1408867))

(declare-fun m!1408869 () Bool)

(assert (=> b!1526032 m!1408869))

(declare-fun m!1408871 () Bool)

(assert (=> b!1526024 m!1408871))

(declare-fun m!1408873 () Bool)

(assert (=> b!1526024 m!1408873))

(assert (=> b!1526029 m!1408843))

(assert (=> b!1526029 m!1408843))

(declare-fun m!1408875 () Bool)

(assert (=> b!1526029 m!1408875))

(declare-fun m!1408877 () Bool)

(assert (=> b!1526019 m!1408877))

(declare-fun m!1408879 () Bool)

(assert (=> b!1526019 m!1408879))

(assert (=> b!1526021 m!1408843))

(assert (=> b!1526021 m!1408843))

(declare-fun m!1408881 () Bool)

(assert (=> b!1526021 m!1408881))

(assert (=> b!1526021 m!1408881))

(assert (=> b!1526021 m!1408843))

(declare-fun m!1408883 () Bool)

(assert (=> b!1526021 m!1408883))

(declare-fun m!1408885 () Bool)

(assert (=> b!1526031 m!1408885))

(assert (=> b!1526025 m!1408843))

(declare-fun m!1408887 () Bool)

(assert (=> b!1526025 m!1408887))

(check-sat (not b!1526027) (not b!1526024) (not b!1526023) (not b!1526031) (not start!130092) (not b!1526028) (not b!1526022) (not b!1526019) (not b!1526020) (not b!1526021) (not b!1526029) (not b!1526032))
(check-sat)
